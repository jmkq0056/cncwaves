#!/usr/bin/env python3
"""
Upload Menu/*.jpg to Cloudinary and seed screens 1-11 in MongoDB.
Keeps existing screen config (name, schedule, etc.) — only replaces images.
Disables burst on all 11 screens.

Run: cd cnc-solutions && python3 seed_menu_screens.py
"""

import os
import hashlib
from datetime import datetime, timezone

import cloudinary
import cloudinary.uploader
from pymongo import MongoClient
from dotenv import load_dotenv

# Load env from signage/.env.local
load_dotenv(os.path.join(os.path.dirname(__file__), "..", "signage", ".env.local"))

MONGO_URI = os.environ["MONGO_URI"]
cloudinary.config(
    cloud_name=os.environ["CLOUDINARY_CLOUD_NAME"],
    api_key=os.environ["CLOUDINARY_API_KEY"],
    api_secret=os.environ["CLOUDINARY_API_SECRET"],
)

MENU_DIR = os.path.join(os.path.dirname(__file__), "Menu")

# Screen ID -> list of local filenames (order matters)
SCREEN_FILES = {
    1:  ["1.jpg"],
    2:  ["2.jpg"],
    3:  ["3.jpg", "3-1.jpg"],
    4:  ["4.jpg"],
    5:  ["5.jpg"],
    6:  ["6.jpg"],
    7:  ["7.jpg"],
    8:  ["8.jpg"],
    9:  ["9.jpg"],
    10: ["10.jpg"],
    11: ["11.jpg"],
}


def main():
    client = MongoClient(MONGO_URI)
    db_name = MONGO_URI.split("/")[-1].split("?")[0]
    db = client[db_name]
    screens_col = db["screens"]

    print("=== Uploading Menu images to Cloudinary ===\n")

    for screen_id, files in SCREEN_FILES.items():
        # Fetch existing screen doc to preserve config
        existing = screens_col.find_one({"_id": screen_id})
        if existing:
            print(f"  Screen {screen_id}: found existing config \"{existing.get('name', '')}\"")
        else:
            print(f"  Screen {screen_id}: no existing doc, will create")

        # Upload each image
        images_arr = []
        for order, fname in enumerate(files, start=1):
            filepath = os.path.join(MENU_DIR, fname)
            pub_id = f"menu-screen-{screen_id}-{order}"
            print(f"    Uploading {fname} -> cnc-signage/{pub_id} ...", end=" ", flush=True)

            result = cloudinary.uploader.upload(
                filepath,
                folder="cnc-signage",
                public_id=pub_id,
                resource_type="image",
                overwrite=True,
            )
            url = result["secure_url"]
            print(f"OK ({url})")

            images_arr.append({
                "filename": fname,
                "cloudinaryPublicId": result["public_id"],
                "url": url,
                "order": order,
            })

        # Compute playlist hash
        hash_data = "|".join(f"{img['url']}:{img['order']}" for img in images_arr)
        playlist_hash = hashlib.md5(hash_data.encode()).hexdigest()

        # Only update images + disable burst, keep everything else
        update = {
            "images": images_arr,
            "playlistHash": playlist_hash,
            "burstEnabled": False,
            "burstImageUrl": "",
            "burstCloudinaryId": "",
            "updatedAt": datetime.now(timezone.utc),
        }

        screens_col.update_one(
            {"_id": screen_id},
            {"$set": update},
            upsert=True,
        )
        print(f"    -> Screen {screen_id} updated ({len(images_arr)} images, burst OFF)\n")

    client.close()
    print("=== DONE — 11 screens updated with menu images, burst disabled ===")


if __name__ == "__main__":
    main()
