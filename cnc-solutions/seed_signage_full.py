#!/usr/bin/env python3
"""
Full signage seed — 20 screens matching production config.
Seeds MongoDB with exact screen configs (images, burst, schedule).
Does NOT upload images or generate burst frames — uses existing Cloudinary URLs.

Run: cd cnc-solutions && python3 seed_signage_full.py
"""

import sys
import hashlib
from datetime import datetime, timezone

try:
    from pymongo import MongoClient
except ImportError:
    print("Install: pip3 install pymongo")
    sys.exit(1)

# === CONFIG ===
MONGO_URI = "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority"

# === 20 SCREEN LAYOUT (matches existing database) ===
SCREENS = {
    1: {
        "name": "Beef Burger Meals",
        "images": [
            {
                "filename": "beef-burger-meals.png",
                "cloudinaryPublicId": "cnc-signage/screen-1-beef-burger-meals",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896638/cnc-signage/screen-1-beef-burger-meals.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975500/cnc-signage/easter-burst-screen-1.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-1",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    2: {
        "name": "Chicken Burgers",
        "images": [
            {
                "filename": "chicken-burgers-meals.png",
                "cloudinaryPublicId": "cnc-signage/screen-2-chicken-burgers-meals",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896642/cnc-signage/screen-2-chicken-burgers-meals.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975502/cnc-signage/easter-burst-screen-2.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-2",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    3: {
        "name": "Chicken & Fish",
        "images": [
            {
                "filename": "chicken-fish-burgers-meals.png",
                "cloudinaryPublicId": "cnc-signage/screen-3-chicken-fish-burgers-meals",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896644/cnc-signage/screen-3-chicken-fish-burgers-meals.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975503/cnc-signage/easter-burst-screen-3.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-3",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    4: {
        "name": "Chicken N Chicken",
        "images": [
            {
                "filename": "22e82ec1-b09d-4a14-93f1-5c423a443752",
                "cloudinaryPublicId": "cnc-signage/jakvd3baopatnq0enudb",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774900044/cnc-signage/jakvd3baopatnq0enudb.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975504/cnc-signage/easter-burst-screen-4.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-4",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    5: {
        "name": "Wraps & Salad",
        "images": [
            {
                "filename": "Tacos Meals 1",
                "cloudinaryPublicId": "cnc-signage/screen-6-tacos-meals",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896655/cnc-signage/screen-6-tacos-meals.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975505/cnc-signage/easter-burst-screen-5.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-5",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    6: {
        "name": "Tacos Meals",
        "images": [
            {
                "filename": "Chicken N Chicken 1",
                "cloudinaryPublicId": "cnc-signage/screen-4-chicken-n-chicken-meals",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896647/cnc-signage/screen-4-chicken-n-chicken-meals.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975506/cnc-signage/easter-burst-screen-6.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-6",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    7: {
        "name": "Family Buckets",
        "images": [
            {
                "filename": "family-sharing-buckets.png",
                "cloudinaryPublicId": "cnc-signage/screen-7-family-sharing-buckets",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896657/cnc-signage/screen-7-family-sharing-buckets.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975507/cnc-signage/easter-burst-screen-7.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-7",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    8: {
        "name": "Sides",
        "images": [
            {
                "filename": "sides.png",
                "cloudinaryPublicId": "cnc-signage/screen-8-sides",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896659/cnc-signage/screen-8-sides.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975508/cnc-signage/easter-burst-screen-8.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-8",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    9: {
        "name": "Kids Meal",
        "images": [
            {
                "filename": "kids-meal.png",
                "cloudinaryPublicId": "cnc-signage/screen-9-kids-meal",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896661/cnc-signage/screen-9-kids-meal.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774975509/cnc-signage/easter-burst-screen-9.png",
        "burstCloudinaryId": "cnc-signage/easter-burst-screen-9",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    10: {
        "name": "Full Price List",
        "images": [
            {
                "filename": "full-menu-price-list.png",
                "cloudinaryPublicId": "cnc-signage/screen-10-full-menu-price-list",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896848/cnc-signage/screen-10-full-menu-price-list.png",
                "order": 1,
            }
        ],
        "rotationInterval": 60000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896834/cnc-signage/screen-5-ris-bowl-promo.png",
        "burstCloudinaryId": "cnc-signage/screen-5-ris-bowl-promo",
        "burstInterval": 1,
        "burstDuration": 15,
    },
    11: {
        "name": "Drinks & Coffee",
        "images": [
            {
                "filename": "cold-drinks-shakes-sundae.png",
                "cloudinaryPublicId": "cnc-signage/screen-11-cold-drinks-shakes-sundae",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896851/cnc-signage/screen-11-cold-drinks-shakes-sundae.png",
                "order": 1,
            },
            {
                "filename": "kaffe-kage.png",
                "cloudinaryPublicId": "cnc-signage/screen-11-kaffe-kage",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774896853/cnc-signage/screen-11-kaffe-kage.png",
                "order": 2,
            },
        ],
        "rotationInterval": 10000,
        "screenOnTime": "10:45",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": False,
        "burstImageUrl": "",
        "burstCloudinaryId": "",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    12: {
        "name": "Screen 12",
        "images": [
            {
                "filename": "Screen 12 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-12-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883947/cnc-signage/seed-screen-12-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 12 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-12-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883947/cnc-signage/seed-screen-12-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883975/cnc-signage/burst-screen-12.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-12",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    13: {
        "name": "Screen 13",
        "images": [
            {
                "filename": "Screen 13 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-13-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883948/cnc-signage/seed-screen-13-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 13 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-13-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883949/cnc-signage/seed-screen-13-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883976/cnc-signage/burst-screen-13.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-13",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    14: {
        "name": "Screen 14",
        "images": [
            {
                "filename": "Screen 14 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-14-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883950/cnc-signage/seed-screen-14-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 14 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-14-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883951/cnc-signage/seed-screen-14-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883977/cnc-signage/burst-screen-14.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-14",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    15: {
        "name": "Screen 15",
        "images": [
            {
                "filename": "Screen 15 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-15-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883952/cnc-signage/seed-screen-15-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 15 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-15-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883953/cnc-signage/seed-screen-15-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883978/cnc-signage/burst-screen-15.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-15",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    16: {
        "name": "Screen 16",
        "images": [
            {
                "filename": "Screen 16 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-16-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883954/cnc-signage/seed-screen-16-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 16 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-16-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883955/cnc-signage/seed-screen-16-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883979/cnc-signage/burst-screen-16.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-16",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    17: {
        "name": "Screen 17",
        "images": [
            {
                "filename": "Screen 17 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-17-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883955/cnc-signage/seed-screen-17-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 17 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-17-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883956/cnc-signage/seed-screen-17-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883980/cnc-signage/burst-screen-17.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-17",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    18: {
        "name": "Screen 18",
        "images": [
            {
                "filename": "Screen 18 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-18-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883958/cnc-signage/seed-screen-18-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 18 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-18-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883958/cnc-signage/seed-screen-18-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883981/cnc-signage/burst-screen-18.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-18",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    19: {
        "name": "Screen 19",
        "images": [
            {
                "filename": "Screen 19 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-19-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883960/cnc-signage/seed-screen-19-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 19 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-19-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883961/cnc-signage/seed-screen-19-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883982/cnc-signage/burst-screen-19.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-19",
        "burstInterval": 3,
        "burstDuration": 15,
    },
    20: {
        "name": "Screen 20",
        "images": [
            {
                "filename": "Screen 20 A",
                "cloudinaryPublicId": "cnc-signage/seed-screen-20-a",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883962/cnc-signage/seed-screen-20-a.png",
                "order": 1,
            },
            {
                "filename": "Screen 20 B",
                "cloudinaryPublicId": "cnc-signage/seed-screen-20-b",
                "url": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883962/cnc-signage/seed-screen-20-b.png",
                "order": 2,
            },
        ],
        "rotationInterval": 60000,
        "screenOnTime": "11:00",
        "screenOffTime": "23:30",
        "screenOffMode": "dim",
        "burstEnabled": True,
        "burstImageUrl": "https://res.cloudinary.com/dtcjxk8si/image/upload/v1774883983/cnc-signage/burst-screen-20.gif",
        "burstCloudinaryId": "cnc-signage/burst-screen-20",
        "burstInterval": 3,
        "burstDuration": 15,
    },
}


def main():
    client = MongoClient(MONGO_URI)
    db = client["CNCtest"]
    screens_col = db["screens"]

    print("=== SEEDING 20 SCREENS ===\n")

    for screen_id, config in SCREENS.items():
        now = datetime.now(timezone.utc)

        # Compute playlist hash
        hash_data = "|".join(f"{img['url']}:{img['order']}" for img in config["images"])
        playlist_hash = hashlib.md5(hash_data.encode()).hexdigest()

        update = {
            "name": config["name"],
            "images": config["images"],
            "rotationInterval": config["rotationInterval"],
            "published": True,
            "publishedAt": now,
            "playlistHash": playlist_hash,
            "screenOnTime": config["screenOnTime"],
            "screenOffTime": config["screenOffTime"],
            "screenOffMode": config["screenOffMode"],
            "burstEnabled": config["burstEnabled"],
            "burstImageUrl": config["burstImageUrl"],
            "burstCloudinaryId": config["burstCloudinaryId"],
            "burstInterval": config["burstInterval"],
            "burstDuration": config["burstDuration"],
        }

        screens_col.update_one(
            {"_id": screen_id},
            {"$set": update, "$setOnInsert": {"createdAt": now}},
            upsert=True,
        )

        burst_status = "BURST" if config["burstEnabled"] else "no burst"
        img_count = len(config["images"])
        print(f"  Screen {screen_id:2d}: {config['name']:<25s} | {img_count} img | {burst_status} | {config['screenOnTime']}-{config['screenOffTime']}")

    print(f"\nDone! 20 screens seeded.")
    print(f"  Screens 1-9:   menu boards + burst")
    print(f"  Screen 10:     full price list + burst (ris-bowl-promo, interval 2)")
    print(f"  Screen 11:     drinks & coffee, no burst, 10s rotation")
    print(f"  Screens 12-20: placeholder screens + burst")
    print(f"  Schedule 1-11: 10:45 - 00:05")
    print(f"  Schedule 12-20: 11:00 - 23:05")

    client.close()


if __name__ == "__main__":
    main()
