"""
Karenderia menu price seeder — applies markup to existing menu data.

Instead of DELETE+INSERT (which breaks UUIDs, views, and addon relationships),
this generates UPDATE statements that only change prices.

The original db-seed.sql (full dump) already has correct:
  - Items with UUIDs (item_token)
  - Addon groups (Menu Drinks, Size, Dip, etc.)
  - Addon options with sub-items
  - All relationship tables
  - The view st_view_item_relationship_subcategory_item

This script just bumps prices by the markup factor.

Usage:
  python seed_karenderia_menu.py                  # dev prices (no changes)
  python seed_karenderia_menu.py --prod           # prod prices (+10%)
  python seed_karenderia_menu.py --markup 1.15    # custom +15%
"""

import argparse
import json
import math
from datetime import datetime
from pathlib import Path

BASE_DIR = Path(__file__).parent / "menu-data"
MENU_FILE = BASE_DIR / "full-menu.json"
OUTPUT_DIR = Path(__file__).parent / "menu-data"

NOW = datetime.now().strftime("%Y-%m-%d %H:%M:%S")


def round_price(price: float, markup: float) -> int:
    """Apply markup and round up to nearest whole kr."""
    return math.ceil(price * markup)


def build_sql(categories: list[dict], markup: float) -> str:
    lines: list[str] = []
    lines.append(f"-- Karenderia price update (markup: {markup}x)")
    lines.append(f"-- Generated: {NOW}")
    lines.append("-- Only UPDATEs prices — preserves UUIDs, addons, views, relationships")
    lines.append("")
    lines.append("SET NAMES utf8mb4;")
    lines.append("")

    # ── 1. Update item prices in st_item_relationship_size ───────────────────
    lines.append("-- ========== ITEM PRICES ==========")
    item_id = 0
    for cat in categories:
        for item in cat.get("items", []):
            item_id += 1
            base_price = float(item.get("price", 0))
            if base_price > 0:
                new_price = round_price(base_price, markup)
                lines.append(
                    f"UPDATE st_item_relationship_size SET price = {new_price:.4f} "
                    f"WHERE item_id = {item_id} AND merchant_id = 1;"
                )

    lines.append("")

    # ── 2. Update addon option prices in st_subcategory_item ─────────────────
    lines.append("-- ========== ADDON OPTION PRICES ==========")
    # Collect all unique addon options with their prices from the JSON
    # Match them to the DB by sub_item_id (which follows insertion order)
    seen_options: dict[str, bool] = {}
    sub_item_id = 0

    # We need to iterate in the same order as the original seed to match IDs
    addon_groups: dict[str, dict] = {}
    for cat in categories:
        for item in cat.get("items", []):
            for addon in item.get("addons", []):
                name = addon["name"].strip()
                if name not in addon_groups:
                    addon_groups[name] = {}
                for opt in addon.get("options", []):
                    opt_name = opt["name"].strip()
                    if opt_name not in addon_groups[name]:
                        addon_groups[name][opt_name] = opt

    for group_name, options in addon_groups.items():
        for opt_name, opt in options.items():
            sub_item_id += 1
            opt_price = float(opt.get("price", 0))
            if opt_price > 0:
                new_price = round_price(opt_price, markup)
                lines.append(
                    f"UPDATE st_subcategory_item SET price = '{new_price:.1f}' "
                    f"WHERE sub_item_id = {sub_item_id} AND merchant_id = 1;"
                )

    lines.append("")

    # ── 3. Clear caches ──────────────────────────────────────────────────────
    lines.append("-- ========== CLEAR CACHES ==========")
    lines.append("UPDATE st_cache SET date_modified = NOW() WHERE id = 1;")
    lines.append("FLUSH TABLES;")
    lines.append("")

    lines.append(f"-- Updated {item_id} items, {sub_item_id} addon options")
    lines.append(f"-- Price markup: {markup}x ({(markup - 1) * 100:.0f}% increase)")

    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(description="Generate Karenderia price update SQL")
    parser.add_argument("--prod", action="store_true", help="Apply 10%% price increase")
    parser.add_argument("--markup", type=float, default=None, help="Custom price multiplier")
    args = parser.parse_args()

    if args.markup:
        markup = args.markup
    elif args.prod:
        markup = 1.10
    else:
        markup = 1.0

    menu = json.loads(MENU_FILE.read_text(encoding="utf-8"))
    categories = menu["categories"]

    sql = build_sql(categories, markup)

    suffix = "prod" if markup > 1.0 else "dev"
    out_path = OUTPUT_DIR / f"karenderia_seed_{suffix}.sql"
    out_path.write_text(sql, encoding="utf-8")

    total_items = sum(len(c.get("items", [])) for c in categories)
    print(f"Generated: {out_path}")
    print(f"  Items:  {total_items}")
    print(f"  Markup: {markup}x ({(markup - 1) * 100:.0f}%)")


if __name__ == "__main__":
    main()
