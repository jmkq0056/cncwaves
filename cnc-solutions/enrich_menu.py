"""
Enrich full-menu.json with addon groups and allergen data from yammi.dk APIs.
Calls /getMenuItem per item to get addon subcategories + option items with prices.
Calls /getAllergenInfo per item (they have no allergen data entered, confirms it).
Updates full-menu.json, categories.json, and each category JSON in place.
"""

import asyncio
import json
import time
from pathlib import Path

import requests
from playwright.async_api import async_playwright

BASE_URL  = "http://www.yammi.dk"
API_BASE  = f"{BASE_URL}/api"
BASE_DIR  = Path(__file__).parent / "menu-data"
MENU_FILE = BASE_DIR / "full-menu.json"

# ── Helpers ───────────────────────────────────────────────────────────────────

def log(msg):
    print(msg, flush=True)


# ── Step 1: Get CSRF token + session cookies from browser ─────────────────────

async def get_browser_session():
    async with async_playwright() as pw:
        browser = await pw.chromium.launch(headless=True)
        page = await browser.new_page()
        log("Opening page to get session cookies + CSRF token…")
        await page.goto(f"{BASE_URL}/chickennchickenwaves",
                        wait_until="networkidle", timeout=60_000)
        csrf = await page.evaluate(
            "document.querySelector('meta[name=YII_CSRF_TOKEN]')?.content || ''"
        )
        cookies = await page.context.cookies()
        await browser.close()
    log(f"  CSRF: {csrf[:20]}…  Cookies: {len(cookies)}")
    return csrf, cookies


def make_session(cookies):
    session = requests.Session()
    for c in cookies:
        session.cookies.set(c["name"], c["value"], domain=c.get("domain", ""))
    session.headers.update({
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36",
        "Referer": f"{BASE_URL}/chickennchickenwaves",
        "X-Requested-With": "XMLHttpRequest",
    })
    return session


# ── Step 2: Fetch addon data for one item ─────────────────────────────────────

def fetch_item_addons(session, csrf, merchant_id, item_uuid, cat_id):
    """
    Call /getMenuItem → parse addon subcategories and option items.
    Returns list of addon groups in our schema, or [] on failure.
    """
    try:
        r = session.post(f"{API_BASE}/getMenuItem", data={
            "YII_CSRF_TOKEN": csrf,
            "merchant_id": merchant_id,
            "item_uuid": item_uuid,
            "cat_id": cat_id,
            "currency_code": "",
            "cart_uuid": "",
        }, timeout=15)
        d = r.json()
    except Exception as e:
        log(f"    getMenuItem error: {e}")
        return []

    if d.get("code") != 1:
        return []

    inner = d["details"]["data"]
    addons_raw    = inner.get("addons", {})      # {item_id: {subcat_id: subcat_obj}}
    addon_items   = inner.get("addon_items", {}) # {sub_item_id: item_obj}
    item_addons   = inner.get("items", {}).get("item_addons", {})  # {item_id: [subcat_ids]}

    groups = []

    # addons_raw may be keyed by item_id at top level
    subcat_map = {}
    for key, val in addons_raw.items():
        if isinstance(val, dict):
            # Check if it's {subcat_id: subcat_obj} directly or nested
            first_v = next(iter(val.values()), {})
            if "subcat_id" in first_v:
                subcat_map.update(val)
            elif "subcategory_name" in val:
                subcat_map[key] = val

    for subcat_id, subcat in subcat_map.items():
        if not isinstance(subcat, dict) or "subcategory_name" not in subcat:
            continue

        options = []
        for sid in subcat.get("sub_items", []):
            opt = addon_items.get(str(sid)) or addon_items.get(int(sid) if str(sid).isdigit() else sid)
            if not opt:
                continue
            options.append({
                "name": str(opt.get("sub_item_name", "")).strip(),
                "description": str(opt.get("item_description", "") or "").strip(),
                "price": float(opt.get("price") or opt.get("original_price") or 0),
                "currency": "DKK",
                "image_original": str(opt.get("url_image", "") or "").strip(),
            })

        groups.append({
            "name": subcat["subcategory_name"].strip(),
            "description": str(subcat.get("subcategory_description", "") or "").strip(),
            "selection": subcat.get("multi_option", "multiple"),
            "min": int(subcat.get("multi_option_min") or 0),
            "max": int(subcat.get("multi_option_value") or 0),
            "required": bool(int(subcat.get("require_addon") or 0)),
            "options": options,
        })

    return groups


def fetch_allergens(session, csrf, merchant_id, item_id):
    """Call /getAllergenInfo. Returns list of allergen names, or [] if none."""
    try:
        r = session.post(f"{API_BASE}/getAllergenInfo", data={
            "YII_CSRF_TOKEN": csrf,
            "item_id": item_id,
            "merchant_id": merchant_id,
        }, timeout=10)
        d = r.json()
    except Exception as e:
        return []

    if d.get("code") != 1:
        return []

    details = d.get("details") or {}
    allergen_data = details.get("allergen_data") or details.get("allergen") or []
    if isinstance(allergen_data, list):
        return [str(a.get("allergen_name", a) if isinstance(a, dict) else a).strip()
                for a in allergen_data if a]
    return []


# ── Step 3: Main enrichment loop ──────────────────────────────────────────────

async def main():
    log("=" * 60)
    log("  Menu enrichment — addons + allergens")
    log("=" * 60)

    csrf, cookies = await get_browser_session()
    session = make_session(cookies)

    menu = json.loads(MENU_FILE.read_text(encoding="utf-8"))
    cats_data = menu["categories"]

    # Build fast lookup: category slug → cat_id (from raw API captures)
    raw_file = BASE_DIR / "raw_api_captures.json"
    raw = json.loads(raw_file.read_text(encoding="utf-8"))
    raw_cats = raw["http://www.yammi.dk/api/geStoreMenu"]["details"]["data"]["category"]
    merchant_id = raw["http://www.yammi.dk/api/geStoreMenu"]["details"]["merchant_id"]
    raw_items = raw["http://www.yammi.dk/api/geStoreMenu"]["details"]["data"]["items"]

    slug_to_catid = {c["category_uiid"]: c["cat_id"] for c in raw_cats}
    # Also map item_name → item metadata
    name_to_raw = {v["item_name"]: v for v in raw_items.values()}

    total_items = sum(len(c["items"]) for c in cats_data)
    items_done  = 0
    addon_count = 0
    allergen_count = 0

    for cat in cats_data:
        cat_id = slug_to_catid.get(cat["slug"])
        if not cat_id:
            # Fallback: match by name
            for rc in raw_cats:
                if rc["category_name"].lower() == cat["name"].lower():
                    cat_id = rc["cat_id"]
                    break

        for item in cat["items"]:
            items_done += 1
            raw_item = name_to_raw.get(item["name"])
            if not raw_item:
                log(f"  [{items_done}/{total_items}] {item['name']} — no raw data, skipping")
                continue

            has_addons   = int(raw_item.get("total_addon", 0)) > 0
            has_allergen = int(raw_item.get("total_allergens", 0)) > 0
            item_uuid    = raw_item["item_uuid"]
            item_id      = raw_item["item_id"]

            log_parts = [f"  [{items_done}/{total_items}] {item['name']}"]

            # ── Addons ──────────────────────────────────────────────
            if has_addons:
                groups = fetch_item_addons(session, csrf, merchant_id, item_uuid, cat_id)
                if groups:
                    item["addons"] = groups
                    n_opts = sum(len(g["options"]) for g in groups)
                    log_parts.append(f"addons={len(groups)} groups, {n_opts} options")
                    addon_count += 1
                else:
                    log_parts.append("addons=0 (API returned none)")
                time.sleep(0.15)  # gentle rate limit

            # ── Allergens ──────────────────────────────────────────
            allergens = fetch_allergens(session, csrf, merchant_id, item_id)
            if allergens:
                item["allergens"] = allergens
                log_parts.append(f"allergens={allergens}")
                allergen_count += 1
            else:
                item["allergens"] = []

            log(" | ".join(log_parts))

    # ── Save outputs ──────────────────────────────────────────────────────────
    log("\nSaving enriched JSON files…")

    MENU_FILE.write_text(
        json.dumps(menu, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    log("  Updated full-menu.json")

    cats_summary = [
        {"name": c["name"], "slug": c["slug"], "item_count": len(c["items"])}
        for c in cats_data
    ]
    (BASE_DIR / "categories.json").write_text(
        json.dumps(cats_summary, ensure_ascii=False, indent=2), encoding="utf-8"
    )

    cats_dir = BASE_DIR / "categories"
    for cat in cats_data:
        slug = cat["slug"] or "unknown"
        (cats_dir / f"{slug}.json").write_text(
            json.dumps(cat, ensure_ascii=False, indent=2), encoding="utf-8"
        )
    log(f"  Updated {len(cats_data)} category files")

    print()
    print("✅ Enrichment complete!")
    print(f"🍔 Items processed   : {items_done}")
    print(f"➕ Items with addons  : {addon_count}")
    print(f"⚠️  Items with allergens: {allergen_count}  (yammi has no allergen data entered)")


if __name__ == "__main__":
    asyncio.run(main())
