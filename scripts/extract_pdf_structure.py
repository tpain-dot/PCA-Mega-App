#!/usr/bin/env python3
"""
Extract heading structure from all study PDFs for building TOC overrides.

For each PDF, this script:
1. Reports page count
2. Reports existing bookmarks/outline
3. Analyzes font sizes and styles to detect headings
4. Outputs candidate headings with page numbers

Output goes to stdout as a structured report.
"""

import fitz  # PyMuPDF
import os
import sys
import json

STUDIES_DIR = "/Users/tim/Dev/BCO Mega App/assets/studies"

# All filenames referenced in studies_structure.dart (excluding women_ministry_2017.pdf which is already done)
FILENAMES = [
    "abortion_1978.pdf",
    "agencies_relationship_1994.pdf",
    "aids_task_force.pdf",
    "alcohol_1980.pdf",
    "apostasy_separation.pdf",
    "baptism_combined.pdf",
    "biblical_fidelity_1993.pdf",
    "child_protection_2014.pdf",
    "church_state_combined.pdf",
    "church_union.pdf",
    "conflict_of_interest.pdf",
    "creation_report.pdf",
    "diaconal_ministries.pdf",
    "divorce_remarriage_complete.pdf",
    "ecumenical_principles.pdf",
    "evangelicals_catholics.pdf",
    "federal_vision_2007.pdf",
    "fencing_lords_table.pdf",
    "freemasonry.pdf",
    "fund_raising_1976.pdf",
    "heroic_measures.pdf",
    "higher_education_1978.pdf",
    "holy_spirit_pastoral_letter.pdf",
    "holy_spirit_pastoral_letter_korean.pdf",
    "homosexuality_actions_1996.pdf",
    "homosexuality_military.pdf",
    "homosexuality_overture_1977.pdf",
    "homosexuality_resolution_1999.pdf",
    "homosexuality_rpces_1980.pdf",
    "human_sexuality_2021.pdf",
    "humanism.pdf",
    "insider_movement_2012.pdf",
    "insider_movement_2014.pdf",
    "joining_receiving.pdf",
    "judicial_ot_principles.pdf",
    "judicial_procedural_checklist.pdf",
    "koop_address_1986.pdf",
    "mercy_ministry.pdf",
    "message_1973.pdf",
    "naparc_transfer.pdf",
    "nuclear_age.pdf",
    "paedo_communion.pdf",
    "pornography_resolution.pdf",
    "psalm_singing_1993.pdf",
    "racial_reconciliation_2002.pdf",
    "racial_reconciliation_2018.pdf",
    "racism_pastoral_letter_2004.pdf",
    "racism_pastoral_letter_2016.pdf",
    "religious_persecution.pdf",
    "tax_group_exemption.pdf",
    "taxation.pdf",
    "textbook_censorship_1987.pdf",
    "theological_education_guidelines_1979.pdf",
    "theonomy.pdf",
    "uniform_curriculum_1978.pdf",
    "women_in_church.pdf",
    "women_military_2001.pdf",
    "women_military_2002.pdf",
    "women_presbytery.pdf",
]


def analyze_pdf(filepath, filename):
    """Analyze a single PDF and return its structure."""
    doc = fitz.open(filepath)
    result = {
        "filename": filename,
        "pages": doc.page_count,
        "existing_toc": [],
        "headings": [],
    }

    # Get existing TOC/bookmarks
    toc = doc.get_toc()
    for item in toc:
        level, title, page = item
        result["existing_toc"].append({
            "level": level,
            "title": title.strip(),
            "page": page,
        })

    # Analyze fonts to find headings
    # First pass: collect all font size/style combos and their frequency
    font_stats = {}
    for page_num in range(doc.page_count):
        page = doc[page_num]
        blocks = page.get_text("dict", flags=fitz.TEXT_PRESERVE_WHITESPACE)["blocks"]
        for block in blocks:
            if "lines" not in block:
                continue
            for line in block["lines"]:
                for span in line["spans"]:
                    text = span["text"].strip()
                    if not text or len(text) < 2:
                        continue
                    size = round(span["size"], 1)
                    flags = span["flags"]
                    is_bold = bool(flags & 2**4)
                    is_italic = bool(flags & 2**1)
                    key = (size, is_bold, is_italic)
                    if key not in font_stats:
                        font_stats[key] = 0
                    font_stats[key] += len(text)

    # Find the most common font size (body text)
    if font_stats:
        body_key = max(font_stats, key=font_stats.get)
        body_size = body_key[0]
    else:
        body_size = 12.0

    # Second pass: extract lines that are likely headings
    # (larger than body, or bold at body size, or ALL CAPS)
    seen_headings = set()
    for page_num in range(doc.page_count):
        page = doc[page_num]
        blocks = page.get_text("dict", flags=fitz.TEXT_PRESERVE_WHITESPACE)["blocks"]
        for block in blocks:
            if "lines" not in block:
                continue
            for line in block["lines"]:
                # Combine spans in this line
                line_text = ""
                max_size = 0
                any_bold = False
                any_italic = False
                for span in line["spans"]:
                    text = span["text"].strip()
                    if text:
                        line_text += span["text"]
                        max_size = max(max_size, span["size"])
                        if span["flags"] & 2**4:
                            any_bold = True
                        if span["flags"] & 2**1:
                            any_italic = True

                line_text = line_text.strip()
                if not line_text or len(line_text) < 3 or len(line_text) > 200:
                    continue

                # Skip page numbers, headers/footers (very short, at top/bottom)
                if line_text.isdigit():
                    continue

                # Determine if this is a heading
                is_heading = False
                heading_level = 3  # default: sub-heading

                # Significantly larger than body = major heading
                if max_size > body_size + 1.5:
                    is_heading = True
                    heading_level = 1
                # Slightly larger than body and bold = section heading
                elif max_size > body_size + 0.3 and any_bold:
                    is_heading = True
                    heading_level = 1
                # Same size but bold = sub-heading
                elif abs(max_size - body_size) < 0.5 and any_bold:
                    # Only if it looks like a heading (not too long, not a random bold phrase)
                    if len(line_text) < 100:
                        is_heading = True
                        heading_level = 2
                # ALL CAPS at body size or larger
                elif line_text.isupper() and len(line_text) > 5 and len(line_text) < 100:
                    is_heading = True
                    heading_level = 2

                if is_heading:
                    # Deduplicate (same text on same page)
                    key = (page_num, line_text[:50])
                    if key not in seen_headings:
                        seen_headings.add(key)
                        result["headings"].append({
                            "page": page_num + 1,  # 1-indexed
                            "text": line_text,
                            "size": round(max_size, 1),
                            "bold": any_bold,
                            "italic": any_italic,
                            "all_caps": line_text.isupper(),
                            "level": heading_level,
                        })

    doc.close()
    return result


def main():
    results = []
    for filename in FILENAMES:
        filepath = os.path.join(STUDIES_DIR, filename)
        if not os.path.exists(filepath):
            print(f"WARNING: {filename} not found", file=sys.stderr)
            continue
        try:
            result = analyze_pdf(filepath, filename)
            results.append(result)
        except Exception as e:
            print(f"ERROR processing {filename}: {e}", file=sys.stderr)

    # Output as JSON for easy parsing
    print(json.dumps(results, indent=2))


if __name__ == "__main__":
    main()
