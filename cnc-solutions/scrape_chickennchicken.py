"""
Chicken N Chicken — full menu scraper via chickennchicken.dk partnerapi.
Fetches categories, items, addons, allergens — downloads ALL images
(menu items + addon options) and uploads to Cloudinary.
Merges with existing yammi.dk scrape data if available.
Outputs a single unified full-menu.json with Cloudinary URLs everywhere.
"""

from __future__ import annotations

import json
import re
import time
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

import cloudinary
import cloudinary.uploader
import requests

# ── Config ────────────────────────────────────────────────────────────────────

API_BASE = "https://yammi.dk/partnerapi"
API_TOKEN = (
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9."
    "eyJpc3MiOiJ3d3cueWFtbWkuZGsiLCJzdWIiOjMsImF1ZCI6Imh0dHBzOi8v"
    "Y2hpY2tlbm5jaGlja2VuLmRrIiwiaWF0IjoxNzE3NzkxOTM2fQ."
    "WW3N11hsGcaKxkbwZ0vsVNCf5nibKT1L5y7Nbeuf1_k"
)

CLOUDINARY_CLOUD_NAME = "dtcjxk8si"
CLOUDINARY_API_KEY    = "327179765556728"
CLOUDINARY_API_SECRET = "J05WLti2g_12vdN5L1ARA7KkED8"

BASE_DIR = Path(__file__).parent / "menu-data"
IMG_DIR  = BASE_DIR / "images"

for d in [BASE_DIR, IMG_DIR]:
    d.mkdir(parents=True, exist_ok=True)

cloudinary.config(
    cloud_name=CLOUDINARY_CLOUD_NAME,
    api_key=CLOUDINARY_API_KEY,
    api_secret=CLOUDINARY_API_SECRET,
    secure=True,
)

SESSION = requests.Session()
SESSION.headers.update({
    "Authorization": f"Bearer {API_TOKEN}",
    "User-Agent": (
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/122.0.0.0 Safari/537.36"
    ),
})

# ── Helpers ───────────────────────────────────────────────────────────────────

def slugify(text: str) -> str:
    text = text.lower().strip()
    text = re.sub(r"[åä]", "a", text)
    text = re.sub(r"[öø]", "o", text)
    text = re.sub(r"[æ]", "ae", text)
    text = re.sub(r"[éèê]", "e", text)
    text = re.sub(r"[^a-z0-9]+", "-", text)
    return text.strip("-")


def log(msg: str):
    print(msg, flush=True)


def api_post(endpoint: str, data: dict | None = None):
    r = SESSION.post(f"{API_BASE}/{endpoint}", data=data or {}, timeout=20)
    r.raise_for_status()
    return r.json()


# ── Image handling ────────────────────────────────────────────────────────────

# Global manifest: original URL → Cloudinary URL
# Pre-load existing manifest so we skip already-uploaded images
MANIFEST_PATH = BASE_DIR / "images-manifest.json"
if MANIFEST_PATH.exists():
    images_manifest: dict[str, str] = json.loads(
        MANIFEST_PATH.read_text(encoding="utf-8")
    )
    log(f"Loaded existing manifest: {len(images_manifest)} entries")
else:
    images_manifest: dict[str, str] = {}


def download_image(url: str, dest: Path) -> bool:
    if not url:
        return False
    if dest.exists() and dest.stat().st_size > 0:
        return True
    try:
        r = requests.get(url, timeout=15, headers={
            "User-Agent": SESSION.headers["User-Agent"]
        })
        r.raise_for_status()
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(r.content)
        return True
    except Exception as e:
        log(f"    Download failed ({url[:80]}): {e}")
        return False


def upload_to_cloudinary(local_path: Path, public_id: str) -> str:
    try:
        result = cloudinary.uploader.upload(
            str(local_path),
            public_id=public_id,
            overwrite=True,
            resource_type="image",
        )
        return result["secure_url"]
    except Exception as e:
        log(f"    Cloudinary upload failed ({local_path.name}): {e}")
        return ""


def ensure_image_on_cloudinary(url: str, folder: str, name: str) -> str:
    """Download image if needed, upload to Cloudinary, return Cloudinary URL."""
    if not url:
        return ""

    # Already uploaded?
    if url in images_manifest:
        return images_manifest[url]

    # Also check https variant
    alt = url.replace("http://", "https://")
    if alt in images_manifest:
        images_manifest[url] = images_manifest[alt]
        return images_manifest[alt]

    ext = Path(urlparse(url).path).suffix or ".jpg"
    slug = slugify(name) or "img"
    local_path = IMG_DIR / folder / f"{slug}{ext}"

    if not download_image(url, local_path):
        return ""

    public_id = f"cnc-menu/{folder}/{slug}"
    cdn_url = upload_to_cloudinary(local_path, public_id)
    if cdn_url:
        images_manifest[url] = cdn_url
    return cdn_url


# ── Step 1: Fetch full menu ──────────────────────────────────────────────────

def fetch_store_menu():
    log("[1/4] Fetching store menu…")
    resp = api_post("geStoreMenu", {"currency_code": ""})
    data = resp["details"]["data"]
    cats = data["category"]
    items = data["items"]
    log(f"  {len(cats)} categories, {len(items)} items")
    return cats, items


# ── Step 2: Fetch addons + allergens per item ────────────────────────────────

def fetch_item_details(item_uuid: str, cat_id: int):
    """Returns (addon_groups, allergens) for one item."""
    try:
        resp = api_post("getMenuItem", {
            "cat_id": cat_id,
            "item_uuid": item_uuid,
            "currency_code": "",
        })
    except Exception as e:
        log(f"    getMenuItem error: {e}")
        return [], []

    if resp.get("code") != 1:
        return [], []

    inner = resp["details"]["data"]
    addons_raw = inner.get("addons", {})
    addon_items_raw = inner.get("addon_items", {})

    # Parse addon groups
    subcat_map = {}
    for _key, val in addons_raw.items():
        if isinstance(val, dict):
            first_v = next(iter(val.values()), {})
            if isinstance(first_v, dict) and "subcat_id" in first_v:
                subcat_map.update(val)
            elif "subcategory_name" in val:
                subcat_map[_key] = val

    groups = []
    for _sid, subcat in subcat_map.items():
        if not isinstance(subcat, dict) or "subcategory_name" not in subcat:
            continue

        options = []
        for sub_item_id in subcat.get("sub_items", []):
            opt = (
                addon_items_raw.get(str(sub_item_id))
                or addon_items_raw.get(sub_item_id)
            )
            if not opt:
                continue
            options.append({
                "name": str(opt.get("sub_item_name", "")).strip(),
                "description": str(opt.get("item_description", "") or "").strip(),
                "price": float(opt.get("price") or opt.get("original_price") or 0),
                "currency": "DKK",
                "image_original": str(opt.get("url_image", "") or "").strip(),
                "image_cloudinary": "",
            })

        groups.append({
            "name": subcat["subcategory_name"].strip(),
            "description": str(
                subcat.get("subcategory_description", "") or ""
            ).strip(),
            "selection": subcat.get("multi_option", "multiple"),
            "min": int(subcat.get("multi_option_min") or 0),
            "max": int(subcat.get("multi_option_value") or 0),
            "required": bool(int(subcat.get("require_addon") or 0)),
            "options": options,
        })

    # Allergens
    allergens = []
    item_info = inner.get("items", {})
    item_id = item_info.get("item_id")
    if item_id:
        try:
            aresp = api_post("getAllergenInfo", {"item_id": item_id})
            if aresp.get("code") == 1:
                adata = aresp.get("details") or {}
                alist = adata.get("allergen_data") or adata.get("allergen") or []
                if isinstance(alist, list):
                    allergens = [
                        str(a.get("allergen_name", a) if isinstance(a, dict) else a).strip()
                        for a in alist if a
                    ]
        except Exception:
            pass

    return groups, allergens


# ── Step 3: Build normalised menu ────────────────────────────────────────────

def build_menu(raw_cats, items_dict):
    log("\n[2/4] Fetching addons + allergens per item…")
    categories = []
    total_items = sum(len(c.get("items", [])) for c in raw_cats)
    done = 0
    addon_count = 0

    for i, cat in enumerate(raw_cats):
        cat_name = str(cat.get("category_name", f"Category {i+1}")).strip()
        cat_slug = cat.get("category_uiid") or slugify(cat_name)
        cat_id = cat.get("cat_id")
        cat_desc = str(cat.get("category_description", "") or "").strip()
        cat_image = str(cat.get("url_image", "") or "").strip()

        items = []
        for item_id in cat.get("items", []):
            item = (
                items_dict.get(item_id)
                or items_dict.get(str(item_id))
            )
            if not item:
                continue

            done += 1
            item_name = str(item.get("item_name", "")).strip()
            desc = str(item.get("item_description", "") or "").strip()
            # Strip HTML tags from description
            desc = re.sub(r"<[^>]+>", "", desc).strip()
            img_url = str(item.get("url_image", "") or "").strip()

            price = float(item.get("lowest_price_raw") or 0)
            variants = []
            for pe in item.get("price", []):
                size_name = str(pe.get("size_name", "") or "").strip()
                p = float(pe.get("price") or pe.get("final_price_raw") or 0)
                if size_name:
                    variants.append({"name": size_name, "price": p})
                elif not price and p:
                    price = p

            # Fetch addons + allergens if they exist
            has_addons = int(item.get("total_addon", 0)) > 0
            item_uuid = item.get("item_uuid", "")
            addons, allergens = [], []

            if has_addons and item_uuid and cat_id:
                addons, allergens = fetch_item_details(item_uuid, cat_id)
                if addons:
                    addon_count += 1
                time.sleep(0.12)

            status = f"addons={len(addons)}" if addons else ""
            log(f"  [{done}/{total_items}] {item_name} {status}")

            items.append({
                "name": item_name,
                "description": desc,
                "price": price,
                "currency": "DKK",
                "image_original": img_url,
                "image_cloudinary": "",
                "variants": variants,
                "addons": addons,
                "allergens": allergens,
            })

        categories.append({
            "name": cat_name,
            "slug": cat_slug,
            "description": cat_desc,
            "image_original": cat_image,
            "sort_order": i + 1,
            "items": items,
        })

    log(f"\n  Items: {done}, with addons: {addon_count}")
    return categories


# ── Step 4: Upload all images ────────────────────────────────────────────────

def upload_all_images(categories):
    log("\n[3/4] Uploading all images to Cloudinary…")
    uploaded = 0
    skipped = 0
    failed = 0

    for cat in categories:
        cat_slug = cat["slug"]

        for item in cat["items"]:
            # Item image
            img_url = item.get("image_original", "")
            if img_url:
                cdn = ensure_image_on_cloudinary(
                    img_url, cat_slug, item["name"]
                )
                if cdn:
                    item["image_cloudinary"] = cdn
                    if cdn == images_manifest.get(img_url):
                        skipped += 1
                    else:
                        uploaded += 1
                        log(f"    ✓ {item['name']}")
                else:
                    failed += 1

            # Addon option images
            for group in item.get("addons", []):
                for opt in group.get("options", []):
                    opt_url = opt.get("image_original", "")
                    if opt_url:
                        cdn = ensure_image_on_cloudinary(
                            opt_url, f"{cat_slug}/addons", opt["name"]
                        )
                        if cdn:
                            opt["image_cloudinary"] = cdn
                            if cdn == images_manifest.get(opt_url):
                                skipped += 1
                            else:
                                uploaded += 1
                                log(f"    ✓ addon: {opt['name']}")
                        else:
                            failed += 1

    # Save manifest
    MANIFEST_PATH.write_text(
        json.dumps(images_manifest, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    log(f"\n  New uploads: {uploaded}, reused: {skipped}, failed: {failed}")
    return uploaded, skipped, failed


# ── Step 5: Save outputs ─────────────────────────────────────────────────────

def save_outputs(categories):
    log("\n[4/4] Saving JSON…")
    now = datetime.now(timezone.utc).isoformat()

    full_menu = {
        "restaurant": {
            "name": "Chicken N Chicken",
            "address": "Over Bølgen 3, st. 1, 2670 Greve",
            "phone": "+4550507179",
            "cvr": "36019336",
            "scraped_at": now,
            "sources": [
                "chickennchicken.dk (partnerapi)",
                "yammi.dk/chickennchickenwaves",
            ],
        },
        "categories": categories,
    }

    (BASE_DIR / "full-menu.json").write_text(
        json.dumps(full_menu, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    log("  Saved full-menu.json")

    cats_summary = [
        {"name": c["name"], "slug": c["slug"], "item_count": len(c["items"])}
        for c in categories
    ]
    (BASE_DIR / "categories.json").write_text(
        json.dumps(cats_summary, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    log("  Saved categories.json")

    cats_dir = BASE_DIR / "categories"
    cats_dir.mkdir(parents=True, exist_ok=True)
    for cat in categories:
        slug = cat["slug"] or "unknown"
        (cats_dir / f"{slug}.json").write_text(
            json.dumps(cat, ensure_ascii=False, indent=2), encoding="utf-8"
        )
    log(f"  Saved {len(categories)} category files")


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    log("=" * 60)
    log("  Chicken N Chicken — chickennchicken.dk menu scraper")
    log("=" * 60)

    raw_cats, items_dict = fetch_store_menu()
    categories = build_menu(raw_cats, items_dict)

    total_items = sum(len(c["items"]) for c in categories)
    if not total_items:
        log("No items found. Exiting.")
        return

    uploaded, skipped, failed = upload_all_images(categories)
    save_outputs(categories)

    print()
    print("Done!")
    print(f"  Categories: {len(categories)}")
    print(f"  Items: {total_items}")
    print(f"  Images uploaded: {uploaded}")
    print(f"  Images reused: {skipped}")
    print(f"  Images failed: {failed}")
    print(f"  Output: {BASE_DIR}/full-menu.json")


if __name__ == "__main__":
    main()
