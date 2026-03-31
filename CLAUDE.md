# Chicken N Chicken Menu System

## Quick Commands

### Extract menu item images from a screen PNG
```bash
python3 extract/extract_items.py menu-originals/beef-burger-meals.png
```

### Mark item sold out
Edit `data/menu.json` — find the item by name or ID, set `"is_sold_out": true`

### Change a price
Edit `data/menu.json` — find the item, update `price_single`, `price_meal`, or `price_meal_large`

### Add a new menu item
Add a new entry to the appropriate screen's `items` array in `data/menu.json`
Place the food photo in the correct `menu-assets/items/{category}/` folder

## File Locations
- Menu data: `data/menu.json`
- Food photos: `menu-assets/items/`
- Brand elements: `menu-assets/brand/`
- Reusable elements (fries, cups): `menu-assets/reusable/`
- Dip images: `menu-assets/items/dips/`
- Original signage files: `menu-originals/`
- Extraction script: `extract/extract_items.py`
- Extraction config: `extract/extract_config.json`

## Directory Structure
```
menu-assets/items/beef-burgers/   - Individual beef burger images
menu-assets/items/dips/           - Dip sauce images
menu-assets/brand/                - Logo, stripe, badges
menu-assets/reusable/             - Fries box, Pepsi cup, etc.
```

## Adding New Screen Layouts
1. Add the screen PNG to `menu-originals/`
2. Add crop coordinates to `SCREEN_LAYOUTS` dict in `extract/extract_items.py`
3. Run `python3 extract/extract_items.py menu-originals/<filename>.png`
4. Add menu items to `data/menu.json`
