#!/usr/bin/env python3
"""
Quick test: set all screens off-time to 00:00 (dim now), wait 10 min,
then restore off-time to 23:30 and disable burst. Keeps images/config intact.
"""

import os
import time
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv(os.path.join(os.path.dirname(__file__), "..", "signage", ".env.local"))
MONGO_URI = os.environ["MONGO_URI"]
db_name = MONGO_URI.split("/")[-1].split("?")[0]
client = MongoClient(MONGO_URI)
screens = client[db_name]["screens"]
IDS = list(range(1, 21))  # all screens

print("=== QUICK DIM TEST ===\n")

print("[1/3] Setting off-time to 00:00 (dim now)...")
screens.update_many({"_id": {"$in": IDS}}, {"$set": {"screenOffTime": "00:00"}})
print("  All screens set to turn off at 00:00")

print("\n[2/3] Waiting 10 minutes...")
for i in range(600, 0, -30):
    m, s = divmod(i, 60)
    print(f"  {m}m {s}s remaining...", flush=True)
    time.sleep(30)

print("\n[3/3] Restoring off-time to 23:30 + disabling burst...")
screens.update_many({"_id": {"$in": IDS}}, {"$set": {
    "screenOffTime": "23:30",
    "burstEnabled": False,
}})
print("  Off-time restored to 23:30")
print("  Burst disabled on all screens")

client.close()
print("\n=== DONE ===")
