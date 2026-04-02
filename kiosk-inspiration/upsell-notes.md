# Upsell Features (Future Implementation)

## 1. "Vil du have noget mere?" (Want something more?)
- Shows after item added to cart
- Displays appetizer cards: Chicken Strips, Chicken Tikka, Hot Spicy Wings, etc.
- Horizontal scrollable card carousel with prices
- "DET ER ALT. TAK" button to skip

## 2. "Kaffe eller is ved siden af?" (Coffee or ice cream on the side?)
- Shows after appetizer upsell
- Displays milkshakes, coffee, ice cream options
- Same card carousel format
- "DET ER ALT. TAK" to skip

## 3. "Ændre størrelse" (Change size)
- Size upgrade prompt
- Shows upgrade option with price difference (+DKK 10.00)
- "OPGRADERE TIL STOR" with item image
- ANNULLERE / NÆSTE buttons

## Configuration
- Each item has `want_more` and `coffee_icecream` category IDs in its attributes
- These point to which categories to show as upsell options
- Configurable per item from the backend
