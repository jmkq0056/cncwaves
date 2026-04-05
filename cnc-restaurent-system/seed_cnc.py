#!/usr/bin/env python3
"""Seed Karenderia DB with Chicken N Chicken data."""
import json
import hashlib
import subprocess
import sys
from datetime import datetime

MENU_FILE = "/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/cnc-solutions/menu-data/full-menu.json"
NOW = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
MERCHANT_ID = 1

def esc(s):
    """Escape string for MySQL."""
    if s is None:
        return ""
    return str(s).replace("\\", "\\\\").replace("'", "\\'").replace('"', '\\"')

def md5_pass(pw):
    return hashlib.md5(pw.encode()).hexdigest()

with open(MENU_FILE) as f:
    data = json.load(f)

restaurant = data["restaurant"]
categories = data["categories"]

sql_lines = []
sql = sql_lines.append

sql("SET FOREIGN_KEY_CHECKS=0;")
sql("SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';")
sql("")

# ── 1. Admin user (admin/admin123) ──
admin_pass = md5_pass("admin123")
sql("-- Admin user")
sql(f"""INSERT INTO st_admin_user (admin_id, username, password, first_name, last_name, email_address, role, main_account, status, date_created, date_modified)
VALUES (1, 'admin', '{admin_pass}', 'CNC', 'Admin', 'admin@chickennchicken.dk', 'admin', 1, 'active', '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE username='admin', password='{admin_pass}', first_name='CNC', last_name='Admin', email_address='admin@chickennchicken.dk', status='active';""")
sql("")

# ── 2. Site settings (branding) ──
sql("-- Site settings: CNC branding")
settings = {
    "website_title": "Chicken N Chicken",
    "website_timezone_new": "Europe/Copenhagen",
    "home_search_unit_type": "km",
    "merchant_specific_country": '["DK"]',
    "merchant_default_country": "DK",
}
for key, val in settings.items():
    sql(f"UPDATE st_option SET option_value='{esc(val)}', last_update='{NOW}' WHERE option_name='{key}' AND merchant_id=0;")
    sql(f"INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, '{key}', '{esc(val)}', '{NOW}' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='{key}' AND merchant_id=0);")
sql("")

# ── 3. Merchant (Chicken N Chicken) ──
sql("-- Merchant: Chicken N Chicken")
merchant_pass = md5_pass("cnc2024")
slug = "chicken-n-chicken"
sql(f"""INSERT INTO st_merchant (merchant_id, merchant_uuid, restaurant_slug, restaurant_name, restaurant_phone,
  contact_name, contact_phone, contact_email, address, username, password, status, is_featured, is_ready,
  is_commission, latitude, lontitude, logo, path, merchant_type, distance_unit, delivery_distance_covered,
  close_store, description, short_description, date_created, date_modified)
VALUES ({MERCHANT_ID}, UUID(), '{slug}', '{esc(restaurant["name"])}', '{esc(restaurant["phone"])}',
  'CNC Manager', '{esc(restaurant["phone"])}', 'info@chickennchicken.dk',
  '{esc(restaurant["address"])}', 'cncmerchant', '{merchant_pass}', 'active', 1, 1,
  2, '55.5833', '12.2942',
  'https://res.cloudinary.com/dtcjxk8si/image/upload/v1/cnc-menu/cnc-logo.png', '',
  1, 'km', 15.00,
  0, 'Chicken N Chicken - Lækre burgere, crispy chicken, wraps og meget mere!',
  'Burgers, Chicken, Wraps & More', '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE restaurant_name='{esc(restaurant["name"])}', restaurant_phone='{esc(restaurant["phone"])}',
  address='{esc(restaurant["address"])}', status='active', is_ready=1, close_store=0,
  username='cncmerchant', password='{merchant_pass}', distance_unit='km';""")
sql("")

# ── 4. Merchant user (so vendor can log in to backoffice) ──
sql("-- Merchant user for backoffice login")
sql(f"""INSERT INTO st_merchant_user (merchant_user_id, merchant_id, first_name, last_name, username, password,
  role, status, contact_email, main_account, date_created, date_modified)
VALUES (1, {MERCHANT_ID}, 'CNC', 'Manager', 'cncmerchant', '{merchant_pass}',
  1, 'active', 'info@chickennchicken.dk', 1, '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE username='cncmerchant', password='{merchant_pass}', status='active';""")
sql("")

# ── 5. Create a default size "Regular" ──
sql("-- Default size")
sql(f"""INSERT INTO st_size (size_id, merchant_id, size_name, sequence, status, date_created, date_modified)
VALUES (1, {MERCHANT_ID}, 'Regular', 1, 'published', '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE size_name='Regular';""")
sql("")

# ── 6. Categories ──
sql("-- Categories")
cat_id = 0
cat_map = {}
for i, cat in enumerate(categories):
    cat_id = i + 1
    cat_map[cat["slug"]] = cat_id
    name = esc(cat["name"])
    desc = esc(cat.get("description", ""))
    sql(f"""INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES ({cat_id}, {MERCHANT_ID}, '{name}', '{desc}', 'publish', 1, {i+1}, '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE category_name='{name}', category_description='{desc}', status='publish', available=1, sequence={i+1};""")
sql("")

# ── 7. Menu items + prices + category relationships ──
sql("-- Menu items, prices, category links")
item_id = 0
rel_id = 0
size_rel_id = 0

for cat in categories:
    cid = cat_map[cat["slug"]]
    for seq, item in enumerate(cat.get("items", [])):
        item_id += 1
        rel_id += 1
        size_rel_id += 1

        name = esc(item["name"])
        desc = esc(item.get("description", ""))
        price = float(item.get("price", 0))
        photo = item.get("image_cloudinary", item.get("image_original", ""))
        photo = esc(photo)
        item_slug = esc(cat["slug"] + "-" + item["name"].lower().replace(" ", "-").replace("'", ""))

        sql(f"""INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES ({item_id}, {MERCHANT_ID}, '{name}', '{item_slug}', '{desc}', '{photo}', 'publish', 1, 1, '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE item_name='{name}', item_description='{desc}', photo='{photo}', status='publish', available=1;""")

        # Category relationship
        sql(f"""INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES ({rel_id}, {MERCHANT_ID}, {item_id}, {cid}, {seq+1})
ON DUPLICATE KEY UPDATE cat_id={cid}, sequence={seq+1};""")

        # Price via size relationship (Regular size)
        sql(f"""INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES ({size_rel_id}, {MERCHANT_ID}, {item_id}, 1, {price:.4f}, 1, 1)
ON DUPLICATE KEY UPDATE price={price:.4f};""")

sql("")

# ── 8. Subcategories (addon groups) and addon items ──
sql("-- Addon groups (subcategories) and addon items")
subcat_id = 0
sub_item_id = 0
subcat_rel_id = 0
subcat_item_rel_id = 0
item_subcat_rel_id = 0

# Track unique addon groups per name to avoid duplicates
addon_group_map = {}  # (group_name) -> subcat_id
addon_item_map = {}   # (item_name, group_name) -> sub_item_id

# First pass: create all unique addon groups and items
for cat in categories:
    for item in cat.get("items", []):
        for addon_group in item.get("addons", []):
            group_name = addon_group["name"]
            if group_name not in addon_group_map:
                subcat_id += 1
                addon_group_map[group_name] = subcat_id
                gname = esc(group_name)
                gdesc = esc(addon_group.get("description", ""))
                sql(f"""INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES ({subcat_id}, {MERCHANT_ID}, '{gname}', '{gdesc}', 1, 'publish', {subcat_id}, '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE subcategory_name='{gname}';""")

            for opt in addon_group.get("options", []):
                key = (opt["name"], group_name)
                if key not in addon_item_map:
                    sub_item_id += 1
                    addon_item_map[key] = sub_item_id
                    oname = esc(opt["name"])
                    odesc = esc(opt.get("description", ""))
                    oprice = esc(str(opt.get("price", 0)))
                    ophoto = esc(opt.get("image_cloudinary", opt.get("image_original", "")))
                    sql(f"""INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES ({sub_item_id}, {MERCHANT_ID}, '{oname}', '{odesc}', '{oprice}', '{ophoto}', 1, 'publish', {sub_item_id}, '{NOW}', '{NOW}')
ON DUPLICATE KEY UPDATE sub_item_name='{oname}', price='{oprice}';""")

                    # Link addon item to its subcategory
                    scid = addon_group_map[group_name]
                    subcat_item_rel_id += 1
                    sql(f"""INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES ({subcat_item_rel_id}, {MERCHANT_ID}, {scid}, {sub_item_id}, {subcat_item_rel_id})
ON DUPLICATE KEY UPDATE sequence={subcat_item_rel_id};""")

sql("")

# Second pass: link addon groups to menu items
sql("-- Link addon groups to menu items")
item_id_counter = 0
for cat in categories:
    for item in cat.get("items", []):
        item_id_counter += 1
        for addon_group in item.get("addons", []):
            group_name = addon_group["name"]
            scid = addon_group_map[group_name]
            required = 1 if addon_group.get("required", False) else 0
            multi = "multiple" if addon_group.get("selection") == "multiple" else "single"
            min_sel = addon_group.get("min", 0)
            max_sel = addon_group.get("max", 0)
            item_subcat_rel_id += 1
            sql(f"""INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES ({item_subcat_rel_id}, {MERCHANT_ID}, {item_id_counter}, 0, {scid}, '{multi}', {min_sel}, '{max_sel}', {required}, {item_subcat_rel_id})
ON DUPLICATE KEY UPDATE multi_option='{multi}', require_addon={required};""")

sql("")

# ── 9. Merchant meta (opening hours, currency, etc.) ──
sql("-- Merchant meta")
meta_entries = [
    ("merchant_currency", "DKK", "", ""),
    ("merchant_currency_symbol", "kr", "", ""),
    ("merchant_currency_position", "right", "", ""),
    ("merchant_decimal_place", "2", "", ""),
    ("merchant_order_prefix", "CNC", "", ""),
    ("services", '["delivery","pickup","dinein"]', "", ""),
    ("enabled_delivery", "1", "", ""),
    ("enabled_pickup", "1", "", ""),
    ("enabled_dinein", "1", "", ""),
    ("tax_rate", "25", "", ""),  # Danish VAT
    ("primary_color", "#9d292b", "", ""),
    ("secondary_color", "#f17d00", "", ""),
]
meta_id = 0
for name, val, val1, val2 in meta_entries:
    meta_id += 1
    sql(f"""INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES ({meta_id}, {MERCHANT_ID}, '{name}', '{esc(val)}', '{esc(val1)}', '{esc(val2)}', '{NOW}')
ON DUPLICATE KEY UPDATE meta_value='{esc(val)}';""")
sql("")

# ── 10. Update item count on merchant ──
total_items = sum(len(c.get("items", [])) for c in categories)
sql(f"UPDATE st_merchant SET items_added={total_items} WHERE merchant_id={MERCHANT_ID};")
sql("")
sql("SET FOREIGN_KEY_CHECKS=1;")
sql("COMMIT;")

# Write SQL file
sql_text = "\n".join(sql_lines)
out_path = "/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/cnc-restaurent-system/seed_cnc.sql"
with open(out_path, "w") as f:
    f.write(sql_text)

print(f"Generated {out_path}")
print(f"  Categories: {len(categories)}")
print(f"  Items: {total_items}")
print(f"  Addon groups: {len(addon_group_map)}")
print(f"  Addon items: {len(addon_item_map)}")
print(f"  Total SQL statements: {len([l for l in sql_lines if l.strip() and not l.startswith('--')])}")
