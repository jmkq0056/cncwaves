#!/usr/bin/env python3
"""
Match pricebook.json (extracted from the supplier Excel) against existing
Products in the CNCtest MongoDB by NAME (fuzzy), then for each match:
  - overwrite Product.code with the supplier code (Excel = source of truth)
  - overwrite Product.priceNet + Product.priceCurrency

Safety:
  - Dry run by default. Pass --apply to actually write.
  - Token-set Jaccard + difflib ratio combined; threshold 0.55 by default.
  - Refuses to apply a code rename if the target code is already in use by
    a DIFFERENT product (would violate the unique index).
  - Refuses to update the same DB product twice in a single run.
  - Handles duplicate Excel codes (e.g. "Price Variant A" / "B" on same code)
    by keeping the first occurrence and reporting the rest as conflicts.

Usage:
  python3 apply_pricebook.py            # dry-run report
  python3 apply_pricebook.py --apply    # actually update Mongo
"""
import json
import os
import re
import sys
from collections import defaultdict
from difflib import SequenceMatcher

from pymongo import MongoClient, UpdateOne

HERE = os.path.dirname(os.path.abspath(__file__))
PRICEBOOK = os.path.join(HERE, "pricebook.json")
PRODUCTS = os.path.join(HERE, "products.json")
MONGO_URI = os.environ.get("CNCTEST_MONGO_URI") or sys.exit(
    "Set CNCTEST_MONGO_URI env var to the Atlas connection string for the CNCtest DB.\n"
    "Example: export CNCTEST_MONGO_URI='mongodb+srv://<user>:<pw>@cluster0...../CNCtest?retryWrites=true'"
)

THRESHOLD = 0.55  # combined-score floor for an accepted match

# ── Normalisation ─────────────────────────────────────────────────────
# DB names look like "Drumstick - S20K W10CT". We strip the " - Sxx Wxx"
# suffix because Excel names don't have it. Also collapse units, drop
# punctuation, lowercase.
_SUFFIX_RE = re.compile(r"\s*-\s*S\d+[A-Z]*\s*W\d+[A-Z]*\s*$", re.IGNORECASE)
_QTY_RE = re.compile(r"\b\d+\s*(?:kg|g|ml|cl|l|pcs?|pz|stk)\b", re.IGNORECASE)
_PUNCT_RE = re.compile(r"[^\w\s]+")


def normalize(name: str) -> str:
    s = name or ""
    s = _SUFFIX_RE.sub("", s)
    s = _PUNCT_RE.sub(" ", s)
    s = s.lower()
    s = re.sub(r"\s+", " ", s).strip()
    return s


def tokens(name: str) -> set:
    n = normalize(name)
    out = set()
    for t in n.split():
        if len(t) < 2:
            continue
        # drop pure numbers — they're often packaging counts
        if t.isdigit():
            continue
        out.add(t)
    return out


def score(a: str, b: str) -> float:
    na, nb = normalize(a), normalize(b)
    ta, tb = tokens(a), tokens(b)
    if not ta or not tb:
        return 0.0
    jacc = len(ta & tb) / len(ta | tb)
    seq = SequenceMatcher(None, na, nb).ratio()
    # weighted combination
    return 0.6 * jacc + 0.4 * seq


def main():
    apply = "--apply" in sys.argv

    with open(PRICEBOOK) as f:
        pb = json.load(f)
    excel_rows = pb["eur"] + pb["dkk"]
    with open(PRODUCTS) as f:
        products = json.load(f)

    # Detect duplicate Excel codes — keep first, report rest
    seen_excel_codes = {}
    duplicate_excel = []
    deduped_excel = []
    for r in excel_rows:
        if r["code"] in seen_excel_codes:
            duplicate_excel.append(r)
        else:
            seen_excel_codes[r["code"]] = r
            deduped_excel.append(r)

    # Existing DB codes set (used for collision check on rename)
    db_code_to_id = {p["code"]: p["_id"] for p in products}
    db_id_to_product = {p["_id"]: p for p in products}

    # For each Excel row, find best match in DB by name
    matches = []        # accepted
    weak = []           # below threshold
    target_collisions = []  # rename would collide
    db_taken = set()    # DB product ids already claimed in this run

    for x in deduped_excel:
        best = None
        best_s = 0.0
        for p in products:
            s = score(x["name"], p["name"])
            if s > best_s:
                best_s = s
                best = p

        if best is None or best_s < THRESHOLD:
            weak.append({"excel": x, "best": best, "score": best_s})
            continue

        # Collision check: would the new code clash with a different DB product?
        existing_owner = db_code_to_id.get(x["code"])
        if existing_owner is not None and existing_owner != best["_id"]:
            target_collisions.append({"excel": x, "best": best, "score": best_s,
                                       "code_taken_by": db_id_to_product[existing_owner]["name"]})
            continue

        # Don't claim the same DB row twice
        if best["_id"] in db_taken:
            weak.append({"excel": x, "best": best, "score": best_s,
                         "reason": "DB product already matched by an earlier Excel row"})
            continue
        db_taken.add(best["_id"])
        matches.append({"excel": x, "best": best, "score": best_s})

    # ── Report ─────────────────────────────────────────────────────────
    print(f"Excel rows total          : {len(excel_rows)}")
    print(f"  unique by code          : {len(deduped_excel)}")
    print(f"  duplicate codes skipped : {len(duplicate_excel)}")
    print(f"DB products total         : {len(products)}")
    print(f"Threshold                 : {THRESHOLD}")
    print()
    print(f"=== ACCEPTED MATCHES ({len(matches)}) ===")
    for m in sorted(matches, key=lambda x: -x["score"]):
        e, b = m["excel"], m["best"]
        rename = "RENAME" if e["code"] != b["code"] else "keep"
        print(f"  [{m['score']:.2f}] {b['code']} → {e['code']:<12} {rename:<6} | {e['priceNet']:>8.2f} {e['priceCurrency']} | "
              f"{e['name'][:50]:<50} ← {b['name'][:50]}")
    print()
    print(f"=== UNMATCHED / WEAK ({len(weak)}) ===")
    for w in sorted(weak, key=lambda x: -x["score"]):
        e = w["excel"]
        best_name = w["best"]["name"] if w["best"] else "<none>"
        reason = w.get("reason", "")
        print(f"  [{w['score']:.2f}] {e['code']:<12} | {e['priceNet']:>8.2f} {e['priceCurrency']} | "
              f"{e['name'][:50]:<50} → best DB: {best_name[:50]}  {reason}")
    if target_collisions:
        print()
        print(f"=== CODE COLLISIONS ({len(target_collisions)}) ===")
        for c in target_collisions:
            print(f"  Excel {c['excel']['code']} would rename {c['best']['name']!r} but code is already on {c['code_taken_by']!r}")
    if duplicate_excel:
        print()
        print(f"=== DUPLICATE EXCEL CODES SKIPPED ({len(duplicate_excel)}) ===")
        for d in duplicate_excel:
            print(f"  {d['code']:<12} | {d['priceNet']:>8.2f} {d['priceCurrency']} | {d['name']}")

    # ── Apply ──────────────────────────────────────────────────────────
    if not apply:
        print()
        print("DRY RUN — re-run with --apply to commit updates.")
        return

    print()
    print(f"=== APPLYING {len(matches)} updates to MongoDB ===")
    from bson import ObjectId
    client = MongoClient(MONGO_URI)
    coll = client["CNCtest"]["products"]
    ops = []
    for m in matches:
        e, b = m["excel"], m["best"]
        set_fields = {
            "priceNet": float(e["priceNet"]),
            "priceCurrency": e["priceCurrency"],
        }
        if e["code"] != b["code"]:
            set_fields["code"] = e["code"]
        ops.append(UpdateOne({"_id": ObjectId(b["_id"])}, {"$set": set_fields}))
    if ops:
        res = coll.bulk_write(ops, ordered=False)
        print(f"matched: {res.matched_count}  modified: {res.modified_count}")
    else:
        print("No matches to apply.")
    client.close()


if __name__ == "__main__":
    main()
