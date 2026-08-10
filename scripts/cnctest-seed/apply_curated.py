#!/usr/bin/env python3
"""
Apply the hand-curated pricebook → DB mapping. NO fuzzy matching.

For each entry in curated_map.json["matches"]:
  - Look up the DB product by current code
  - Look up the supplier price by Excel code
  - SET Product.priceNet = supplier price
  - SET Product.priceCurrency = supplier currency
  - SET Product.code = excel_code  (overwrite — supplier is source of truth)

For entries in name_match_no_rename:
  - Find the Excel row by name substring (case-insensitive)
  - Look up the DB product by db_code
  - Update priceNet + priceCurrency only (no code rename, since Excel had no code)

Safety:
  - Dry run by default. Pass --apply to write.
  - Collision check: refuse to rename if the new code already exists on a
    DIFFERENT product (would violate the unique index).
"""
import json
import os
import sys

from pymongo import MongoClient, UpdateOne
from bson import ObjectId

HERE = os.path.dirname(os.path.abspath(__file__))
PRICEBOOK = os.path.join(HERE, "pricebook.json")
PRODUCTS = os.path.join(HERE, "products.json")
CURATED = os.path.join(HERE, "curated_map.json")
MONGO_URI = os.environ.get("CNCTEST_MONGO_URI") or sys.exit(
    "Set CNCTEST_MONGO_URI env var to the Atlas connection string for the CNCtest DB.\n"
    "Example: export CNCTEST_MONGO_URI='mongodb+srv://<user>:<pw>@cluster0...../CNCtest?retryWrites=true'"
)


def main():
    apply = "--apply" in sys.argv
    with open(PRICEBOOK) as f:
        pb = json.load(f)
    with open(PRODUCTS) as f:
        products = json.load(f)
    with open(CURATED) as f:
        curated = json.load(f)

    # Index everything
    excel_by_code = {}        # excel_code → first row with that code
    for row in pb["eur"] + pb["dkk"]:
        excel_by_code.setdefault(row["code"], row)
    db_by_code = {p["code"]: p for p in products}

    plan = []   # list of (excel_code_or_None, db_product, new_code_or_None, new_price, new_currency, note)
    errors = []

    # 1) Code-based matches
    for excel_code, info in curated["matches"].items():
        db_code = info["db_code"]
        note = info.get("note", "")
        if excel_code not in excel_by_code:
            errors.append(f"Excel code not found in pricebook: {excel_code}")
            continue
        if db_code not in db_by_code:
            errors.append(f"DB code not found: {db_code} (curated for excel {excel_code})")
            continue
        ex_row = excel_by_code[excel_code]
        db_prod = db_by_code[db_code]
        # Collision check on rename
        new_code = excel_code if excel_code != db_code else None
        if new_code and new_code in db_by_code and db_by_code[new_code]["_id"] != db_prod["_id"]:
            errors.append(f"COLLISION: rename {db_code}→{new_code} clashes with existing DB product '{db_by_code[new_code]['name']}'")
            continue
        plan.append((excel_code, db_prod, new_code, ex_row["priceNet"], ex_row["priceCurrency"], note))

    # 2) Name-only matches (no Excel code, so no rename)
    excel_rows = pb["eur"] + pb["dkk"]
    for entry in curated.get("name_match_no_rename", []):
        needle = entry["excel_name_contains"].lower()
        db_code = entry["db_code"]
        note = entry.get("note", "")
        if db_code not in db_by_code:
            errors.append(f"DB code not found: {db_code} (name-match for {needle!r})")
            continue
        match = next((r for r in excel_rows if needle in r["name"].lower()), None)
        if match is None:
            errors.append(f"Name not found in Excel: {needle!r}")
            continue
        plan.append((None, db_by_code[db_code], None, match["priceNet"], match["priceCurrency"], f"{note} | matched Excel: {match['name']}"))

    # Report
    print(f"Planned updates: {len(plan)}")
    print(f"Errors:          {len(errors)}")
    print()
    print(f"{'EXCEL':<10} {'DB CODE':<10} {'NEW CODE':<10} {'PRICE':>10}  {'NOTE'}")
    print("-" * 110)
    for ex, db_p, new_code, price, cur, note in sorted(plan, key=lambda x: (x[4], x[3])):
        ex_disp = ex or "(name)"
        new_disp = new_code or "(keep)"
        cur_disp = f"{price:>7.2f} {cur}"
        old_price = f"{db_p.get('priceNet') or 0:.2f} {db_p.get('priceCurrency') or ''}".strip()
        print(f"{ex_disp:<10} {db_p['code']:<10} {new_disp:<10} {cur_disp}  | was [{old_price:<10}] | {db_p['name'][:40]:<40} | {note}")
    if errors:
        print()
        print("=== ERRORS ===")
        for e in errors:
            print("  " + e)

    if not apply:
        print()
        print("DRY RUN — re-run with --apply to commit.")
        return

    if errors:
        print()
        print("Refusing to apply because of errors above.")
        sys.exit(1)

    client = MongoClient(MONGO_URI)
    coll = client["CNCtest"]["products"]
    ops = []
    for ex, db_p, new_code, price, cur, _ in plan:
        set_fields = {"priceNet": float(price), "priceCurrency": cur}
        if new_code:
            set_fields["code"] = new_code
        ops.append(UpdateOne({"_id": ObjectId(db_p["_id"])}, {"$set": set_fields}))
    if ops:
        res = coll.bulk_write(ops, ordered=False)
        print()
        print(f"matched: {res.matched_count}  modified: {res.modified_count}")
    client.close()


if __name__ == "__main__":
    main()
