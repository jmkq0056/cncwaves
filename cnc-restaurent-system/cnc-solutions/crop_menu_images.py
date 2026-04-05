#!/usr/bin/env python3
"""Crop/pad all menu item images to 1:1 — smart content-aware."""

from PIL import Image
import os
import numpy as np

BASE = os.path.join(
    os.path.dirname(__file__), "..",
    "codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system",
    "install", "upload", "item"
)

TARGET = 500


def get_content_bbox(img):
    """Get bounding box of non-white, non-transparent content."""
    arr = np.array(img.convert("RGBA"))
    r, g, b, a = arr[:, :, 0], arr[:, :, 1], arr[:, :, 2], arr[:, :, 3]
    brightness = (r.astype(int) + g.astype(int) + b.astype(int)) / 3
    content = (brightness < 240) & (a > 128)

    if not content.any():
        return 0, 0, img.width, img.height

    rows = np.any(content, axis=1)
    cols = np.any(content, axis=0)
    rmin, rmax = np.where(rows)[0][[0, -1]]
    cmin, cmax = np.where(cols)[0][[0, -1]]
    return int(cmin), int(rmin), int(cmax), int(rmax)


def make_square(img):
    """Make image 1:1. Wide images get smart-cropped. Tall/narrow get padded on white."""
    w, h = img.size
    if w == h:
        return img

    x1, y1, x2, y2 = get_content_bbox(img)
    cw = x2 - x1  # content width
    ch = y2 - y1  # content height

    if w > h:
        # LANDSCAPE (e.g. 750x400 burger photos) — crop to square around content
        side = h
        cx = (x1 + x2) // 2
        left = max(0, min(cx - side // 2, w - side))
        cropped = img.crop((left, 0, left + side, side))
        return cropped.resize((TARGET, TARGET), Image.LANCZOS)
    else:
        # PORTRAIT or near-square — pad with white to make square
        side = max(w, h)
        padded = Image.new("RGBA", (side, side), (255, 255, 255, 255))
        paste_x = (side - w) // 2
        paste_y = (side - h) // 2
        padded.paste(img, (paste_x, paste_y))
        return padded.resize((TARGET, TARGET), Image.LANCZOS)


count = 0
skipped = 0

for item_dir in sorted(os.listdir(BASE)):
    item_path = os.path.join(BASE, item_dir)
    if not os.path.isdir(item_path):
        continue
    for filename in os.listdir(item_path):
        filepath = os.path.join(item_path, filename)
        try:
            img = Image.open(filepath)
        except Exception:
            continue

        w, h = img.size
        if w == h and w == TARGET:
            skipped += 1
            continue

        result = make_square(img)
        # Save as PNG with white background
        if result.mode == "RGBA":
            bg = Image.new("RGB", result.size, (255, 255, 255))
            bg.paste(result, mask=result.split()[3])
            result = bg
        result.save(filepath, optimize=True)
        count += 1
        mode = "cropped" if w > h else "padded" if w < h else "resized"
        print(f"  {mode}: {os.path.basename(filepath)} ({w}x{h} -> {TARGET}x{TARGET})")

print(f"\nDone: {count} processed, {skipped} already {TARGET}x{TARGET}")
