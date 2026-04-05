#!/usr/bin/env python3
"""
Upload the 9 milkshake burst PNGs to Cloudinary and seed MongoDB.
Sets burst on screens 1-9, every 1 minute, 10 seconds duration.
Preserves all other screen settings (images, schedule, publish, etc).
"""

import os
from pathlib import Path
import cloudinary
import cloudinary.uploader
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv(os.path.join(os.path.dirname(__file__), "..", "signage", ".env.local"))

MONGO_URI = os.environ["MONGO_URI"]
cloudinary.config(
    cloud_name=os.environ["CLOUDINARY_CLOUD_NAME"],
    api_key=os.environ["CLOUDINARY_API_KEY"],
    api_secret=os.environ["CLOUDINARY_API_SECRET"],
)

BURST_DIR = Path(__file__).parent / "output" / "burst_milkshake"
NUM_SCREENS = 9


def main():
    print("=== SEEDING MILKSHAKE BURST (screens 1-9) ===\n")

    # 1) Upload each slice to Cloudinary
    print("[1/2] Uploading to Cloudinary...")
    uploads = []
    for i in range(NUM_SCREENS):
        path = BURST_DIR / f"burst_screen_{i + 1}.png"
        if not path.exists():
            print(f"  ERROR: {path} not found. Run generate_milkshake_burst.py first.")
            return

        result = cloudinary.uploader.upload(
            str(path),
            folder="cnc-signage",
            resource_type="image",
            public_id=f"burst-milkshake-screen-{i + 1}",
            overwrite=True,
        )
        url = result["secure_url"]
        public_id = result["public_id"]
        print(f"  Screen {i + 1}: {url}")
        uploads.append({"url": url, "public_id": public_id})

    # 2) Update MongoDB — only burst fields, keep everything else
    print("\n[2/2] Updating MongoDB burst config...")
    client = MongoClient(MONGO_URI)
    db_name = MONGO_URI.split("/")[-1].split("?")[0]
    db = client[db_name]
    screens = db["screens"]

    for i, upload in enumerate(uploads):
        screen_id = i + 1
        result = screens.update_one(
            {"_id": screen_id},
            {"$set": {
                "burstEnabled": True,
                "burstImageUrl": upload["url"],
                "burstCloudinaryId": upload["public_id"],
                "burstInterval": 1,   # every 1 minute
                "burstDuration": 10,  # show for 10 seconds
            }},
        )
        status = "updated" if result.modified_count else "already set"
        print(f"  Screen {screen_id}: burst {status}")

    client.close()

    print("\n=== DONE ===")
    print(f"Burst: every 1 min, 10 sec duration, screens 1-9")
    print("Devices will pick up config within 30 seconds.")


if __name__ == "__main__":
    main()
