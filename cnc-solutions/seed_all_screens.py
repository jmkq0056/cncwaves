#!/usr/bin/env python3
"""
Seed all 20 signage screens:
- 2 unique color images per screen (uploaded to Cloudinary + saved to MongoDB Image collection)
- Burst GIF (2 frames) per screen for panoramic effect
- Schedule: ON 11:00, OFF 23:05 (Copenhagen)
- Rotation interval: 60 seconds
- All published
"""

import os
from PIL import Image, ImageDraw, ImageFont
import cloudinary
import cloudinary.uploader
from pymongo import MongoClient
from dotenv import load_dotenv
from datetime import datetime

load_dotenv(os.path.join(os.path.dirname(__file__), "..", "signage", ".env.local"))

MONGO_URI = os.environ["MONGO_URI"]
cloudinary.config(
    cloud_name=os.environ["CLOUDINARY_CLOUD_NAME"],
    api_key=os.environ["CLOUDINARY_API_KEY"],
    api_secret=os.environ["CLOUDINARY_API_SECRET"],
)

SCREEN_W = 1600
SCREEN_H = 2560
NUM_SCREENS = 20

# 20 distinct color pairs — color A and color B for each screen
SCREEN_COLORS = [
    # Screen 1-5: Warm
    ((220, 40, 40),   (140, 20, 60)),     # 1: Red / Crimson
    ((240, 100, 0),   (180, 60, 0)),      # 2: Orange / Burnt Orange
    ((240, 200, 0),   (200, 160, 0)),     # 3: Yellow / Gold
    ((255, 140, 60),  (200, 80, 30)),     # 4: Tangerine / Rust
    ((230, 60, 120),  (180, 30, 90)),     # 5: Hot Pink / Magenta
    # Screen 6-10: Cool
    ((0, 180, 80),    (0, 120, 60)),      # 6: Green / Forest
    ((0, 200, 180),   (0, 140, 130)),     # 7: Teal / Dark Teal
    ((0, 160, 230),   (0, 100, 180)),     # 8: Sky Blue / Ocean
    ((50, 80, 220),   (30, 50, 160)),     # 9: Blue / Navy
    ((100, 60, 220),  (70, 30, 170)),     # 10: Indigo / Deep Indigo
    # Screen 11-15: Rich
    ((160, 40, 220),  (120, 20, 180)),    # 11: Purple / Violet
    ((200, 50, 180),  (150, 30, 140)),    # 12: Orchid / Plum
    ((80, 180, 60),   (50, 130, 40)),     # 13: Lime / Olive
    ((0, 200, 200),   (0, 150, 160)),     # 14: Cyan / Petrol
    ((220, 180, 50),  (180, 140, 30)),    # 15: Amber / Dark Amber
    # Screen 16-20: Earth & Neon
    ((180, 100, 60),  (130, 70, 40)),     # 16: Copper / Brown
    ((60, 200, 120),  (40, 150, 90)),     # 17: Mint / Emerald
    ((255, 80, 80),   (200, 50, 100)),    # 18: Coral / Rose
    ((100, 200, 255), (60, 150, 200)),    # 19: Light Blue / Steel
    ((255, 200, 100), (200, 150, 60)),    # 20: Peach / Caramel
]

# Burst colors — frame 1 and frame 2 for the panoramic
BURST_FRAME1_COLORS = [c[0] for c in SCREEN_COLORS]
BURST_FRAME2_COLORS = [c[1] for c in SCREEN_COLORS]


def lerp_color(c1, c2, t):
    return tuple(int(a + (b - a) * t) for a, b in zip(c1, c2))


def get_font(size):
    try:
        return ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", size)
    except:
        return ImageFont.load_default()


def create_screen_image(screen_num, color, label):
    """Create a single screen image with gradient and label. Fast: uses horizontal bands."""
    img = Image.new("RGB", (SCREEN_W, SCREEN_H))
    draw = ImageDraw.Draw(img)

    # Vertical gradient using horizontal bands (fast)
    bands = 64
    band_h = SCREEN_H // bands
    for i in range(bands):
        t = i / bands
        b = 1.0 - t * 0.4
        c = tuple(int(v * b) for v in color)
        draw.rectangle([(0, i * band_h), (SCREEN_W, (i + 1) * band_h)], fill=c)

    # Screen number
    font_big = get_font(180)
    font_sm = get_font(50)
    cx, cy = SCREEN_W // 2, SCREEN_H // 2
    text = str(screen_num)
    bbox = draw.textbbox((0, 0), text, font=font_big)
    tw, th = bbox[2] - bbox[0], bbox[3] - bbox[1]
    draw.text((cx - tw // 2 + 4, cy - th // 2 - 40 + 4), text, fill=(0, 0, 0), font=font_big)
    draw.text((cx - tw // 2, cy - th // 2 - 40), text, fill=(255, 255, 255), font=font_big)
    bbox2 = draw.textbbox((0, 0), label, font=font_sm)
    tw2 = bbox2[2] - bbox2[0]
    draw.text((cx - tw2 // 2, cy + th // 2 + 10), label, fill=(255, 255, 255), font=font_sm)

    return img


def create_burst_slice(screen_num, color, frame_num):
    """Create a single burst slice (fast, no panoramic stitching)."""
    img = Image.new("RGB", (SCREEN_W, SCREEN_H))
    draw = ImageDraw.Draw(img)

    bands = 64
    band_h = SCREEN_H // bands
    for i in range(bands):
        t = i / bands
        b = 1.0 - t * 0.3
        c = tuple(int(v * b) for v in color)
        draw.rectangle([(0, i * band_h), (SCREEN_W, (i + 1) * band_h)], fill=c)

    font_big = get_font(160)
    font_sm = get_font(40)
    cx, cy = SCREEN_W // 2, SCREEN_H // 2
    text = str(screen_num)
    bbox = draw.textbbox((0, 0), text, font=font_big)
    tw, th = bbox[2] - bbox[0], bbox[3] - bbox[1]
    draw.text((cx - tw // 2 + 3, cy - th // 2 + 3), text, fill=(0, 0, 0), font=font_big)
    draw.text((cx - tw // 2, cy - th // 2), text, fill=(255, 255, 255), font=font_big)
    sub = f"Frame {frame_num + 1}"
    bbox2 = draw.textbbox((0, 0), sub, font=font_sm)
    tw2 = bbox2[2] - bbox2[0]
    draw.text((cx - tw2 // 2, cy + th // 2 + 20), sub, fill=(255, 255, 255), font=font_sm)

    return img


def main():
    os.makedirs("seed_output", exist_ok=True)

    # --- 1. Create 2 images per screen (40 images total) ---
    print("=== Creating 40 screen images (2 per screen) ===")
    screen_images = {}  # {screen_id: [(path, color_name), ...]}
    for i in range(NUM_SCREENS):
        screen_num = i + 1
        col_a, col_b = SCREEN_COLORS[i]
        img_a = create_screen_image(screen_num, col_a, "Image A")
        img_b = create_screen_image(screen_num, col_b, "Image B")
        path_a = f"seed_output/screen_{screen_num}_a.png"
        path_b = f"seed_output/screen_{screen_num}_b.png"
        img_a.save(path_a)
        img_b.save(path_b)
        screen_images[screen_num] = [path_a, path_b]
        print(f"  Screen {screen_num}: {path_a}, {path_b}")

    # --- 2. Create burst GIFs (20 slices, each rendered directly) ---
    print("\n=== Creating 20 burst GIF slices ===")
    burst_paths = []
    for i in range(NUM_SCREENS):
        screen_num = i + 1
        s1 = create_burst_slice(screen_num, BURST_FRAME1_COLORS[i], 0)
        s2 = create_burst_slice(screen_num, BURST_FRAME2_COLORS[i], 1)
        path = f"seed_output/burst_screen_{screen_num}.gif"
        s1.save(path, save_all=True, append_images=[s2], duration=800, loop=0)
        burst_paths.append(path)
        print(f"  Screen {screen_num}: {path}")

    # --- 3. Upload everything to Cloudinary ---
    print("\n=== Uploading to Cloudinary ===")

    # Upload screen images
    uploaded_images = {}  # {screen_id: [{url, public_id, name}, ...]}
    for screen_num, paths in screen_images.items():
        uploaded_images[screen_num] = []
        for j, path in enumerate(paths):
            label = "A" if j == 0 else "B"
            pub_id = f"seed-screen-{screen_num}-{label.lower()}"
            result = cloudinary.uploader.upload(
                path, folder="cnc-signage", public_id=pub_id,
                resource_type="image", overwrite=True, format="png"
            )
            uploaded_images[screen_num].append({
                "url": result["secure_url"],
                "public_id": result["public_id"],
                "name": f"Screen {screen_num} {label}",
                "width": result.get("width", SCREEN_W),
                "height": result.get("height", SCREEN_H),
                "bytes": result.get("bytes", 0),
            })
            print(f"  Screen {screen_num} {label}: {result['secure_url']}")

    # Upload burst GIFs
    uploaded_bursts = {}
    for i, path in enumerate(burst_paths):
        screen_num = i + 1
        result = cloudinary.uploader.upload(
            path, folder="cnc-signage", public_id=f"burst-screen-{screen_num}",
            resource_type="image", overwrite=True
        )
        uploaded_bursts[screen_num] = {
            "url": result["secure_url"],
            "public_id": result["public_id"],
        }
        print(f"  Burst {screen_num}: {result['secure_url']}")

    # --- 4. Seed MongoDB ---
    print("\n=== Seeding MongoDB ===")
    client = MongoClient(MONGO_URI)
    db_name = MONGO_URI.split("/")[-1].split("?")[0]
    db = client[db_name]

    # Save images to Image collection
    images_col = db["images"]
    for screen_num, imgs in uploaded_images.items():
        for img_data in imgs:
            images_col.update_one(
                {"cloudinaryPublicId": img_data["public_id"]},
                {"$set": {
                    "name": img_data["name"],
                    "category": f"Screen {screen_num}",
                    "cloudinaryPublicId": img_data["public_id"],
                    "url": img_data["url"],
                    "width": img_data["width"],
                    "height": img_data["height"],
                    "format": "png",
                    "sizeBytes": img_data["bytes"],
                    "createdAt": datetime.utcnow(),
                    "updatedAt": datetime.utcnow(),
                }},
                upsert=True,
            )

    # Update screens
    screens_col = db["screens"]
    for i in range(NUM_SCREENS):
        screen_num = i + 1
        imgs = uploaded_images[screen_num]
        burst = uploaded_bursts[screen_num]

        screen_images_arr = [
            {
                "filename": img["name"],
                "cloudinaryPublicId": img["public_id"],
                "url": img["url"],
                "order": j + 1,
            }
            for j, img in enumerate(imgs)
        ]

        # Compute playlist hash
        import hashlib, json
        normalized = [{"f": im["filename"], "u": im["url"], "o": im["order"]} for im in screen_images_arr]
        hash_data = json.dumps(normalized) + "|60000"
        playlist_hash = hashlib.md5(hash_data.encode()).hexdigest()

        screens_col.update_one(
            {"_id": screen_num},
            {"$set": {
                "name": f"Screen {screen_num}",
                "images": screen_images_arr,
                "rotationInterval": 60000,  # 60 seconds
                "playlistHash": playlist_hash,
                "published": True,
                "publishedAt": datetime.utcnow(),
                # Schedule: ON 11:00, OFF 23:05 Copenhagen
                "screenOnTime": "11:00",
                "screenOffTime": "23:05",
                "screenOffMode": "dim",
                # Burst
                "burstEnabled": True,
                "burstImageUrl": burst["url"],
                "burstCloudinaryId": burst["public_id"],
                "burstInterval": 3,   # every 3 minutes
                "burstDuration": 10,  # show 10 seconds
                "updatedAt": datetime.utcnow(),
            }},
        )
        print(f"  Screen {screen_num}: 2 images, burst, schedule 11:00-23:05, published")

    client.close()

    print("\n=== DONE ===")
    print(f"  {NUM_SCREENS} screens configured")
    print(f"  {NUM_SCREENS * 2} images uploaded")
    print(f"  {NUM_SCREENS} burst GIFs uploaded")
    print(f"  Rotation: 60 seconds")
    print(f"  Schedule: ON 11:00, OFF 23:05 (Copenhagen)")
    print(f"  Burst: every 3 min, 10 sec duration")
    print(f"  Devices will sync within 30 seconds")


if __name__ == "__main__":
    main()
