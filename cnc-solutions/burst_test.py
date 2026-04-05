#!/usr/bin/env python3
"""
Burst test: disable burst on screens 1-9, wait 2 minutes, re-enable + force sync.
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
IDS = list(range(1, 10))


def set_burst(enabled):
    screens.update_many({"_id": {"$in": IDS}}, {"$set": {"burstEnabled": enabled}})
    state = "ON" if enabled else "OFF"
    print(f"  Burst {state} for screens 1-9")


def force_sync():
    import hashlib, datetime
    for sid in IDS:
        new_hash = hashlib.md5(f"force-{sid}-{datetime.datetime.utcnow()}".encode()).hexdigest()
        screens.update_one({"_id": sid}, {"$set": {"playlistHash": new_hash}})
    print("  Force sync triggered on screens 1-9")


print("=== BURST TEST ===\n")

print("[1/3] Disabling burst...")
set_burst(False)

print("\n[2/3] Waiting 2 minutes...")
for i in range(120, 0, -10):
    print(f"  {i}s remaining...", flush=True)
    time.sleep(10)

print("\n[3/3] Re-enabling burst + force sync...")
set_burst(True)
force_sync()

client.close()
print("\n=== DONE — burst is back on ===")
