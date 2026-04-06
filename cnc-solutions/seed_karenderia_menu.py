"""
Karenderia menu seeder — reads full-menu.json and generates SQL for production.

Handles:
  - st_category (menu categories)
  - st_item + st_item_relationship_category + st_item_relationship_size (items & prices)
  - st_subcategory (addon groups: Extras, Menu Drinks, Dip, etc.)
  - st_subcategory_item (addon options)
  - st_subcategory_item_relationships (links options → groups)
  - st_item_relationship_subcategory (links items → addon groups)

Usage:
  python seed_karenderia_menu.py                  # dev prices (1x)
  python seed_karenderia_menu.py --prod           # prod prices (+10%)
  python seed_karenderia_menu.py --markup 1.15    # custom +15%
"""

import argparse
import json
import math
import re
from datetime import datetime
from pathlib import Path

BASE_DIR = Path(__file__).parent / "menu-data"
MENU_FILE = BASE_DIR / "full-menu.json"
OUTPUT_DIR = Path(__file__).parent / "menu-data"

MERCHANT_ID = 1
NOW = datetime.now().strftime("%Y-%m-%d %H:%M:%S")


def slugify(text: str) -> str:
    text = text.lower().strip()
    text = re.sub(r"[åä]", "a", text)
    text = re.sub(r"[öø]", "o", text)
    text = re.sub(r"[æ]", "ae", text)
    text = re.sub(r"[éèê]", "e", text)
    text = re.sub(r"[^a-z0-9]+", "-", text)
    return text.strip("-")


def esc(val: str) -> str:
    """Escape a string for MySQL single-quoted literal."""
    return val.replace("\\", "\\\\").replace("'", "\\'")


def round_price(price: float, markup: float) -> float:
    """Apply markup and round to nearest whole kr for clean display."""
    return math.ceil(price * markup)


def collect_addon_groups(categories: list[dict]) -> list[dict]:
    """
    Deduplicate addon groups across all items.
    Returns list of unique groups with their options.
    """
    seen: dict[str, dict] = {}  # group_name → group dict

    for cat in categories:
        for item in cat.get("items", []):
            for addon in item.get("addons", []):
                name = addon["name"].strip()
                if name not in seen:
                    seen[name] = {
                        "name": name,
                        "description": addon.get("description", ""),
                        "options": {},
                    }
                # Merge options (deduplicate by name)
                for opt in addon.get("options", []):
                    opt_name = opt["name"].strip()
                    if opt_name not in seen[name]["options"]:
                        seen[name]["options"][opt_name] = opt

    return list(seen.values())


def build_sql(categories: list[dict], markup: float) -> str:
    lines: list[str] = []
    lines.append(f"-- Karenderia menu seed (markup: {markup}x)")
    lines.append(f"-- Generated: {NOW}")
    lines.append("-- Source: full-menu.json (scraped + enriched from yammi.dk)")
    lines.append("")
    lines.append("SET FOREIGN_KEY_CHECKS = 0;")
    lines.append("")

    # ── 1. Categories ────────────────────────────────────────────────────────
    lines.append("-- ========== CATEGORIES ==========")
    lines.append("DELETE FROM st_category WHERE merchant_id = 1;")
    cat_values = []
    for i, cat in enumerate(categories):
        cat_id = i + 1
        cat["_id"] = cat_id
        name = esc(cat["name"])
        desc = esc(cat.get("description", ""))
        seq = cat.get("sort_order", i + 1)
        cat_values.append(
            f"({cat_id},{MERCHANT_ID},'{name}','{desc}',1,'','','','','publish',{seq},0,'{NOW}','{NOW}','')"
        )
    lines.append(
        "INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, "
        "available, photo, path, icon, icon_path, status, sequence, available_at_specific, "
        "date_created, date_modified, ip_address) VALUES"
    )
    lines.append(",\n".join(cat_values) + ";")
    lines.append("")

    # ── 2. Items + prices + category relationships ───────────────────────────
    lines.append("-- ========== ITEMS ==========")
    lines.append("DELETE FROM st_item WHERE merchant_id = 1;")
    lines.append("DELETE FROM st_item_relationship_category WHERE merchant_id = 1;")
    lines.append("DELETE FROM st_item_relationship_size WHERE merchant_id = 1;")

    item_values = []
    item_cat_values = []
    item_size_values = []
    item_id = 0
    item_cat_id = 0
    item_size_id = 0

    # Map item_name → item_id for addon linking later
    item_name_to_id: dict[str, int] = {}
    # Track which addon groups each item uses
    item_addon_map: dict[int, list[dict]] = {}

    for cat in categories:
        cat_id = cat["_id"]
        for item_seq, item in enumerate(cat.get("items", []), 1):
            item_id += 1
            item_name = item["name"].strip()
            item_name_to_id[item_name] = item_id
            item["_id"] = item_id

            slug = slugify(item_name)
            desc = esc(item.get("description", ""))
            photo = f"{slug}.png"
            path = f"upload/item/{item_id}/"

            item_values.append(
                f"({item_id},{MERCHANT_ID},'{esc(item_name)}','{slug}','{desc}','','publish',"
                f"'{photo}','{path}',{item_seq},'',NULL,1,1,0,1,0.0000,0,'','',1,0,"
                f"'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'{NOW}','{NOW}','')"
            )

            # Category relationship
            item_cat_id += 1
            item_cat_values.append(
                f"({item_cat_id},{MERCHANT_ID},{item_id},{cat_id},{item_seq})"
            )

            # Price (size relationship — Karenderia stores prices here)
            base_price = float(item.get("price", 0))
            final_price = round_price(base_price, markup) if base_price > 0 else 0

            variants = item.get("variants", [])
            if variants:
                for vi, var in enumerate(variants):
                    item_size_id += 1
                    vp = round_price(float(var.get("price", 0)), markup)
                    item_size_values.append(
                        f"({item_size_id},{MERCHANT_ID},'',{item_id},0,{vp:.4f},0.0000,"
                        f"0.0000,'fixed',NULL,NULL,{vi},'','',1,0.00,'{NOW}','{NOW}')"
                    )
            else:
                item_size_id += 1
                item_size_values.append(
                    f"({item_size_id},{MERCHANT_ID},'',{item_id},0,{final_price:.4f},0.0000,"
                    f"0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'{NOW}','{NOW}')"
                )

            # Track addons for this item
            if item.get("addons"):
                item_addon_map[item_id] = item["addons"]

    lines.append(
        "INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, "
        "item_short_description, status, photo, path, sequence, is_featured, featured_priority, "
        "non_taxable, available, points_earned, points_enabled, packaging_fee, packaging_incremental, "
        "item_token, sku, track_stock, supplier_id, meta_title, meta_description, meta_keywords, "
        "meta_image, meta_image_path, cooking_ref_required, ingredients_preselected, "
        "available_at_specific, not_for_sale, color_hex, visible, preparation_time, "
        "extra_preparation_time, unavailable_until, is_promo_free_item, "
        "date_created, date_modified, ip_address) VALUES"
    )
    lines.append(",\n".join(item_values) + ";")
    lines.append("")

    lines.append(
        "INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence) VALUES"
    )
    lines.append(",\n".join(item_cat_values) + ";")
    lines.append("")

    lines.append(
        "INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_token, item_id, "
        "size_id, price, cost_price, discount, discount_type, discount_start, discount_end, "
        "sequence, sku, barcode, available, low_stock, created_at, updated_at) VALUES"
    )
    lines.append(",\n".join(item_size_values) + ";")
    lines.append("")

    # ── 3. Addon groups (subcategories) ──────────────────────────────────────
    lines.append("-- ========== ADDON GROUPS (subcategories) ==========")
    lines.append("DELETE FROM st_subcategory WHERE merchant_id = 1;")
    lines.append("DELETE FROM st_subcategory_item WHERE merchant_id = 1;")
    lines.append("DELETE FROM st_subcategory_item_relationships WHERE merchant_id = 1;")
    lines.append("DELETE FROM st_item_relationship_subcategory WHERE merchant_id = 1;")

    addon_groups = collect_addon_groups(categories)

    # Assign IDs
    subcat_name_to_id: dict[str, int] = {}
    subcat_values = []
    for gi, group in enumerate(addon_groups, 1):
        gname = group["name"]
        subcat_name_to_id[gname] = gi
        gdesc = esc(group.get("description", ""))
        subcat_values.append(
            f"({gi},{MERCHANT_ID},'{esc(gname)}','{gdesc}','',1,'','',{gi},'publish','{NOW}','{NOW}','')"
        )

    lines.append(
        "INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, "
        "subcategory_description, featured_image, available, path, discount, sequence, "
        "status, date_created, date_modified, ip_address) VALUES"
    )
    lines.append(",\n".join(subcat_values) + ";")
    lines.append("")

    # ── 4. Addon options (subcategory items) ─────────────────────────────────
    lines.append("-- ========== ADDON OPTIONS (subcategory items) ==========")
    sub_item_values = []
    sub_item_rel_values = []
    sub_item_id = 0

    # Track sub_item by (group_name, option_name) to avoid duplicates
    sub_item_key_to_id: dict[tuple[str, str], int] = {}

    for group in addon_groups:
        gname = group["name"]
        subcat_id = subcat_name_to_id[gname]

        for opt_name, opt in group["options"].items():
            key = (gname, opt_name)
            if key in sub_item_key_to_id:
                continue

            sub_item_id += 1
            sub_item_key_to_id[key] = sub_item_id

            opt_desc = esc(opt.get("description", ""))
            opt_price = float(opt.get("price", 0))
            # Apply markup to addon prices too (but not to 0.0 — included items stay free)
            if opt_price > 0:
                opt_price = round_price(opt_price, markup)

            photo = f"{slugify(opt_name)}.png"
            path = f"upload/subcategory_item/{sub_item_id}/"

            sub_item_values.append(
                f"({sub_item_id},{MERCHANT_ID},'{esc(opt_name)}','{opt_desc}','','{opt_price:.1f}',"
                f"1,'{photo}','{path}',{sub_item_id},'publish','{NOW}','{NOW}','')"
            )

            sub_item_rel_values.append(
                f"({sub_item_id},{MERCHANT_ID},{subcat_id},{sub_item_id},{sub_item_id})"
            )

    lines.append(
        "INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, "
        "item_description, category, price, available, photo, path, sequence, status, "
        "date_created, date_modified, ip_address) VALUES"
    )
    lines.append(",\n".join(sub_item_values) + ";")
    lines.append("")

    lines.append(
        "INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, "
        "sub_item_id, sequence) VALUES"
    )
    lines.append(",\n".join(sub_item_rel_values) + ";")
    lines.append("")

    # ── 5. Item ↔ addon group relationships ──────────────────────────────────
    lines.append("-- ========== ITEM ↔ ADDON GROUP LINKS ==========")
    item_subcat_values = []
    link_id = 0

    for iid, addons in item_addon_map.items():
        for addon_seq, addon in enumerate(addons, 1):
            aname = addon["name"].strip()
            subcat_id = subcat_name_to_id.get(aname)
            if not subcat_id:
                continue

            link_id += 1

            selection = addon.get("selection", "multiple")
            if selection == "one":
                multi_option = "single"
                multi_option_value = "1"
            else:
                multi_option = "multiple"
                multi_option_value = str(addon.get("max", 20) or 20)

            require = 1 if addon.get("required", False) else 0
            multi_min = int(addon.get("min", 0))

            item_subcat_values.append(
                f"({link_id},{MERCHANT_ID},{iid},{iid},{subcat_id},"
                f"'{multi_option}',{multi_min},'{multi_option_value}',{require},0,{addon_seq})"
            )

    lines.append(
        "INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, "
        "subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, "
        "pre_selected, sequence) VALUES"
    )
    lines.append(",\n".join(item_subcat_values) + ";")
    lines.append("")

    lines.append("SET FOREIGN_KEY_CHECKS = 1;")
    lines.append("")

    # ── Summary comment ──────────────────────────────────────────────────────
    lines.append(f"-- Summary: {len(categories)} categories, {item_id} items, "
                 f"{len(addon_groups)} addon groups, {sub_item_id} addon options, "
                 f"{link_id} item↔addon links")
    lines.append(f"-- Price markup: {markup}x ({(markup - 1) * 100:.0f}% increase)")

    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(description="Generate Karenderia menu seed SQL")
    parser.add_argument("--prod", action="store_true", help="Apply 10%% price increase")
    parser.add_argument("--markup", type=float, default=None, help="Custom price multiplier (e.g. 1.15)")
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
    print(f"  Categories: {len(categories)}")
    print(f"  Items:      {total_items}")
    print(f"  Markup:     {markup}x ({(markup - 1) * 100:.0f}%)")


if __name__ == "__main__":
    main()
