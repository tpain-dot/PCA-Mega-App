#!/usr/bin/env python3
"""Split the PDF structure analysis into per-PDF files for batch processing."""

import json
import os

with open("/tmp/pdf_structures.json") as f:
    data = json.load(f)

# Create output dir
os.makedirs("/tmp/pdf_analysis", exist_ok=True)

# Write per-PDF analysis files
for item in data:
    fn = item["filename"].replace(".pdf", "")
    with open(f"/tmp/pdf_analysis/{fn}.json", "w") as f:
        json.dump(item, f, indent=2)

# Also write batch files grouped by size
skip = []  # 1 page, no TOC needed
tiny = []  # 2-4 pages
small = []  # 5-15 pages
medium = []  # 16-30 pages
large = []  # 30+ pages

for item in data:
    pages = item["pages"]
    if pages <= 1:
        skip.append(item)
    elif pages <= 4:
        tiny.append(item)
    elif pages <= 15:
        small.append(item)
    elif pages <= 30:
        medium.append(item)
    else:
        large.append(item)

print(f"Skip (1 page): {len(skip)} files")
for s in skip:
    print(f"  {s['filename']}")

print(f"\nTiny (2-4 pages): {len(tiny)} files")
for s in tiny:
    print(f"  {s['filename']} ({s['pages']}pp)")

print(f"\nSmall (5-15 pages): {len(small)} files")
for s in small:
    print(f"  {s['filename']} ({s['pages']}pp)")

print(f"\nMedium (16-30 pages): {len(medium)} files")
for s in medium:
    print(f"  {s['filename']} ({s['pages']}pp)")

print(f"\nLarge (30+ pages): {len(large)} files")
for s in large:
    print(f"  {s['filename']} ({s['pages']}pp)")

# Write batch files
for name, items in [("skip", skip), ("tiny", tiny), ("small", small), ("medium", medium), ("large", large)]:
    with open(f"/tmp/pdf_analysis/batch_{name}.json", "w") as f:
        json.dump(items, f, indent=2)
