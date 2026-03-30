#!/usr/bin/env python3
"""
Full signage seed:
1. Generate 9 burst GIF slices (2160x3840) matching the prototype design
2. Upload burst GIFs + inspiration images to Cloudinary
3. Seed MongoDB screens 1-11:
   - Screens 1-9: menu boards + burst enabled
   - Screen 10: full price list (no burst)
   - Screen 11: drinks & coffee (no burst)

Run: cd cnc-solutions && python3 seed_signage_full.py
"""

import os
import sys
import hashlib
import json
from pathlib import Path

# Check deps
try:
    from PIL import Image, ImageDraw, ImageFont
    import cloudinary
    import cloudinary.uploader
    from pymongo import MongoClient
except ImportError:
    print("Install: pip3 install Pillow cloudinary pymongo")
    sys.exit(1)

# === CONFIG ===
MONGO_URI = "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority"
cloudinary.config(
    cloud_name="dtcjxk8si",
    api_key="327179765556728",
    api_secret="J05WLti2g_12vdN5L1ARA7KkED8",
)

W, H = 2160, 3840
INSPIRATION = Path(__file__).parent / "inspiration menu" / "screens"
OUTPUT = Path(__file__).parent / "seed_output"
OUTPUT.mkdir(exist_ok=True)

# === 11 SCREEN LAYOUT ===
SCREENS = {
    1:  {"name": "Beef Burger Meals",     "images": ["screen-1/beef-burger-meals.png"], "burst": True},
    2:  {"name": "Chicken Burgers",       "images": ["screen-2/chicken-burgers-meals.png"], "burst": True},
    3:  {"name": "Chicken & Fish",        "images": ["screen-2/chicken-fish-burgers-meals.png"], "burst": True},
    4:  {"name": "Chicken N Chicken",     "images": ["screen-2/chicken-n-chicken-meals.png"], "burst": True},
    5:  {"name": "Wraps & Salad",         "images": ["screen-3/wraps-vegi-salad-meals.png", "screen-3/ris-bowl-promo.jpg"], "burst": True},
    6:  {"name": "Tacos Meals",           "images": ["screen-4/tacos-meals.png"], "burst": True},
    7:  {"name": "Family Buckets",        "images": ["screen-5/family-sharing-buckets.png"], "burst": True},
    8:  {"name": "Sides",                 "images": ["screen-6/sides.png"], "burst": True},
    9:  {"name": "Kids Meal",             "images": ["screen-7/kids-meal.png"], "burst": True},
    10: {"name": "Full Price List",       "images": ["screen-8/full-menu-price-list.jpg"], "burst": False},
    11: {"name": "Drinks & Coffee",       "images": ["screen-9/cold-drinks-shakes-sundae.jpg", "screen-9/kaffe-kage.jpg"], "burst": False},
}

# === BURST DESIGN — matching the HTML prototype ===
# Gradient colors per screen (dark red → orange, screens 1-9)
BURST_COLORS = [
    ((61,13,15), (90,21,24)),    # Screen 1
    ((90,21,24), (114,28,31)),   # Screen 2
    ((114,28,31), (138,35,37)),  # Screen 3
    ((138,35,37), (165,46,40)),  # Screen 4
    ((165,46,40), (192,58,28)),  # Screen 5
    ((192,58,28), (216,80,16)),  # Screen 6
    ((216,80,16), (232,101,5)),  # Screen 7
    ((232,101,5), (241,125,0)),  # Screen 8
    ((241,125,0), (248,144,32)), # Screen 9
]

# What each screen shows in the burst
# Screen 1: stripes, Screen 2: "TASTE\nIS A", Screens 3-9: P,A,S,S,I,O,N
BURST_CONTENT = [
    "STRIPES",
    "TASTE\nIS A",
    "P", "A", "S", "S", "I", "O", "N",
]


def lerp(a, b, t):
    return int(a + (b - a) * t)


def make_gradient(w, h, c1, c2):
    """Create diagonal gradient image."""
    img = Image.new("RGB", (w, h))
    for y in range(h):
        for x in range(0, w, 4):  # Step 4 for speed
            t = (x / w * 0.4 + y / h * 0.6)
            r = lerp(c1[0], c2[0], t)
            g = lerp(c1[1], c2[1], t)
            b = lerp(c1[2], c2[2], t)
            for dx in range(4):
                if x + dx < w:
                    img.putpixel((x + dx, y), (r, g, b))
    return img


def get_font(size):
    """Try to get Oswald or fallback."""
    for name in ["/System/Library/Fonts/Helvetica.ttc", "/System/Library/Fonts/SFNSDisplay.ttf"]:
        try:
            return ImageFont.truetype(name, size)
        except:
            pass
    return ImageFont.load_default()


def draw_stripes(draw, cx, cy, h=700):
    """Draw the CNC red/orange/red stripes."""
    bar_w = 50
    gap = 30
    total_w = bar_w * 3 + gap * 2
    x = cx - total_w // 2
    y = cy - h // 2
    # Colors: white/light for stripes
    colors = [(230, 230, 230), (180, 160, 140), (230, 230, 230)]
    for i, color in enumerate(colors):
        bx = x + i * (bar_w + gap)
        draw.rounded_rectangle([(bx, y), (bx + bar_w, y + h)], radius=12, fill=color)


def create_burst_frame(screen_idx, show_content=True):
    """Create one burst frame for a screen."""
    c1, c2 = BURST_COLORS[screen_idx]
    # Use bands instead of pixel-by-pixel for speed
    img = Image.new("RGB", (W, H))
    draw = ImageDraw.Draw(img)
    bands = 200
    band_h = H // bands
    for i in range(bands):
        t = i / bands
        r = lerp(c1[0], c2[0], t * 0.6 + 0.2)
        g = lerp(c1[1], c2[1], t * 0.6 + 0.2)
        b = lerp(c1[2], c2[2], t * 0.6 + 0.2)
        draw.rectangle([(0, i * band_h), (W, (i + 1) * band_h)], fill=(r, g, b))

    if not show_content:
        return img

    content = BURST_CONTENT[screen_idx]
    cx, cy = W // 2, H // 2

    if content == "STRIPES":
        draw_stripes(draw, cx, cy, h=1200)

    elif "\n" in content:
        # "TASTE\nIS A" — two lines
        lines = content.split("\n")
        font = get_font(350)
        # TASTE
        bbox = draw.textbbox((0, 0), lines[0], font=font)
        tw = bbox[2] - bbox[0]
        th = bbox[3] - bbox[1]
        draw.text((cx - tw // 2, cy - th - 40), lines[0], fill=(255, 255, 255), font=font)
        # IS A
        bbox2 = draw.textbbox((0, 0), lines[1], font=font)
        tw2 = bbox2[2] - bbox2[0]
        draw.text((cx - tw2 // 2, cy + 40), lines[1], fill=(255, 255, 255), font=font)

    else:
        # Single big letter
        font = get_font(900)
        bbox = draw.textbbox((0, 0), content, font=font)
        tw = bbox[2] - bbox[0]
        th = bbox[3] - bbox[1]
        draw.text((cx - tw // 2, cy - th // 2), content, fill=(255, 255, 255), font=font)

    return img


def main():
    client = MongoClient(MONGO_URI)
    db = client["CNCtest"]
    screens_col = db["screens"]
    images_col = db["images"]

    print("=== GENERATING BURST GIFs ===\n")
    burst_urls = {}

    for i in range(9):
        screen_num = i + 1
        print(f"  Screen {screen_num}: {BURST_CONTENT[i]}...")

        # Frame 1: just gradient (empty)
        frame1 = create_burst_frame(i, show_content=False)
        # Frame 2: gradient + content
        frame2 = create_burst_frame(i, show_content=True)

        gif_path = OUTPUT / f"burst_screen_{screen_num}.gif"
        frame1.save(str(gif_path), save_all=True, append_images=[frame2],
                    duration=800, loop=0)

        # Upload to Cloudinary
        result = cloudinary.uploader.upload(str(gif_path),
            folder="cnc-signage",
            public_id=f"burst-screen-{screen_num}",
            overwrite=True,
            resource_type="image",
        )
        burst_urls[screen_num] = {
            "url": result["secure_url"],
            "public_id": result["public_id"],
        }
        print(f"    → {result['secure_url'][-50:]}")

    print("\n=== UPLOADING INSPIRATION IMAGES ===\n")
    screen_images = {}  # screen_num -> list of {filename, cloudinaryPublicId, url, order}

    for screen_num, config in SCREENS.items():
        screen_images[screen_num] = []
        for order, rel_path in enumerate(config["images"]):
            full_path = INSPIRATION / rel_path
            if not full_path.exists():
                print(f"  SKIP Screen {screen_num}: {rel_path} (not found)")
                continue

            filename = full_path.stem
            public_id = f"cnc-signage/screen-{screen_num}-{filename}"

            print(f"  Screen {screen_num}: uploading {rel_path}...")
            result = cloudinary.uploader.upload(str(full_path),
                folder="cnc-signage",
                public_id=f"screen-{screen_num}-{filename}",
                overwrite=True,
                format="png",
            )

            # Save to images collection
            images_col.update_one(
                {"cloudinaryPublicId": result["public_id"]},
                {"$set": {
                    "name": f"{config['name']} {order + 1}",
                    "category": "Menu Boards",
                    "cloudinaryPublicId": result["public_id"],
                    "url": result["secure_url"],
                    "width": result["width"],
                    "height": result["height"],
                    "format": result.get("format", "png"),
                    "sizeBytes": result.get("bytes", 0),
                }},
                upsert=True,
            )

            screen_images[screen_num].append({
                "filename": f"{filename}.png",
                "cloudinaryPublicId": result["public_id"],
                "url": result["secure_url"],
                "order": order,
            })
            print(f"    → {result['secure_url'][-50:]}")

    print("\n=== SEEDING 11 SCREENS ===\n")

    for screen_num, config in SCREENS.items():
        imgs = screen_images.get(screen_num, [])

        # Playlist hash
        hash_data = "|".join(f"{img['url']}:{img['order']}" for img in imgs)
        playlist_hash = hashlib.md5(hash_data.encode()).hexdigest()

        update = {
            "name": config["name"],
            "images": imgs,
            "rotationInterval": 60000,  # 60 seconds
            "published": True,
            "publishedAt": __import__("datetime").datetime.utcnow(),
            "playlistHash": playlist_hash,
            "screenOnTime": "11:00",
            "screenOffTime": "23:05",
            "screenOffMode": "dim",
        }

        if config["burst"] and screen_num in burst_urls:
            update.update({
                "burstEnabled": True,
                "burstImageUrl": burst_urls[screen_num]["url"],
                "burstCloudinaryId": burst_urls[screen_num]["public_id"],
                "burstInterval": 3,   # every 3 minutes
                "burstDuration": 10,  # show for 10 seconds
            })
        else:
            update.update({
                "burstEnabled": False,
                "burstImageUrl": "",
                "burstCloudinaryId": "",
            })

        screens_col.update_one(
            {"_id": screen_num},
            {"$set": update},
            upsert=True,
        )

        burst_status = "BURST" if config["burst"] else "no burst"
        print(f"  Screen {screen_num:2d}: {config['name']:<25s} | {len(imgs)} images | {burst_status}")

    print(f"\nDone! 11 screens seeded.")
    print(f"  Screens 1-9:  menu boards + burst (TASTE IS A PASSION)")
    print(f"  Screen 10:    full price list")
    print(f"  Screen 11:    drinks & coffee")
    print(f"  Schedule:     11:00 - 23:05")
    print(f"  Rotation:     60 seconds")
    print(f"  Burst:        every 3 min, 10 sec duration")

    client.close()


if __name__ == "__main__":
    main()
