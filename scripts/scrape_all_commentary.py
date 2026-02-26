#!/usr/bin/env python3
"""
Scrape ALL commentary from pcahistory.org for every BCO section.

Iterates through every section URL, extracts commentary entries
(source, year, page reference, text), and writes the results to JSON.

Output: /tmp/bco_commentary_all.json

Requires: requests, beautifulsoup4, lxml
"""

import json
import os
import re
import sys
import time

import requests
from bs4 import BeautifulSoup, NavigableString, Tag

# ---------------------------------------------------------------------------
# Section counts per chapter
# ---------------------------------------------------------------------------
SECTION_COUNTS = {
    "fog": {
        1: 7, 2: 3, 3: 6, 4: 5, 5: 11, 6: 4, 7: 3, 8: 9, 9: 7, 10: 6,
        11: 4, 12: 10, 13: 13, 14: 8, 15: 6, 16: 3, 17: 3, 18: 8, 19: 16,
        20: 13, 21: 11, 22: 6, 23: 3, 24: 10, 25: 12, 26: 6,
    },
    "rod": {
        27: 5, 28: 5, 29: 4, 30: 5, 31: 11, 32: 20, 33: 4, 34: 10, 35: 14,
        36: 7, 37: 9, 38: 4, 39: 3, 40: 6, 41: 6, 42: 12, 43: 10, 44: 1,
        45: 5, 46: 8,
    },
    "dfw": {
        47: 9, 48: 7, 49: 4, 50: 4, 51: 5, 52: 5, 53: 6, 54: 3, 55: 1,
        56: 6, 57: 6, 58: 8, 59: 7, 60: 1, 61: 2, 62: 7, 63: 6,
    },
}

BASE_URL = "https://pcahistory.org/bco"
REQUEST_DELAY = 0.5
OUTPUT_PATH = "/tmp/bco_commentary_all.json"


def build_url(division: str, chapter: int, section: int) -> str:
    return f"{BASE_URL}/{division}/{chapter:02d}/{section:02d}.html"


def parse_source_line(text: str) -> dict:
    """Parse an attribution line into source, year, pageRef."""
    text = text.strip().rstrip(":").strip()
    # Remove trailing "on X-Y-Z :" or "on Chapter..." references
    text = re.sub(r',?\s*on\s+[IVXLC]+[\-\d]+[\-\d]*\s*:?\s*$', '', text).strip()
    text = re.sub(r',?\s*on\s+Chapter\s+\d+.*$', '', text, flags=re.IGNORECASE).strip()
    text = text.rstrip(":").strip()

    result = {"source": text, "year": "", "pageRef": ""}

    # Pattern: (YEAR, pp. NNN-NNN) with page ref inside parens
    paren_with_page = re.search(r'\((\d{4}),\s*(pp?\.\s*\d[\d\-\u2013,\s]*)\)\s*$', text)
    if paren_with_page:
        result["year"] = paren_with_page.group(1)
        result["pageRef"] = paren_with_page.group(2).strip().rstrip(".")
        result["source"] = text[:paren_with_page.start()].strip().rstrip(",").strip()
        return result

    # Pattern: (YEAR, ...) with empty or non-page-ref content in parens
    paren_year = re.search(r'\((\d{4}),?\s*(.*?)\)\s*$', text)
    if paren_year:
        result["year"] = paren_year.group(1)
        page_ref = paren_year.group(2).strip().rstrip(".")
        # Only keep pageRef if it looks like an actual page reference
        if page_ref and re.match(r'pp?\.\s*\d', page_ref):
            result["pageRef"] = page_ref
        result["source"] = text[:paren_year.start()].strip().rstrip(",").strip()
        return result

    # Pattern: (YEAR), p. NNN  (year in parens, page ref after)
    paren_then_page = re.search(r'\((\d{4})\),?\s*(pp?\.\s*[\d\-\u2013,.\s]+)\s*\.?\s*$', text)
    if paren_then_page:
        result["year"] = paren_then_page.group(1)
        result["pageRef"] = paren_then_page.group(2).strip().rstrip(".")
        result["source"] = text[:paren_then_page.start()].strip().rstrip(",").strip()
        return result

    # Pattern: (YEAR) at end (no page ref)
    paren_year_only = re.search(r'\((\d{4})\)\s*$', text)
    if paren_year_only:
        result["year"] = paren_year_only.group(1)
        result["source"] = text[:paren_year_only.start()].strip().rstrip(",").strip()
        return result

    # Pattern: ..., YEAR, p./pp. NNN (no parens)
    page_match = re.search(r',\s*(\d{4}),\s*(pp?\.\s*[\d\-\u2013,.\s]+)\s*\.?\s*$', text)
    if page_match:
        result["year"] = page_match.group(1)
        result["pageRef"] = page_match.group(2).strip().rstrip(".")
        result["source"] = text[:page_match.start()].strip()
        return result

    # Pattern: ..., p. NNN at end (no year nearby)
    page_only = re.search(r',\s*(pp?\.\s*[\d\-\u2013,.\s]+)\s*\.?\s*$', text)
    if page_only:
        result["pageRef"] = page_only.group(1).strip().rstrip(".")
        before = text[:page_only.start()].strip()
        year_in_before = re.search(r',\s*(\d{4})', before)
        if year_in_before:
            result["year"] = year_in_before.group(1)
        result["source"] = before
        return result

    # Pattern: ..., YEAR at end
    year_match = re.search(r',\s*(\d{4})\s*$', text)
    if year_match:
        result["year"] = year_match.group(1)
        result["source"] = text[:year_match.start()].strip()
        return result

    # Pattern: (YEAR) anywhere in text
    simple_year = re.search(r'\((\d{4})\)', text)
    if simple_year:
        result["year"] = simple_year.group(1)

    return result


# Known author signatures for detecting attribution lines
AUTHOR_PATTERNS = [
    r"F\.?\s*P\.?\s*Ramsay",
    r"Morton\s+H\.?\s*Smith",
    r"J\.?\s*Aspinwall\s+Hodge",
    r"Thomas\s+E\.?\s*Peck",
    r"Witherow",
    r"Thornwell",
    r"Dabney",
    r"Stuart\s+Robinson",
]
AUTHOR_RE = re.compile("|".join(AUTHOR_PATTERNS), re.IGNORECASE)


def is_attribution_line(text: str) -> bool:
    """Check if text looks like a commentary attribution line."""
    text = text.strip()
    if not text:
        return False
    has_author = bool(AUTHOR_RE.search(text))
    has_year = bool(re.search(r'\d{4}', text))
    has_title = bool(re.search(
        r'(Exposition|Commentary|Presbyterian|Church Order|What Is|Book of)',
        text, re.IGNORECASE))
    return has_author and (has_year or has_title)


def is_commentary_header_span(node):
    """Check if a Tag is specifically the COMMENTARY header span."""
    if not isinstance(node, Tag) or node.name != "span":
        return False
    direct_text = "".join(
        str(c).strip() for c in node.children if isinstance(c, NavigableString)
    ).strip()
    return bool(re.match(r'^COMMENTARY\s*:?\s*$', direct_text, re.IGNORECASE))


def walk_elements(node, in_strong=False):
    """Yield (is_bold, is_br, is_commentary_header, text) tuples."""
    if isinstance(node, NavigableString):
        text = str(node)
        if text.strip():
            yield (in_strong, False, False, text)
        return

    if not isinstance(node, Tag):
        return

    if node.name == "br":
        yield (False, True, False, "")
        return

    if node.name == "a" and node.get("href", "").endswith("index.html"):
        return

    if is_commentary_header_span(node):
        yield (False, False, True, "")
        return

    this_is_strong = node.name in ("strong", "b")
    child_bold = in_strong or this_is_strong

    for child in node.children:
        yield from walk_elements(child, in_strong=child_bold)


def extract_commentary(soup: BeautifulSoup, url: str) -> list:
    """Extract all commentary entries from a BCO section page."""
    entries = []

    # Find the COMMENTARY marker
    commentary_marker = None
    for elem in soup.find_all(string=re.compile(r'COMMENTARY', re.IGNORECASE)):
        text = str(elem).strip()
        if re.match(r'COMMENTARY\s*:', text, re.IGNORECASE):
            commentary_marker = elem
            break

    if commentary_marker is None:
        return entries

    # Walk up to the containing <td>
    container = commentary_marker.parent
    while container:
        if isinstance(container, Tag) and container.name == "td":
            break
        container = container.parent

    if container is None or not isinstance(container, Tag):
        container = commentary_marker.parent
        while container:
            if isinstance(container, Tag) and container.name in ("div", "body"):
                break
            container = container.parent

    if container is None:
        return entries

    raw_events = list(walk_elements(container))

    # Build lines split on <br>
    lines = []
    current_parts = []
    current_has_bold = False

    for is_bold, is_br, is_header, text in raw_events:
        if is_header:
            if current_parts:
                line_text = "".join(current_parts).strip()
                if line_text:
                    lines.append({"text": line_text, "bold": current_has_bold})
                current_parts = []
                current_has_bold = False
            lines.append({"text": "COMMENTARY_HEADER", "is_header": True, "bold": False})
            continue

        if is_br:
            if current_parts:
                line_text = "".join(current_parts).strip()
                if line_text:
                    lines.append({"text": line_text, "bold": current_has_bold})
            current_parts = []
            current_has_bold = False
            continue

        current_parts.append(text)
        if is_bold:
            current_has_bold = True

    if current_parts:
        line_text = "".join(current_parts).strip()
        if line_text:
            lines.append({"text": line_text, "bold": current_has_bold})

    # Find first COMMENTARY_HEADER
    start_idx = None
    for i, line in enumerate(lines):
        if line.get("is_header"):
            start_idx = i
            break

    if start_idx is None:
        return entries

    current_source = None
    current_paragraphs = []

    def flush():
        nonlocal current_source, current_paragraphs
        if current_source is not None:
            text = "\n\n".join(p for p in current_paragraphs if p)
            if text.strip():
                entries.append({
                    "source": current_source["source"],
                    "year": current_source["year"],
                    "pageRef": current_source["pageRef"],
                    "text": text,
                    "webUrl": url,
                })
        current_source = None
        current_paragraphs = []

    for line in lines[start_idx:]:
        if line.get("is_header"):
            continue

        text = line["text"]

        if "Return to Index" in text:
            break

        if is_attribution_line(text):
            flush()
            current_source = parse_source_line(text)
            continue

        if current_source is not None:
            clean = re.sub(r'[ \t]+', ' ', text).strip()
            if clean and clean != "[no comparable text for discussion]":
                current_paragraphs.append(clean)

    flush()
    return entries


def main():
    all_commentary = {}
    total_sections = 0
    sections_with_commentary = 0
    total_entries = 0
    errors = []

    session = requests.Session()
    session.headers.update({
        "User-Agent": "BCO-Commentary-Scraper/1.0 (research; polite 0.5s delay)"
    })

    for division, chapters in SECTION_COUNTS.items():
        for chapter, num_sections in sorted(chapters.items()):
            print(f"Scraping {division.upper()} Chapter {chapter} ({num_sections} sections)...",
                  flush=True)
            for section in range(1, num_sections + 1):
                key = f"bco_{chapter}-{section}"
                url = build_url(division, chapter, section)
                total_sections += 1

                try:
                    resp = session.get(url, timeout=30)
                    if resp.status_code == 404:
                        all_commentary[key] = []
                        continue
                    resp.raise_for_status()
                except requests.RequestException as e:
                    print(f"  ERROR fetching {url}: {e}", flush=True)
                    errors.append({"key": key, "url": url, "error": str(e)})
                    all_commentary[key] = []
                    time.sleep(REQUEST_DELAY)
                    continue

                soup = BeautifulSoup(resp.text, "lxml")
                entries = extract_commentary(soup, url)
                all_commentary[key] = entries

                if entries:
                    sections_with_commentary += 1
                    total_entries += len(entries)

                time.sleep(REQUEST_DELAY)

    with open(OUTPUT_PATH, "w", encoding="utf-8") as f:
        json.dump(all_commentary, f, indent=2, ensure_ascii=False)

    print("\n" + "=" * 60)
    print("SCRAPING COMPLETE")
    print("=" * 60)
    print(f"Total sections scraped:      {total_sections}")
    print(f"Sections with commentary:    {sections_with_commentary}")
    print(f"Total commentary entries:    {total_entries}")
    print(f"Errors:                      {len(errors)}")
    if errors:
        for err in errors:
            print(f"  - {err['key']}: {err['error']}")
    print(f"\nOutput written to: {OUTPUT_PATH}")
    print(f"File size: {round(os.path.getsize(OUTPUT_PATH) / 1024, 1)} KB")


if __name__ == "__main__":
    main()
