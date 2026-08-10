#!/usr/bin/env python3
"""
Re-interpret the seeded supplier prices as GROSS (incl. MOMS) instead of NET.

After apply_curated.py:        priceNet = Excel value    → display gross = Excel × 1.25
After this script:             priceNet = Excel / 1.25   → display gross = Excel exactly

Only touches the 51 codes from curated_map.json. Pre-existing prices (e.g.
the manually-set drumstick 100 DKK) are left alone.
"""
import json, os, sys
from pymongo import MongoClient, UpdateOne
from bson import ObjectId

HERE = os.path.dirname(os.path.abspath(__file__))
MONGO_URI = os.environ.get("CNCTEST_MONGO_URI") or sys.exit(
    "Set CNCTEST_MONGO_URI env var to the Atlas connection string."
)

apply = "--apply" in sys.argv

with open(os.path.join(HERE, "curated_map.json")) as f:
    curated = json.load(f)
with open(os.path.join(HERE, "pricebook.json")) as f:
    pb = json.load(f)

# Excel codes we updated (with-code matches only — name-only entries we
# also touch below)
excel_codes = list(curated["matches"].keys())

client = MongoClient(MONGO_URI)
coll = client["CNCtest"]["products"]

# Rows we touched: the Excel-coded matches were renamed → look them up by
# Excel code. The name-only matches were NOT renamed → look them up by DB code.
name_match_db_codes = [e["db_code"] for e in curated.get("name_match_no_rename", [])]
target_codes = set(excel_codes) | set(name_match_db_codes)

cursor = coll.find({"code": {"$in": list(target_codes)}, "priceNet": {"$gt": 0}})
rows = list(cursor)

ops = []
print(f"Flipping {len(rows)} rows: currentNet (was Excel value) → newNet = currentNet / (1 + vat)")
print()
print(f"{'CODE':<10} {'NAME':<45} {'OLD net':>9}  {'VAT':>5}  {'NEW net':>9}  ('GROSS' shown = OLD net = Excel)")
print("-" * 110)
for r in rows:
    cur_net = float(r.get("priceNet") or 0)
    no_vat = bool(r.get("noVat"))
    vat = 0.0 if no_vat else float(r.get("vatRate") or 0.25)
    new_net = round(cur_net / (1 + vat), 4)
    print(f"{r['code']:<10} {r['name'][:43]:<45} {cur_net:>9.2f}  {vat*100:>4.0f}%  {new_net:>9.4f}")
    ops.append(UpdateOne({"_id": r["_id"]}, {"$set": {"priceNet": new_net}}))

print()
print(f"Planned bulk_write: {len(ops)} updates")

if not apply:
    print("DRY RUN — re-run with --apply to commit.")
    sys.exit(0)

if ops:
    res = coll.bulk_write(ops, ordered=False)
    print(f"matched: {res.matched_count}  modified: {res.modified_count}")

client.close()
