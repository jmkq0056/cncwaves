#!/usr/bin/env python3
"""
Generate 7 animated GIF slices for panoramic burst across 7 signage screens.
Each GIF has 2 frames that alternate — when synced, all screens form one image.
Uploads to Cloudinary and seeds MongoDB burst config.
"""

import os
import math
from PIL import Image, ImageDraw, ImageFont, ImageFilter
import cloudinary
import cloudinary.uploader
from pymongo import MongoClient
from dotenv import load_dotenv

# Load env
load_dotenv(os.path.join(os.path.dirname(__file__), "..", "signage", ".env.local"))

MONGO_URI = os.environ["MONGO_URI"]
cloudinary.config(
    cloud_name=os.environ["CLOUDINARY_CLOUD_NAME"],
    api_key=os.environ["CLOUDINARY_API_KEY"],
    api_secret=os.environ["CLOUDINARY_API_SECRET"],
)

NUM_SCREENS = 7
SCREEN_W = 1600
SCREEN_H = 2560
TOTAL_W = SCREEN_W * NUM_SCREENS  # 11200
FPS_DURATION = 800  # ms per frame

# Color pairs for each screen (vibrant rainbow)
COLORS_FRAME1 = [
    (255, 40, 40),    # 1: Red
    (255, 140, 0),    # 2: Orange
    (255, 220, 0),    # 3: Yellow
    (0, 200, 80),     # 4: Green
    (0, 200, 220),    # 5: Cyan
    (50, 100, 255),   # 6: Blue
    (160, 50, 255),   # 7: Purple
]

COLORS_FRAME2 = [
    (180, 0, 80),     # 1: Deep Pink
    (220, 80, 0),     # 2: Burnt Orange
    (200, 180, 0),    # 3: Gold
    (0, 140, 100),    # 4: Teal
    (0, 120, 180),    # 5: Ocean
    (30, 50, 180),    # 6: Navy
    (120, 0, 200),    # 7: Violet
]


def lerp_color(c1, c2, t):
    return tuple(int(a + (b - a) * t) for a, b in zip(c1, c2))


def create_panoramic_frame(colors, frame_num):
    """Create a full panoramic image (11200x2560) with gradient blends between screen colors."""
    img = Image.new("RGB", (TOTAL_W, SCREEN_H))
    draw = ImageDraw.Draw(img)

    # Draw vertical gradient strips with smooth blending between adjacent screen colors
    for x in range(TOTAL_W):
        screen_idx = x / SCREEN_W
        left_idx = int(screen_idx) % NUM_SCREENS
        right_idx = min(left_idx + 1, NUM_SCREENS - 1)
        blend = screen_idx - int(screen_idx)

        col = lerp_color(colors[left_idx], colors[right_idx], blend)

        # Add vertical gradient (lighter at top, darker at bottom)
        for y in range(SCREEN_H):
            vert_t = y / SCREEN_H
            brightness = 1.0 - vert_t * 0.3  # 100% to 70%
            pixel = tuple(int(c * brightness) for c in col)
            img.putpixel((x, y), pixel)

    # Add diagonal light streaks for visual flair
    overlay = Image.new("RGBA", (TOTAL_W, SCREEN_H), (0, 0, 0, 0))
    odraw = ImageDraw.Draw(overlay)
    for i in range(14):
        cx = i * (TOTAL_W // 14) + (200 if frame_num == 1 else -200)
        for offset in range(-200, 200, 2):
            alpha = max(0, 60 - abs(offset) // 2)
            odraw.line(
                [(cx + offset, 0), (cx + offset + SCREEN_H // 3, SCREEN_H)],
                fill=(255, 255, 255, alpha),
                width=3,
            )
    img = img.convert("RGBA")
    img = Image.alpha_composite(img, overlay)
    img = img.convert("RGB")

    # Add screen number labels
    for i in range(NUM_SCREENS):
        cx = i * SCREEN_W + SCREEN_W // 2
        cy = SCREEN_H // 2
        label_draw = ImageDraw.Draw(img)

        # Large screen number
        try:
            font_big = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 200)
            font_sm = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 60)
        except:
            font_big = ImageFont.load_default()
            font_sm = ImageFont.load_default()

        text = str(i + 1)
        bbox = label_draw.textbbox((0, 0), text, font=font_big)
        tw, th = bbox[2] - bbox[0], bbox[3] - bbox[1]
        label_draw.text(
            (cx - tw // 2, cy - th // 2 - 50),
            text,
            fill=(255, 255, 255, ),
            font=font_big,
        )

        # "BURST" label
        sub = f"Frame {frame_num + 1}"
        bbox2 = label_draw.textbbox((0, 0), sub, font=font_sm)
        tw2 = bbox2[2] - bbox2[0]
        label_draw.text(
            (cx - tw2 // 2, cy + th // 2 + 20),
            sub,
            fill=(255, 255, 255),
            font=font_sm,
        )

    return img


def create_slices():
    """Generate 7 animated GIFs (2 frames each)."""
    print("Creating panoramic frames...")
    frame1 = create_panoramic_frame(COLORS_FRAME1, 0)
    frame2 = create_panoramic_frame(COLORS_FRAME2, 1)

    os.makedirs("burst_slices", exist_ok=True)
    paths = []

    for i in range(NUM_SCREENS):
        left = i * SCREEN_W
        right = left + SCREEN_W

        slice1 = frame1.crop((left, 0, right, SCREEN_H))
        slice2 = frame2.crop((left, 0, right, SCREEN_H))

        path = f"burst_slices/burst_screen_{i + 1}.gif"
        slice1.save(
            path,
            save_all=True,
            append_images=[slice2],
            duration=FPS_DURATION,
            loop=0,
        )
        paths.append(path)
        print(f"  Screen {i + 1}: {path} ({SCREEN_W}x{SCREEN_H}, 2 frames)")

    # Also save the full panoramic for reference
    frame1.save("burst_slices/panoramic_frame1.png")
    frame2.save("burst_slices/panoramic_frame2.png")
    print(f"  Full panoramic: {TOTAL_W}x{SCREEN_H}")

    return paths


def upload_and_seed(paths):
    """Upload GIFs to Cloudinary and update MongoDB burst config."""
    print("\nUploading to Cloudinary...")
    uploads = []
    for i, path in enumerate(paths):
        result = cloudinary.uploader.upload(
            path,
            folder="cnc-signage",
            resource_type="image",
            public_id=f"burst-screen-{i + 1}",
            overwrite=True,
        )
        url = result["secure_url"]
        public_id = result["public_id"]
        print(f"  Screen {i + 1}: {url}")
        uploads.append({"url": url, "public_id": public_id})

    print("\nSeeding MongoDB burst config...")
    client = MongoClient(MONGO_URI)
    db_name = MONGO_URI.split("/")[-1].split("?")[0]
    db = client[db_name]
    screens = db["screens"]

    for i, upload in enumerate(uploads):
        screen_id = i + 1
        result = screens.update_one(
            {"_id": screen_id},
            {
                "$set": {
                    "burstEnabled": True,
                    "burstImageUrl": upload["url"],
                    "burstCloudinaryId": upload["public_id"],
                    "burstInterval": 1,  # every 1 minute for testing
                    "burstDuration": 10,  # show for 10 seconds
                }
            },
        )
        status = "updated" if result.modified_count else "already set"
        print(f"  Screen {screen_id}: burst {status}")

    # Also make sure screens 1-7 are published
    for i in range(NUM_SCREENS):
        screens.update_one(
            {"_id": i + 1},
            {"$set": {"published": True}},
        )

    client.close()
    print("\nDone! Burst configured for screens 1-7.")
    print("Interval: every 1 minute | Duration: 10 seconds")
    print("Devices will pick up the config within 30 seconds.")


if __name__ == "__main__":
    paths = create_slices()
    upload_and_seed(paths)
