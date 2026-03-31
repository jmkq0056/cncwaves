#!/usr/bin/env python3
"""
Upload 9 Easter burst PNGs to Cloudinary and update screens 1-9 in MongoDB.
Uses credentials from signage/.env.local.

Run: cd cnc-solutions && python3 upload_easter_burst.py
"""

import os
import sys
from pathlib import Path

try:
    import cloudinary
    import cloudinary.uploader
    from pymongo import MongoClient
    from dotenv import load_dotenv
except ImportError:
    print("Install: pip3 install cloudinary pymongo python-dotenv")
    sys.exit(1)

# Load env from signage/.env.local
env_path = Path(__file__).parent / ".." / "signage" / ".env.local"
load_dotenv(env_path)

MONGO_URI = os.environ["MONGO_URI"]
cloudinary.config(
    cloud_name=os.environ["CLOUDINARY_CLOUD_NAME"],
    api_key=os.environ["CLOUDINARY_API_KEY"],
    api_secret=os.environ["CLOUDINARY_API_SECRET"],
)

OUTPUT_DIR = Path(__file__).parent / "output"
BURST_INTERVAL = 2   # minutes (closest to 90s the Android app supports)
BURST_DURATION = 10  # seconds


def main():
    client = MongoClient(MONGO_URI)
    db = client["CNCtest"]
    screens_col = db["screens"]

    print("=== UPLOADING 9 EASTER BURST PNGs TO CLOUDINARY ===\n")

    for i in range(1, 10):
        png_path = OUTPUT_DIR / f"burst_screen_{i}.png"
        if not png_path.exists():
            print(f"  Screen {i}: SKIP — {png_path.name} not found")
            continue

        public_id = f"easter-burst-screen-{i}"
        print(f"  Screen {i}: uploading {png_path.name}...")

        result = cloudinary.uploader.upload(
            str(png_path),
            folder="cnc-signage",
            public_id=public_id,
            overwrite=True,
            resource_type="image",
            format="png",
        )

        secure_url = result["secure_url"]
        full_public_id = result["public_id"]
        print(f"    → {secure_url}")

        # Update screen in MongoDB
        screens_col.update_one(
            {"_id": i},
            {"$set": {
                "burstEnabled": True,
                "burstImageUrl": secure_url,
                "burstCloudinaryId": full_public_id,
                "burstInterval": BURST_INTERVAL,
                "burstDuration": BURST_DURATION,
            }},
        )
        print(f"    → Screen {i} updated (interval={BURST_INTERVAL}min, duration={BURST_DURATION}s)")

    print(f"\nDone! Screens 1-9 now have Easter burst images.")
    print(f"  Interval: every {BURST_INTERVAL} minutes")
    print(f"  Duration: {BURST_DURATION} seconds")
    print(f"  Android devices will pick up changes within ~2 minutes.")

    client.close()


if __name__ == "__main__":
    main()
