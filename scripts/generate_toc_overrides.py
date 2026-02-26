#!/usr/bin/env python3
"""
Generate Dart TOC override code from PDF structure analysis.

Reads the extracted heading data and builds nested TOC trees,
outputting Dart _node() calls ready to paste into study_toc_overrides.dart.
"""

import fitz
import json
import os
import re
import sys
from collections import Counter

STUDIES_DIR = "/Users/tim/Dev/BCO Mega App/assets/studies"

# Skip 1-page PDFs (no TOC needed)
SKIP_FILES = {
    "alcohol_1980.pdf",
    "fund_raising_1976.pdf",
    "homosexuality_overture_1977.pdf",
    "homosexuality_resolution_1999.pdf",
    "pornography_resolution.pdf",
    "taxation.pdf",
    "textbook_censorship_1987.pdf",
    "women_in_church.pdf",
    "women_presbytery.pdf",
}

# Already done
DONE_FILES = {"women_ministry_2017.pdf"}


def extract_headings_with_context(filepath):
    """Extract headings with full font analysis from a PDF."""
    doc = fitz.open(filepath)
    page_count = doc.page_count

    # First pass: find body text style (most common)
    style_lengths = Counter()
    all_spans = []

    for page_num in range(page_count):
        page = doc[page_num]
        blocks = page.get_text("dict", flags=fitz.TEXT_PRESERVE_WHITESPACE)["blocks"]
        for block in blocks:
            if "lines" not in block:
                continue
            for line in block["lines"]:
                line_text = ""
                line_spans = []
                for span in line["spans"]:
                    text = span["text"].strip()
                    if text:
                        line_text += span["text"]
                        line_spans.append(span)

                line_text = line_text.strip()
                if not line_text or len(line_text) < 2:
                    continue

                for span in line_spans:
                    text = span["text"].strip()
                    if len(text) < 2:
                        continue
                    size = round(span["size"], 1)
                    is_bold = bool(span["flags"] & (1 << 4))
                    key = (size, is_bold)
                    style_lengths[key] += len(text)

                all_spans.append({
                    "page": page_num + 1,
                    "text": line_text,
                    "spans": line_spans,
                })

    # Find body style
    if not style_lengths:
        doc.close()
        return page_count, []

    body_style = style_lengths.most_common(1)[0][0]
    body_size, body_bold = body_style

    # Identify running headers/footers (text appearing on >50% of pages)
    if page_count > 2:
        text_page_count = Counter()
        for info in all_spans:
            text_page_count[(info["text"][:80], info["page"])] = 1

        text_freq = Counter()
        for (text, _page), _ in text_page_count.items():
            text_freq[text] += 1

        running_texts = {
            text for text, count in text_freq.items()
            if count > page_count * 0.4 and len(text) < 100
        }
    else:
        running_texts = set()

    # Second pass: extract headings
    headings = []
    seen = set()

    for info in all_spans:
        text = info["text"]
        page = info["page"]
        spans = info["spans"]

        # Skip running headers/footers
        if text[:80] in running_texts:
            continue

        # Skip page numbers
        if text.strip().isdigit():
            continue

        # Skip very long lines (not headings)
        if len(text) > 150:
            continue

        # Analyze line style
        max_size = 0
        any_bold = False
        any_italic = False
        for span in spans:
            size = round(span["size"], 1)
            max_size = max(max_size, size)
            if span["flags"] & (1 << 4):
                any_bold = True
            if span["flags"] & (1 << 1):
                any_italic = True

        is_upper = text.isupper() and len(text) > 4
        text_clean = text.strip()

        # Determine if heading and assign level
        # Level 1: significantly larger, or larger+bold
        # Level 2: bold at body size, or ALL CAPS at body size
        # Level 3: italic or smaller bold
        heading_level = None

        size_diff = max_size - body_size

        if size_diff > 2.0:
            heading_level = 1
        elif size_diff > 0.5 and any_bold:
            heading_level = 1
        elif size_diff > 0.5:
            heading_level = 2
        elif any_bold and is_upper and abs(size_diff) < 0.5:
            heading_level = 1
        elif any_bold and abs(size_diff) < 0.5 and len(text_clean) < 80:
            heading_level = 2
        elif is_upper and abs(size_diff) < 0.5 and len(text_clean) > 5 and len(text_clean) < 80:
            heading_level = 2

        if heading_level:
            dedup_key = (page, text_clean[:60])
            if dedup_key not in seen:
                seen.add(dedup_key)
                headings.append({
                    "page": page,
                    "text": text_clean,
                    "level": heading_level,
                    "size": max_size,
                    "bold": any_bold,
                    "upper": is_upper,
                    "italic": any_italic,
                })

    doc.close()
    return page_count, headings


def filter_headings(headings, page_count):
    """Apply heuristics to filter out false-positive headings."""
    if not headings:
        return headings

    filtered = []
    for h in headings:
        text = h["text"]

        # Skip common false positives
        if text.lower() in ("the", "and", "or", "but", "for", "not"):
            continue
        if len(text) < 3:
            continue
        # Skip lines that look like footnotes or references
        if re.match(r'^\d+\s', text) and not re.match(r'^\d+\.', text):
            continue

        filtered.append(h)

    return filtered


def build_tree(headings):
    """Build a nested tree from a flat list of headings with levels."""
    if not headings:
        return []

    # Normalize levels: find distinct levels and map to 1, 2, 3
    distinct_levels = sorted(set(h["level"] for h in headings))
    level_map = {l: i + 1 for i, l in enumerate(distinct_levels)}

    for h in headings:
        h["norm_level"] = level_map[h["level"]]

    # Build tree using a stack-based approach
    root = []
    stack = [(0, root)]  # (level, children_list)

    for h in headings:
        level = h["norm_level"]
        node = {
            "text": h["text"],
            "page": h["page"],
            "children": [],
        }

        # Pop stack until we find the right parent level
        while stack and stack[-1][0] >= level:
            stack.pop()

        if stack:
            stack[-1][1].append(node)
        else:
            root.append(node)
            stack = [(0, root)]

        stack.append((level, node["children"]))

    return root


def escape_dart_string(s):
    """Escape a string for use in Dart single-quoted strings."""
    s = s.replace("\\", "\\\\")
    s = s.replace("'", "\\'")
    # Replace Unicode characters
    s = s.replace("\u2014", "\\u2014")  # em dash
    s = s.replace("\u2013", "\\u2013")  # en dash
    s = s.replace("\u2019", "\\u2019")  # right single quote
    s = s.replace("\u201c", "\\u201c")  # left double quote
    s = s.replace("\u201d", "\\u201d")  # right double quote
    s = s.replace("\u2018", "\\u2018")  # left single quote
    return s


def title_case_if_upper(text):
    """Convert ALL CAPS text to Title Case for readability."""
    if text.isupper() and len(text) > 5:
        # Smart title case: preserve common acronyms
        words = text.split()
        result = []
        small_words = {"a", "an", "the", "and", "but", "or", "for", "nor",
                       "at", "by", "in", "of", "on", "to", "up", "is", "it"}
        for i, word in enumerate(words):
            # Keep Roman numerals uppercase
            if re.match(r'^[IVXLCDM]+\.?$', word):
                result.append(word)
            # Keep acronyms (2-3 letter uppercase words that aren't small words)
            elif len(word) <= 3 and word.lower() not in small_words:
                result.append(word)
            elif i == 0 or word.lower() not in small_words:
                result.append(word.capitalize())
            else:
                result.append(word.lower())
        return " ".join(result)
    return text


def node_to_dart(node, indent=4):
    """Convert a tree node to Dart _node() code."""
    prefix = " " * indent
    text = escape_dart_string(title_case_if_upper(node["text"]))
    page = node["page"]

    if not node["children"]:
        return f"{prefix}_node('{text}', {page}),"
    else:
        lines = [f"{prefix}_node('{text}', {page}, ["]
        for child in node["children"]:
            lines.append(node_to_dart(child, indent + 2))
        lines.append(f"{prefix}]),")
        return "\n".join(lines)


def process_pdf(filename):
    """Process a single PDF and return its Dart TOC code."""
    filepath = os.path.join(STUDIES_DIR, filename)
    if not os.path.exists(filepath):
        return None, f"File not found: {filepath}"

    page_count, headings = extract_headings_with_context(filepath)

    if page_count <= 1:
        return None, f"Skipping {filename} ({page_count} page)"

    headings = filter_headings(headings, page_count)

    if not headings:
        return None, f"No headings found in {filename} ({page_count} pages)"

    tree = build_tree(headings)

    if not tree:
        return None, f"No tree built for {filename}"

    # Generate Dart code
    lines = [f"  // {'─' * 60}"]
    lines.append(f"  // {filename} — {page_count} pages")
    lines.append(f"  // {'─' * 60}")
    lines.append(f"  '{filename}': [")
    for node in tree:
        lines.append(node_to_dart(node, 4))
    lines.append("  ],")

    return "\n".join(lines), None


def main():
    # Get all filenames from studies_structure.dart
    all_filenames = []
    with open("/tmp/pdf_structures.json") as f:
        data = json.load(f)
        for item in data:
            all_filenames.append(item["filename"])

    results = []
    errors = []

    for filename in sorted(all_filenames):
        if filename in SKIP_FILES or filename in DONE_FILES:
            continue

        code, err = process_pdf(filename)
        if err:
            errors.append(err)
        if code:
            results.append(code)

    # Output
    print("// AUTO-GENERATED TOC OVERRIDES")
    print("// Review and adjust these before using!")
    print()
    for r in results:
        print(r)
        print()

    if errors:
        print("\n// NOTES:", file=sys.stderr)
        for e in errors:
            print(f"//   {e}", file=sys.stderr)


if __name__ == "__main__":
    main()
