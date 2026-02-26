#!/usr/bin/env python3
"""
Generate a per-page text summary for a set of PDFs.
Shows the first N lines of each page with font size/bold indicators.
Usage: python3 pdf_page_summary.py file1.pdf file2.pdf ...
"""

import fitz
import sys
import os

STUDIES_DIR = "/Users/tim/Dev/BCO Mega App/assets/studies"


def summarize_pdf(filepath, filename):
    doc = fitz.open(filepath)
    print(f"\n{'='*70}")
    print(f"FILE: {filename} ({doc.page_count} pages)")
    print(f"{'='*70}")

    # Find body text size
    from collections import Counter
    style_lengths = Counter()
    for page_num in range(doc.page_count):
        page = doc[page_num]
        blocks = page.get_text("dict", flags=fitz.TEXT_PRESERVE_WHITESPACE)["blocks"]
        for block in blocks:
            if "lines" not in block:
                continue
            for line in block["lines"]:
                for span in line["spans"]:
                    text = span["text"].strip()
                    if len(text) > 2:
                        size = round(span["size"], 1)
                        is_bold = bool(span["flags"] & (1 << 4))
                        style_lengths[(size, is_bold)] += len(text)

    if style_lengths:
        body_style = style_lengths.most_common(1)[0][0]
        body_size = body_style[0]
        print(f"Body text: {body_size}pt (bold={body_style[1]})")
        print(f"All styles by frequency:")
        for (sz, bold), length in style_lengths.most_common(20):
            marker = " BOLD" if bold else ""
            print(f"  {sz}pt{marker}: {length} chars")
    else:
        body_size = 12.0

    # Per-page extraction
    for page_num in range(doc.page_count):
        page = doc[page_num]
        print(f"\n--- Page {page_num + 1} ---")
        blocks = page.get_text("dict", flags=fitz.TEXT_PRESERVE_WHITESPACE)["blocks"]

        for block in blocks:
            if "lines" not in block:
                continue
            for line in block["lines"]:
                line_text = ""
                max_size = 0
                any_bold = False
                for span in line["spans"]:
                    text = span["text"]
                    if text.strip():
                        line_text += text
                        max_size = max(max_size, span["size"])
                        if span["flags"] & (1 << 4):
                            any_bold = True

                line_text = line_text.strip()
                if not line_text:
                    continue

                # Format markers
                markers = []
                size = round(max_size, 1)
                if size > body_size + 0.3:
                    markers.append(f"{size}pt")
                if any_bold:
                    markers.append("BOLD")
                if line_text.isupper() and len(line_text) > 4:
                    markers.append("CAPS")

                if markers:
                    tag = f" [{', '.join(markers)}]"
                else:
                    tag = ""

                # Truncate long lines
                display = line_text[:120]
                if len(line_text) > 120:
                    display += "..."
                print(f"  {display}{tag}")

    doc.close()


def main():
    filenames = sys.argv[1:]
    if not filenames:
        print("Usage: python3 pdf_page_summary.py file1.pdf file2.pdf ...")
        sys.exit(1)

    for filename in filenames:
        filepath = os.path.join(STUDIES_DIR, filename)
        if not os.path.exists(filepath):
            print(f"WARNING: {filename} not found", file=sys.stderr)
            continue
        summarize_pdf(filepath, filename)


if __name__ == "__main__":
    main()
