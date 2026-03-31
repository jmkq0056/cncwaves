#!/usr/bin/env python3
"""
Extract individual menu item images from Chicken N Chicken full-screen menu PNGs.

Usage:
    python3 extract/extract_items.py menu-originals/beef-burger-meals.png

This will crop out each food item, dip sauce, and reusable element,
make white backgrounds transparent, and save to assets/.
"""

import os
import sys
import json
from PIL import Image, ImageFilter
import numpy as np

# ---------------------------------------------------------------------------
# Crop region definitions (percentage-based for resolution independence)
# Each item defines: name, crop box as (x1%, y1%, x2%, y2%)
# ---------------------------------------------------------------------------

SCREEN_LAYOUTS = {
    "beef-burger-meals": {
        "category": "beef-burgers",
        "items": [
            # Full meal combos (fries + burger + drink)
            {"name": "double-cheese-meal",      "crop_pct": (0.00, 0.055, 0.62, 0.215)},
            {"name": "triple-cheese-meal",       "crop_pct": (0.00, 0.215, 0.62, 0.395)},
            {"name": "oring-cheese-burger-meal", "crop_pct": (0.00, 0.395, 0.62, 0.555)},
            {"name": "grand-beef-meal",          "crop_pct": (0.00, 0.555, 0.62, 0.720)},
            {"name": "mega-beef-parmesan-meal",  "crop_pct": (0.00, 0.720, 0.62, 0.885)},
            # Individual burgers only (center portion without fries/drink)
            {"name": "double-cheese",      "crop_pct": (0.18, 0.060, 0.50, 0.210)},
            {"name": "triple-cheese",       "crop_pct": (0.18, 0.220, 0.50, 0.390)},
            {"name": "oring-cheese-burger", "crop_pct": (0.18, 0.400, 0.50, 0.550)},
            {"name": "grand-beef",          "crop_pct": (0.18, 0.560, 0.50, 0.715)},
            {"name": "mega-beef-parmesan",  "crop_pct": (0.18, 0.725, 0.50, 0.880)},
        ],
        "brand_elements": [
            {"name": "triple-stripe",    "crop_pct": (0.00, 0.000, 0.08, 0.055), "dest": "menu-assets/brand"},
            {"name": "stor-menu-badge",  "crop_pct": (0.78, 0.000, 1.00, 0.060), "dest": "menu-assets/brand"},
            {"name": "husk-dip-banner",  "crop_pct": (0.00, 0.885, 1.00, 0.930), "dest": "menu-assets/brand"},
        ],
        "reusable": [
            {"name": "fries-small",    "crop_pct": (0.02, 0.065, 0.16, 0.205), "dest": "menu-assets/reusable"},
            {"name": "pepsi-cup-small","crop_pct": (0.42, 0.065, 0.58, 0.205), "dest": "menu-assets/reusable"},
        ],
        "dips": [
            # Bottom dip bar - 11 dip sauces across the bottom
            {"name": "mayonnaise",     "crop_pct": (0.00, 0.935, 0.10, 1.00)},
            {"name": "pomfrit-sauce",  "crop_pct": (0.09, 0.935, 0.18, 1.00)},
            {"name": "barbecue",       "crop_pct": (0.17, 0.935, 0.26, 1.00)},
            {"name": "garlic",         "crop_pct": (0.25, 0.935, 0.34, 1.00)},
            {"name": "curry-mango",    "crop_pct": (0.33, 0.935, 0.42, 1.00)},
            {"name": "peri-peri",      "crop_pct": (0.41, 0.935, 0.50, 1.00)},
            {"name": "honey-mustard",  "crop_pct": (0.49, 0.935, 0.58, 1.00)},
            {"name": "ketchup",        "crop_pct": (0.57, 0.935, 0.66, 1.00)},
            {"name": "sweet-and-sour", "crop_pct": (0.65, 0.935, 0.74, 1.00)},
            {"name": "chili-mayo",     "crop_pct": (0.73, 0.935, 0.82, 1.00)},
            {"name": "algerienne",     "crop_pct": (0.81, 0.935, 0.90, 1.00)},
            {"name": "biggy-burger",   "crop_pct": (0.82, 0.935, 0.91, 1.00)},
            {"name": "samourai",       "crop_pct": (0.90, 0.935, 1.00, 1.00)},
        ],
    }
}


def make_white_transparent(img, threshold=240, feather_radius=1):
    """
    Convert white/near-white pixels to transparent with feathered edges.

    Args:
        img: PIL Image in RGBA mode
        threshold: RGB values above this are considered white (0-255)
        feather_radius: Pixel radius for edge feathering

    Returns:
        PIL Image with transparent background
    """
    img = img.convert("RGBA")
    data = img.getdata()

    new_data = []
    for pixel in data:
        r, g, b, a = pixel
        if r > threshold and g > threshold and b > threshold:
            # Fully transparent for pure white
            new_data.append((255, 255, 255, 0))
        elif r > (threshold - 20) and g > (threshold - 20) and b > (threshold - 20):
            # Semi-transparent for near-white (feathered edge)
            whiteness = min(r, g, b)
            alpha = max(0, int(255 * (1.0 - (whiteness - (threshold - 20)) / 20.0)))
            new_data.append((r, g, b, alpha))
        else:
            new_data.append(pixel)

    img.putdata(new_data)

    # Optional: apply slight gaussian blur to alpha channel for smoother edges
    if feather_radius > 0:
        # Split into channels
        r, g, b, a = img.split()
        # Slight blur on alpha for feathering
        a = a.filter(ImageFilter.GaussianBlur(radius=feather_radius))
        img = Image.merge("RGBA", (r, g, b, a))

    return img


def crop_and_save(source_img, crop_pct, output_path, transparent=True):
    """
    Crop a region from source image and save.

    Args:
        source_img: PIL Image (full screen)
        crop_pct: Tuple of (x1%, y1%, x2%, y2%) as floats 0.0-1.0
        output_path: Where to save the cropped image
        transparent: Whether to make white pixels transparent
    """
    w, h = source_img.size
    x1 = int(w * crop_pct[0])
    y1 = int(h * crop_pct[1])
    x2 = int(w * crop_pct[2])
    y2 = int(h * crop_pct[3])

    cropped = source_img.crop((x1, y1, x2, y2))

    if transparent:
        cropped = make_white_transparent(cropped)

    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    cropped.save(output_path, "PNG")
    print(f"  Saved: {output_path} ({cropped.size[0]}x{cropped.size[1]})")


def extract_screen(image_path, screen_key=None):
    """
    Extract all items from a menu screen PNG.

    Args:
        image_path: Path to the full-screen PNG
        screen_key: Key in SCREEN_LAYOUTS (auto-detected from filename if None)
    """
    if screen_key is None:
        basename = os.path.splitext(os.path.basename(image_path))[0]
        screen_key = basename

    if screen_key not in SCREEN_LAYOUTS:
        print(f"Error: No layout defined for '{screen_key}'")
        print(f"Available layouts: {list(SCREEN_LAYOUTS.keys())}")
        sys.exit(1)

    layout = SCREEN_LAYOUTS[screen_key]
    category = layout["category"]

    print(f"Opening: {image_path}")
    img = Image.open(image_path)
    print(f"Image size: {img.size[0]}x{img.size[1]}")
    print()

    # Extract menu item images
    print(f"Extracting {len(layout['items'])} menu items...")
    for item in layout["items"]:
        name = item["name"]
        output_path = f"menu-assets/items/{category}/{name}.png"
        crop_and_save(img, item["crop_pct"], output_path)

    # Extract brand elements
    if "brand_elements" in layout:
        print(f"\nExtracting {len(layout['brand_elements'])} brand elements...")
        for elem in layout["brand_elements"]:
            dest = elem.get("dest", "menu-assets/brand")
            output_path = f"{dest}/{elem['name']}.png"
            crop_and_save(img, elem["crop_pct"], output_path, transparent=False)

    # Extract reusable elements
    if "reusable" in layout:
        print(f"\nExtracting {len(layout['reusable'])} reusable elements...")
        for elem in layout["reusable"]:
            dest = elem.get("dest", "menu-assets/reusable")
            output_path = f"{dest}/{elem['name']}.png"
            crop_and_save(img, elem["crop_pct"], output_path)

    # Extract dip sauces
    if "dips" in layout:
        print(f"\nExtracting {len(layout['dips'])} dip sauce images...")
        for dip in layout["dips"]:
            output_path = f"menu-assets/items/dips/{dip['name']}.png"
            crop_and_save(img, dip["crop_pct"], output_path)

    print(f"\nDone! All assets extracted from {screen_key}.")


def interactive_crop_finder(image_path):
    """
    Helper to visually identify crop regions. Opens image and prints grid info.
    """
    img = Image.open(image_path)
    w, h = img.size
    print(f"Image: {w}x{h}")
    print(f"\nGrid reference (10% increments):")
    for pct in range(0, 101, 10):
        px_x = int(w * pct / 100)
        px_y = int(h * pct / 100)
        print(f"  {pct}% -> x={px_x}, y={px_y}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 extract/extract_items.py <image_path> [screen_key]")
        print()
        print("Examples:")
        print("  python3 extract/extract_items.py menu-originals/beef-burger-meals.png")
        print("  python3 extract/extract_items.py menu-originals/beef-burger-meals.png beef-burger-meals")
        print()
        print("  # Interactive mode - show grid reference for an image:")
        print("  python3 extract/extract_items.py --grid menu-originals/beef-burger-meals.png")
        sys.exit(1)

    if sys.argv[1] == "--grid":
        interactive_crop_finder(sys.argv[2])
    else:
        image_path = sys.argv[1]
        screen_key = sys.argv[2] if len(sys.argv) > 2 else None
        extract_screen(image_path, screen_key)
