"""
Chicken N Chicken menu scraper — yammi.dk/chickennchickenwaves
Intercepts Karenderia API calls via Playwright, downloads images, uploads to Cloudinary.
"""

import asyncio
import json
import os
import re
import sys
import time
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

import cloudinary
import cloudinary.uploader
import requests
from playwright.async_api import async_playwright

# ── Config ────────────────────────────────────────────────────────────────────

RESTAURANT_URL = "http://www.yammi.dk/chickennchickenwaves"

CLOUDINARY_CLOUD_NAME = "dtcjxk8si"
CLOUDINARY_API_KEY    = "327179765556728"
CLOUDINARY_API_SECRET = "J05WLti2g_12vdN5L1ARA7KkED8"

BASE_DIR   = Path(__file__).parent / "menu-data"
IMG_DIR    = BASE_DIR / "images"
CATS_DIR   = BASE_DIR / "categories"
SCREENSHOTS_DIR = BASE_DIR / "screenshots"

for d in [BASE_DIR, IMG_DIR, CATS_DIR, SCREENSHOTS_DIR]:
    d.mkdir(parents=True, exist_ok=True)

cloudinary.config(
    cloud_name=CLOUDINARY_CLOUD_NAME,
    api_key=CLOUDINARY_API_KEY,
    api_secret=CLOUDINARY_API_SECRET,
    secure=True,
)

HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/122.0.0.0 Safari/537.36"
    )
}

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


# ── Step 1: Intercept API via Playwright ─────────────────────────────────────

async def intercept_karenderia_api():
    """
    Open the restaurant page and capture any Karenderia JSON API responses.
    Returns the raw API data dict, or None if nothing was captured.
    """
    captured = {}

    async with async_playwright() as pw:
        browser = await pw.chromium.launch(headless=True)
        ctx = await browser.new_context(
            user_agent=HEADERS["User-Agent"],
            locale="da-DK",
        )
        page = await ctx.new_page()

        async def on_response(response):
            url = response.url
            # Karenderia loads menu via URLs containing these keywords
            if any(k in url for k in [
                "menu", "category", "food", "item", "restaurant",
                "api", "ajax", "json", "get_", "load_",
            ]):
                ct = response.headers.get("content-type", "")
                if "json" in ct or "javascript" in ct:
                    try:
                        body = await response.json()
                        log(f"  [API] Captured: {url[:120]}")
                        captured[url] = body
                    except Exception:
                        pass

        page.on("response", on_response)

        log("Opening restaurant page…")
        try:
            await page.goto(RESTAURANT_URL, wait_until="networkidle", timeout=60_000)
        except Exception as e:
            log(f"  Warning: page load timed out ({e}), continuing with captured data")

        # Screenshot after initial load
        await page.screenshot(
            path=str(SCREENSHOTS_DIR / "01_initial_load.png"), full_page=True
        )
        log("  Screenshot: 01_initial_load.png")

        # Give JS a moment to fire additional requests
        await asyncio.sleep(3)

        # Scroll to trigger lazy loading
        await page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
        await asyncio.sleep(2)
        await page.evaluate("window.scrollTo(0, 0)")
        await asyncio.sleep(1)

        await page.screenshot(
            path=str(SCREENSHOTS_DIR / "02_after_scroll.png"), full_page=True
        )
        log("  Screenshot: 02_after_scroll.png")

        # Try to find and click "Schedule order" if restaurant shows closed
        try:
            schedule_btn = page.locator(
                "text=/schedule|bestil|åbn|order later/i"
            ).first
            if await schedule_btn.is_visible(timeout=3_000):
                log("  Found 'schedule order' button — clicking…")
                await schedule_btn.click()
                await asyncio.sleep(2)
        except Exception:
            pass

        # If no API data yet, wait a bit more
        if not captured:
            log("  No API data captured yet — waiting 5 more seconds…")
            await asyncio.sleep(5)

        await browser.close()

    if captured:
        log(f"  Total API responses captured: {len(captured)}")
    return captured if captured else None


# ── Step 2: Parse Karenderia API data ─────────────────────────────────────────

def find_menu_in_captures(captured):
    """
    Search captured API responses for Karenderia geStoreMenu data.
    Returns (raw_categories, items_dict) or ([], {}).
    """
    # Primary: geStoreMenu endpoint
    for url, body in captured.items():
        if "geStoreMenu" in url or "getStoreMenu" in url:
            try:
                data = body["details"]["data"]
                cats = data.get("category", [])
                items = data.get("items", {})
                if cats:
                    log(f"  Found geStoreMenu data: {len(cats)} categories, {len(items)} items")
                    return cats, items
            except Exception:
                pass

    # Fallback: any response with details.data.category
    for url, body in captured.items():
        if not isinstance(body, dict):
            continue
        try:
            data = body.get("details", {}).get("data", {})
            cats = data.get("category", [])
            items = data.get("items", {})
            if cats:
                log(f"  Found menu data in {url}: {len(cats)} categories")
                return cats, items
        except Exception:
            pass

    return [], {}


def normalise_categories(raw_categories, items_dict):
    """
    Convert Karenderia geStoreMenu structure into our standard schema.
    raw_categories: list of category dicts (with 'items' = list of item IDs)
    items_dict: dict keyed by item ID -> item object
    """
    result = []

    for i, cat in enumerate(raw_categories):
        cat_name = str(cat.get("category_name", f"Category {i+1}")).strip()
        cat_slug = cat.get("category_uiid") or slugify(cat_name)

        item_id_list = cat.get("items", [])
        items = []

        for item_id in item_id_list:
            # Items dict may have int or string keys
            item = items_dict.get(item_id) or items_dict.get(str(item_id)) or items_dict.get(int(item_id) if str(item_id).isdigit() else item_id)
            if not item:
                continue

            item_name = str(item.get("item_name", "")).strip()
            desc = str(item.get("item_description", "") or "").strip()
            img_original = str(item.get("url_image", "") or "").strip()

            # Price: use lowest_price_raw if available, else first price entry
            price = float(item.get("lowest_price_raw") or 0)
            price_entries = item.get("price", [])

            # Variants: price entries with a non-empty size_name
            variants = []
            for pe in price_entries:
                size_name = str(pe.get("size_name", "") or "").strip()
                p = float(pe.get("price") or pe.get("final_price_raw") or 0)
                if size_name:
                    variants.append({"name": size_name, "price": p})
                elif not price and p:
                    price = p  # use first price as base if not set

            items.append({
                "name": item_name,
                "description": desc,
                "price": price,
                "currency": "DKK",
                "image_original": img_original,
                "image_cloudinary": "",
                "variants": variants,
                "addons": [],
            })

        result.append({
            "name": cat_name,
            "slug": cat_slug,
            "sort_order": i + 1,
            "items": items,
        })

    return result


# ── Step 3: HTML scrape fallback ──────────────────────────────────────────────

async def scrape_html_fallback() -> list[dict]:
    """Scrape menu items directly from the rendered HTML as a last resort."""
    log("  Falling back to HTML scrape…")
    categories: list[dict] = []

    async with async_playwright() as pw:
        browser = await pw.chromium.launch(headless=True)
        ctx = await browser.new_context(user_agent=HEADERS["User-Agent"], locale="da-DK")
        page = await ctx.new_page()

        try:
            await page.goto(RESTAURANT_URL, wait_until="networkidle", timeout=60_000)
        except Exception:
            pass

        await asyncio.sleep(4)

        # Scroll through entire page
        for _ in range(5):
            await page.evaluate("window.scrollBy(0, window.innerHeight)")
            await asyncio.sleep(0.8)

        # Capture full HTML for inspection
        html = await page.content()
        await page.screenshot(
            path=str(SCREENSHOTS_DIR / "03_html_fallback.png"), full_page=True
        )

        from bs4 import BeautifulSoup
        soup = BeautifulSoup(html, "html.parser")

        # Save HTML for manual inspection if needed
        (BASE_DIR / "page_source.html").write_text(html, encoding="utf-8")
        log("  Saved page_source.html for inspection")

        current_cat: dict | None = None

        # Try common Karenderia selectors
        # Category headers
        cat_headers = soup.select(
            ".menu-category-header, .category-header, .food-category, "
            "[class*='category'] h2, [class*='category'] h3, "
            ".menu-section-title, .section-title"
        )
        # Item cards
        item_cards = soup.select(
            ".menu-item, .food-item, .item-card, "
            "[class*='menu-item'], [class*='food-item'], "
            ".product-card, .dish-card"
        )

        log(f"  Found {len(cat_headers)} category headers, {len(item_cards)} item cards")

        if item_cards:
            current_cat = {"name": "Menu", "slug": "menu", "sort_order": 1, "items": []}

            for card in item_cards:
                name_el = card.select_one(
                    ".item-name, .food-name, .menu-name, h4, h3, "
                    "[class*='name']:not([class*='category'])"
                )
                price_el = card.select_one(
                    ".item-price, .food-price, .price, [class*='price']"
                )
                desc_el = card.select_one(
                    ".item-desc, .food-desc, .description, p, "
                    "[class*='desc']"
                )
                img_el = card.select_one("img")

                item_name = name_el.get_text(strip=True) if name_el else ""
                price_text = price_el.get_text(strip=True) if price_el else "0"
                desc_text = desc_el.get_text(strip=True) if desc_el else ""
                img_src = ""
                if img_el:
                    img_src = img_el.get("src") or img_el.get("data-src") or ""
                    if img_src and not img_src.startswith("http"):
                        img_src = "http://www.yammi.dk" + (
                            img_src if img_src.startswith("/") else "/" + img_src
                        )

                # Parse price from text like "79 kr" or "79,00"
                price_match = re.search(r"[\d]+[,.]?[\d]*", price_text)
                price = 0.0
                if price_match:
                    try:
                        price = float(price_match.group().replace(",", "."))
                    except Exception:
                        pass

                if item_name:
                    current_cat["items"].append({
                        "name": item_name,
                        "description": desc_text,
                        "price": price,
                        "currency": "DKK",
                        "image_original": img_src,
                        "image_cloudinary": "",
                        "variants": [],
                        "addons": [],
                    })

            if current_cat["items"]:
                categories.append(current_cat)

        await browser.close()

    return categories


# ── Step 4: Download & upload images ─────────────────────────────────────────

def download_image(url: str, dest_path: Path) -> bool:
    if not url:
        return False
    if dest_path.exists():
        return True
    try:
        r = requests.get(url, headers=HEADERS, timeout=15)
        r.raise_for_status()
        dest_path.write_bytes(r.content)
        return True
    except Exception as e:
        log(f"    Download failed ({url[:60]}): {e}")
        return False


def upload_to_cloudinary(local_path: Path, public_id: str) -> str:
    try:
        result = cloudinary.uploader.upload(
            str(local_path),
            public_id=public_id,
            folder="",          # public_id already includes folder prefix
            overwrite=True,
            resource_type="image",
        )
        return result["secure_url"]
    except Exception as e:
        log(f"    Cloudinary upload failed ({local_path.name}): {e}")
        return ""


def process_images(categories):
    """Download images and upload to Cloudinary. Returns (uploaded, failed)."""
    uploaded = 0
    failed = 0
    images_manifest: dict[str, str] = {}

    session = requests.Session()
    session.headers.update(HEADERS)

    for cat in categories:
        cat_slug = cat["slug"]
        for item in cat["items"]:
            img_url = item.get("image_original", "")
            if not img_url:
                continue

            item_slug = slugify(item["name"]) or "item"
            ext = Path(urlparse(img_url).path).suffix or ".jpg"
            filename = f"{item_slug}{ext}"
            local_path = IMG_DIR / cat_slug / filename
            local_path.parent.mkdir(parents=True, exist_ok=True)

            log(f"  Image: {cat_slug}/{filename}")

            ok = download_image(img_url, local_path)
            if not ok:
                failed += 1
                continue

            public_id = f"cnc-menu/{cat_slug}/{item_slug}"
            cdnary_url = upload_to_cloudinary(local_path, public_id)

            if cdnary_url:
                item["image_cloudinary"] = cdnary_url
                images_manifest[img_url] = cdnary_url
                uploaded += 1
                log(f"    ✓ {cdnary_url}")
            else:
                failed += 1

    # Save manifest
    manifest_path = BASE_DIR / "images-manifest.json"
    manifest_path.write_text(
        json.dumps(images_manifest, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    log(f"  Saved images-manifest.json ({len(images_manifest)} entries)")

    return uploaded, failed


# ── Step 5: Save JSON ─────────────────────────────────────────────────────────

def save_json_outputs(categories: list[dict]):
    now = datetime.now(timezone.utc).isoformat()

    full_menu = {
        "restaurant": {
            "name": "Chicken N Chicken",
            "address": "Over Bølgen 3, st. 1, 2670 Greve",
            "phone": "+4550507179",
            "cvr": "36019336",
            "scraped_at": now,
            "source": "yammi.dk/chickennchickenwaves",
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

    for cat in categories:
        slug = cat["slug"] or "unknown"
        path = CATS_DIR / f"{slug}.json"
        path.write_text(
            json.dumps(cat, ensure_ascii=False, indent=2), encoding="utf-8"
        )
    log(f"  Saved {len(categories)} category files")


# ── Main ──────────────────────────────────────────────────────────────────────

async def main():
    log("=" * 60)
    log("  Chicken N Chicken — yammi.dk menu scraper")
    log("=" * 60)

    # ── Phase 1: intercept API ──
    log("\n[1/4] Opening page & intercepting API calls…")
    captured = await intercept_karenderia_api()

    categories = []

    if captured:
        log(f"\n[2/4] Parsing {len(captured)} captured API response(s)…")
        raw_cats, items_dict = find_menu_in_captures(captured)

        if raw_cats:
            categories = normalise_categories(raw_cats, items_dict)
            log(f"  Parsed {len(categories)} categories from API")
        else:
            log("  API data captured but no category/menu structure found")
            log("  Saving raw API responses for inspection…")
            (BASE_DIR / "raw_api_captures.json").write_text(
                json.dumps(
                    {k: v for k, v in list(captured.items())},
                    ensure_ascii=False, indent=2, default=str
                ),
                encoding="utf-8",
            )
    else:
        log("  No API data captured")

    # ── Phase 2: HTML fallback if still no data ──
    if not categories:
        log("\n[2/4] Trying HTML scrape fallback…")
        categories = await scrape_html_fallback()
        log(f"  HTML fallback yielded {len(categories)} categories")

    if not categories:
        log("\n❌ Could not extract any menu data.")
        log("   Check screenshots/ and page_source.html in menu-data/ for clues.")
        sys.exit(1)

    total_items = sum(len(c["items"]) for c in categories)
    log(f"\n  Categories: {len(categories)}, Items: {total_items}")

    # ── Phase 3: images ──
    log("\n[3/4] Downloading & uploading images…")
    uploaded, failed = process_images(categories)

    # ── Phase 4: save JSON ──
    log("\n[4/4] Saving JSON files…")
    save_json_outputs(categories)

    # ── Summary ──────────────────────────────────────────────────────────────
    print()
    print("✅ Scrape complete!")
    print(f"📁 Output: {BASE_DIR}")
    print(f"📂 Categories: {len(categories)}")
    print(f"🍔 Items: {total_items}")
    print(f"🖼️  Images uploaded to Cloudinary: {uploaded}")
    print(f"❌ Failed images: {failed}")


if __name__ == "__main__":
    asyncio.run(main())
