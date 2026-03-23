import os
import re
import json
import requests
from bs4 import BeautifulSoup
from openpyxl import Workbook
from openpyxl.styles import Font
from dotenv import load_dotenv
from urllib.parse import urljoin

load_dotenv()

BASE_URL = "https://www.sanitos.dk"
LOGIN_URL = f"{BASE_URL}/admin/login"
AUTH_URL = f"{BASE_URL}/admin/auth/login"
PRODUCTS_URL = f"{BASE_URL}/admin/products"
ASSETS_DIR = "assets"

EMAIL = os.getenv("SANITOS_EMAIL")
PASSWORD = os.getenv("SANITOS_PASSWORD")


def login(session):
    """Login to Sanitos admin panel."""
    resp = session.get(LOGIN_URL)
    resp.raise_for_status()
    soup = BeautifulSoup(resp.text, "html.parser")

    token_input = soup.find("input", {"name": "token"})
    payload = {
        "identity": EMAIL,
        "password": PASSWORD,
        "remember": "1",
    }
    if token_input:
        payload["token"] = token_input["value"]

    resp = session.post(AUTH_URL, data=payload)
    resp.raise_for_status()
    print("Logged in successfully.")
    return session


def get_csrf_and_ajax_url(session):
    """Get the CSRF token and AJAX URL from the products page."""
    resp = session.get(PRODUCTS_URL)
    resp.raise_for_status()

    if "login" in resp.url.lower() and "products" not in resp.url.lower():
        raise Exception("Session expired or login failed")

    text = resp.text

    # Extract sAjaxSource URL
    ajax_match = re.search(r"'sAjaxSource'\s*:\s*'([^']+)'", text)
    if not ajax_match:
        raise Exception("Could not find AJAX source URL")
    ajax_url = ajax_match.group(1)

    # Extract CSRF token from the DataTable config
    token_match = re.search(r'"name"\s*:\s*"token"\s*,\s*"value"\s*:\s*"([^"]+)"', text)
    csrf_token = token_match.group(1) if token_match else ""

    print(f"AJAX URL: {ajax_url}")
    return ajax_url, csrf_token


def fetch_all_products(session, ajax_url, csrf_token):
    """Fetch all products via the DataTables server-side API."""
    # DataTables server-side parameters to get all records
    payload = {
        "sEcho": "1",
        "iColumns": "11",
        "iDisplayStart": "0",
        "iDisplayLength": "-1",  # All records
        "sSearch": "",
        "bRegex": "false",
        "iSortCol_0": "2",
        "sSortDir_0": "asc",
        "iSortingCols": "1",
        "token": csrf_token,
    }

    # Add column-level params
    for i in range(11):
        payload[f"mDataProp_{i}"] = str(i)
        payload[f"sSearch_{i}"] = ""
        payload[f"bRegex_{i}"] = "false"
        payload[f"bSearchable_{i}"] = "true"
        payload[f"bSortable_{i}"] = "true"

    resp = session.post(ajax_url, data=payload)
    resp.raise_for_status()
    data = resp.json()

    total = data.get("iTotalRecords", 0)
    rows = data.get("aaData", [])
    print(f"Fetched {len(rows)} products (total: {total}).")
    return rows


def parse_products(rows):
    """Parse the raw DataTables row data into structured products."""
    products = []

    for row in rows:
        # row: [id, image_filename, code, name, brand, category, quantity, unit, racks, alert_qty, actions_html]
        image_file = row[1] if len(row) > 1 else ""
        code = row[2] if len(row) > 2 else ""
        name = row[3] if len(row) > 3 else ""
        brand = row[4] if len(row) > 4 else ""
        category = row[5] if len(row) > 5 else ""
        quantity = row[6] if len(row) > 6 else ""
        unit = row[7] if len(row) > 7 else ""
        racks = row[8] if len(row) > 8 else ""
        alert_qty = row[9] if len(row) > 9 else ""

        # Build full image URL from filename
        image_url = ""
        if image_file and image_file != "no_image.png":
            image_url = f"{BASE_URL}/assets/uploads/{image_file}"

        def clean(val):
            if val is None:
                return ""
            s = str(val).strip()
            # Unescape HTML entities
            if "&" in s:
                s = BeautifulSoup(s, "html.parser").get_text()
            return s

        products.append({
            "code": clean(code),
            "name": clean(name),
            "brand": clean(brand),
            "category": clean(category),
            "quantity": clean(quantity),
            "unit": clean(unit),
            "racks": clean(racks),
            "alert_quantity": clean(alert_qty),
            "image_url": image_url,
        })

    return products


def download_images(session, products):
    """Download all product images locally."""
    os.makedirs(ASSETS_DIR, exist_ok=True)

    for i, product in enumerate(products):
        url = product["image_url"]
        if not url:
            product["local_image"] = ""
            continue

        filename = url.split("/")[-1]
        safe_name = f"{product['code']}_{filename}" if product["code"] else filename
        local_path = os.path.join(ASSETS_DIR, safe_name)

        if os.path.exists(local_path):
            product["local_image"] = local_path
            print(f"  [{i+1}/{len(products)}] Already exists: {safe_name}")
            continue

        try:
            resp = session.get(url, timeout=15)
            resp.raise_for_status()
            with open(local_path, "wb") as f:
                f.write(resp.content)
            product["local_image"] = local_path
            print(f"  [{i+1}/{len(products)}] Downloaded: {safe_name}")
        except Exception as e:
            print(f"  [{i+1}/{len(products)}] Failed ({safe_name}): {e}")
            product["local_image"] = ""


def save_to_excel(products):
    """Save products to an Excel file."""
    wb = Workbook()
    ws = wb.active
    ws.title = "Products"

    headers = [
        "Code", "Name", "Brand", "Category",
        "Quantity", "Unit", "Racks", "Alert Quantity",
        "Image URL (Remote)", "Image Path (Local)",
    ]
    ws.append(headers)

    for cell in ws[1]:
        cell.font = Font(bold=True)

    for p in products:
        ws.append([
            p["code"],
            p["name"],
            p["brand"],
            p["category"],
            p["quantity"],
            p["unit"],
            p["racks"],
            p["alert_quantity"],
            p["image_url"],
            p["local_image"],
        ])

    for col in ws.columns:
        max_len = max(len(str(cell.value or "")) for cell in col)
        ws.column_dimensions[col[0].column_letter].width = min(max_len + 2, 50)

    output_file = "sanitos_products.xlsx"
    wb.save(output_file)
    print(f"\nSaved {len(products)} products to {output_file}")


def main():
    session = requests.Session()
    session.headers.update({
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36"
    })

    print("Logging in...")
    login(session)

    print("Fetching product data...")
    ajax_url, csrf_token = get_csrf_and_ajax_url(session)
    rows = fetch_all_products(session, ajax_url, csrf_token)

    print("Parsing products...")
    products = parse_products(rows)

    print(f"Downloading {len(products)} product images...")
    download_images(session, products)

    print("Saving to Excel...")
    save_to_excel(products)

    print("Done!")


if __name__ == "__main__":
    main()
