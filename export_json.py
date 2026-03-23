"""Export scraped product data to JSON for the seed script."""
import json
import os
import openpyxl

wb = openpyxl.load_workbook("sanitos_products.xlsx")
ws = wb.active

products = []
for row in ws.iter_rows(min_row=2, values_only=True):
    code, name, brand, category, quantity, unit, racks, alert_qty, image_url, local_image = row

    # Get local image filename only
    image = ""
    if local_image:
        image = os.path.basename(local_image)

    products.append({
        "code": code or "",
        "name": name or "",
        "brand": brand or "",
        "category": category or "",
        "unit": unit or "",
        "image": image,
    })

with open("products.json", "w") as f:
    json.dump(products, f, indent=2)

print(f"Exported {len(products)} products to products.json")
