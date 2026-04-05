#!/usr/bin/env python3
"""Download menu images and generate SQL to update local photo paths."""
import json
import os
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path

MENU_FILE = "/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/cnc-solutions/menu-data/full-menu.json"
BASE_DIR = "/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install/upload"
SQL_FILE = "/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/cnc-restaurent-system/update_images.sql"

def download_image(url, dest_path):
    """Download image from URL to dest_path. Returns True on success."""
    try:
        os.makedirs(os.path.dirname(dest_path), exist_ok=True)
        req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
        with urllib.request.urlopen(req, timeout=30) as resp:
            data = resp.read()
            with open(dest_path, "wb") as f:
                f.write(data)
        return True
    except (urllib.error.URLError, urllib.error.HTTPError, OSError, TimeoutError) as e:
        print(f"  ERROR downloading {url}: {e}")
        return False

def get_filename_from_url(url):
    """Extract filename from URL."""
    path = url.split("?")[0]
    return path.split("/")[-1]

def esc(s):
    """Escape string for MySQL."""
    if s is None:
        return ""
    return str(s).replace("\\", "\\\\").replace("'", "\\'")

def main():
    with open(MENU_FILE) as f:
        data = json.load(f)

    categories = data["categories"]
    sql_lines = []

    # ── 1. Download item images ──
    print("=" * 60)
    print("DOWNLOADING MENU ITEM IMAGES")
    print("=" * 60)

    item_id = 0
    item_ok = 0
    item_fail = 0

    for cat in categories:
        print(f"\nCategory: {cat['name']}")
        for item in cat.get("items", []):
            item_id += 1
            url = item.get("image_cloudinary") or item.get("image_original", "")
            if not url:
                print(f"  [{item_id}] {item['name']} — no image URL, skipping")
                item_fail += 1
                continue

            filename = get_filename_from_url(url)
            dest_dir = os.path.join(BASE_DIR, "item", str(item_id))
            dest_path = os.path.join(dest_dir, filename)
            path_col = f"upload/item/{item_id}/"

            print(f"  [{item_id}] {item['name']} -> {filename} ... ", end="", flush=True)
            if download_image(url, dest_path):
                print("OK")
                item_ok += 1
            else:
                print("FAILED")
                item_fail += 1

            sql_lines.append(
                f"UPDATE st_item SET photo='{esc(filename)}', path='{esc(path_col)}' WHERE item_id={item_id};"
            )

    total_items = item_id
    print(f"\nItems: {item_ok} OK, {item_fail} failed, {total_items} total")

    # ── 2. Download addon (subcategory_item) images ──
    # Same traversal order as seed_cnc.py to get matching IDs
    print("\n" + "=" * 60)
    print("DOWNLOADING ADDON ITEM IMAGES")
    print("=" * 60)

    addon_group_map = {}   # group_name -> subcat_id
    addon_item_map = {}    # (option_name, group_name) -> sub_item_id
    subcat_id = 0
    sub_item_id = 0
    addon_ok = 0
    addon_fail = 0

    for cat in categories:
        for item in cat.get("items", []):
            for addon_group in item.get("addons", []):
                group_name = addon_group["name"]
                if group_name not in addon_group_map:
                    subcat_id += 1
                    addon_group_map[group_name] = subcat_id

                for opt in addon_group.get("options", []):
                    key = (opt["name"], group_name)
                    if key not in addon_item_map:
                        sub_item_id += 1
                        addon_item_map[key] = sub_item_id

                        url = opt.get("image_cloudinary") or opt.get("image_original", "")
                        if not url:
                            print(f"  [sub:{sub_item_id}] {opt['name']} ({group_name}) — no image URL, skipping")
                            addon_fail += 1
                            # Still generate SQL with empty values
                            sql_lines.append(
                                f"UPDATE st_subcategory_item SET photo='', path='' WHERE sub_item_id={sub_item_id};"
                            )
                            continue

                        filename = get_filename_from_url(url)
                        dest_dir = os.path.join(BASE_DIR, "subcategory_item", str(sub_item_id))
                        dest_path = os.path.join(dest_dir, filename)
                        path_col = f"upload/subcategory_item/{sub_item_id}/"

                        print(f"  [sub:{sub_item_id}] {opt['name']} ({group_name}) -> {filename} ... ", end="", flush=True)
                        if download_image(url, dest_path):
                            print("OK")
                            addon_ok += 1
                        else:
                            print("FAILED")
                            addon_fail += 1

                        sql_lines.append(
                            f"UPDATE st_subcategory_item SET photo='{esc(filename)}', path='{esc(path_col)}' WHERE sub_item_id={sub_item_id};"
                        )

    total_addons = sub_item_id
    print(f"\nAddon items: {addon_ok} OK, {addon_fail} failed, {total_addons} total")
    print(f"Addon groups: {len(addon_group_map)}")

    # ── 3. Write SQL file ──
    sql_text = "\n".join(sql_lines) + "\n"
    with open(SQL_FILE, "w") as f:
        f.write(sql_text)
    print(f"\nSQL file written: {SQL_FILE}")
    print(f"  {len(sql_lines)} UPDATE statements")

    # ── Summary ──
    print("\n" + "=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print(f"  Menu items:  {item_ok}/{total_items} downloaded")
    print(f"  Addon items: {addon_ok}/{total_addons} downloaded")
    print(f"  SQL updates: {len(sql_lines)} statements written")

if __name__ == "__main__":
    main()
