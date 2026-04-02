#!/usr/bin/env python3
"""
Set burst to 1min interval + 15s duration, then force sync 5 times over 10 minutes.
"""

import time
import hashlib
from pymongo import MongoClient

MONGO_URI = "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority"

client = MongoClient(MONGO_URI)
db = client["CNCtest"]
screens = db["screens"]

# Step 1: Set burst to every 1 minute, 15s duration
result = screens.update_many({}, {"$set": {
    "burstInterval": 1,
    "burstDuration": 15,
}})
print(f"Set all {result.modified_count} screens: burstInterval=1min, burstDuration=15s\n")

# Step 2: Force sync 5 times, 2 minutes apart
for attempt in range(1, 6):
    nonce = str(int(time.time()))
    count = 0
    for screen in screens.find():
        images = screen.get("images", [])
        interval = screen.get("rotationInterval", 10000)
        hash_data = "|".join(f"{img.get('url','')}:{img.get('order',0)}" for img in images)
        hash_data += "|" + str(interval) + "|" + nonce
        new_hash = hashlib.md5(hash_data.encode()).hexdigest()
        screens.update_one({"_id": screen["_id"]}, {"$set": {"playlistHash": new_hash}})
        count += 1

    print(f"Force sync #{attempt}/5 — {count} screens invalidated")

    if attempt < 5:
        print(f"  Waiting 2 minutes...")
        time.sleep(120)

print(f"\nDone! All screens should be fully synced now.")
client.close()
