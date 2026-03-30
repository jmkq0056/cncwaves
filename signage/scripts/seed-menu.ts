/**
 * Seed menu items and screen configurations from full-menu.json into MongoDB.
 * Run: cd signage && npx tsx scripts/seed-menu.ts
 */
import "dotenv/config";
import mongoose from "mongoose";
import fs from "fs";
import path from "path";

const MONGO_URI = process.env.MONGO_URI!;
if (!MONGO_URI) {
  console.error("MONGO_URI not set. Create signage/.env.local");
  process.exit(1);
}

// ---------- Inline model schemas (avoid import issues with tsx) ----------

const MenuItemSchema = new mongoose.Schema({
  name: String,
  displayName: String,
  description: String,
  price: Number,
  category: String,
  image: String,
  cloudinaryPublicId: String,
  weight: String,
  friesSize: String,
  spicy: Boolean,
  vegan: Boolean,
  variants: String,
  soldOut: Boolean,
  sortOrder: Number,
}, { timestamps: true });

const BottomItemSchema = new mongoose.Schema({
  name: String, price: Number, image: String, soldOut: Boolean,
}, { _id: false });

const MenuScreenSchema = new mongoose.Schema({
  screenId: { type: String, unique: true },
  title: String,
  subtitle: String,
  layout: String,
  storMenu: { text: String, price: String },
  items: [{ type: mongoose.Schema.Types.ObjectId, ref: "MenuItem" }],
  extraItems: [{ type: mongoose.Schema.Types.ObjectId, ref: "MenuItem" }],
  bottomSection: { kind: String, items: [BottomItemSchema] },
  note: String,
  sortOrder: Number,
}, { timestamps: true });

const MenuItem = mongoose.models.MenuItem || mongoose.model("MenuItem", MenuItemSchema, "menuItems");
const MenuScreen = mongoose.models.MenuScreen || mongoose.model("MenuScreen", MenuScreenSchema, "menuScreens");

// ---------- Load full-menu.json ----------

const menuPath = path.resolve(__dirname, "../../cnc-solutions/menu-data/full-menu.json");
if (!fs.existsSync(menuPath)) {
  console.error(`Menu data not found at ${menuPath}`);
  process.exit(1);
}
const menuData = JSON.parse(fs.readFileSync(menuPath, "utf-8"));

// ---------- Helpers ----------

function cldId(url: string): string {
  // Extract public_id from Cloudinary URL
  const m = url.match(/\/upload\/[^/]+\/(.+?)(?:\.\w+)?$/);
  return m ? m[1] : "";
}

interface RawItem {
  name: string;
  description?: string;
  price: number;
  image_cloudinary?: string;
  image_original?: string;
}

// ---------- Main ----------

async function main() {
  await mongoose.connect(MONGO_URI);
  console.log("Connected to MongoDB");

  // Clear existing menu data
  await MenuItem.deleteMany({});
  await MenuScreen.deleteMany({});
  console.log("Cleared existing menu data");

  // ===== 1. CREATE ALL MENU ITEMS =====
  const itemMap: Record<string, any> = {}; // name -> mongo doc

  for (const cat of menuData.categories) {
    let sortOrder = 0;
    for (const raw of cat.items as RawItem[]) {
      sortOrder++;
      const doc = await MenuItem.create({
        name: raw.name,
        displayName: raw.name.toUpperCase(),
        description: raw.description || "",
        price: raw.price,
        category: cat.name,
        image: raw.image_cloudinary || "",
        cloudinaryPublicId: cldId(raw.image_cloudinary || ""),
        weight: "",
        friesSize: "",
        spicy: false,
        vegan: false,
        variants: "",
        soldOut: false,
        sortOrder,
      });
      itemMap[raw.name] = doc;
    }
    console.log(`  ${cat.name}: ${cat.items.length} items`);
  }

  // Also create custom items not in the JSON
  const customItems = [
    { name: "Chicken Strips Rice Bowl", displayName: "CHICKEN STRIPS\nRICE BOWL", description: "Ris, vegatar grønt mix, gulerod, bønner, 3 stk. frisk paneret kyllingefilet", price: 79, category: "Vegi's & Salad", image: itemMap["Chicken Strips Salad"]?.image || "" },
    { name: "Sizzler Burger Menu", displayName: "SIZZLER\nBURGER", description: "Frisk paneret spicy sizzler kyllingefilet, cheddar, iceberg, mayonnaise", price: 85, category: "Chicken & Fish Burgers", image: itemMap["Chicken Royal Menu"]?.image || "" },
    { name: "Mr. Brownie", displayName: "MR. BROWNIE", description: "", price: 8, category: "Coffee & Cake", image: itemMap["Chocolate Muffin"]?.image || "" },
    { name: "Coleslaw", displayName: "COLESLAW", description: "", price: 8, category: "Sides & Dips", image: itemMap["Corn"]?.image || "" },
    { name: "6 Nachos Cheese Triangle", displayName: "6 NACHOS\nCHEESE\nTRIANGLE", description: "", price: 34, category: "Sides & Dips", image: itemMap["10 Chili Cheese Nuggets"]?.image || "" },
    { name: "6 Smoky Cheese Donuts", displayName: "6 SMOKY\nCHEESE\nDONUTS", description: "", price: 34, category: "Sides & Dips", image: itemMap["6 Mozzarella Sticks"]?.image || "" },
    { name: "6 Smily Frites", displayName: "6 SMILY\nFRITES", description: "", price: 34, category: "Sides & Dips", image: itemMap["6 Onion Rings"]?.image || "" },
  ];
  for (const c of customItems) {
    const doc = await MenuItem.create({ ...c, cloudinaryPublicId: cldId(c.image), soldOut: false, sortOrder: 999 });
    itemMap[c.name] = doc;
  }
  console.log(`  Custom items: ${customItems.length}`);

  // ===== 2. SET EXTRA FIELDS ON SPECIFIC ITEMS =====
  const updates: [string, Partial<{ weight: string; friesSize: string; spicy: boolean; vegan: boolean; variants: string; displayName: string }>][] = [
    // Beef Burger Meals - weights
    ["Double Cheese Menu", { displayName: "DOUBLE\nCHEESE", weight: "55g", friesSize: "small" }],
    ["Triple Cheese Burger Menu", { displayName: "TRIPLE CHEESE\nBURGER", weight: "55g", friesSize: "small" }],
    ["O'ring Cheese Burger Meal", { displayName: "O'RING\nCHEESE BURGER", weight: "55g", friesSize: "small" }],
    ["Grand Beef Menu", { displayName: "GRAND\nBEEF", weight: "112g", friesSize: "large" }],
    ["Mega Beef Parmesan Menu", { displayName: "MEGA BEEF\nPARMESAN", weight: "112g", friesSize: "large" }],
    // Chicken Burgers
    ["Chicken Royal Menu", { displayName: "CHICKEN\nROYAL", friesSize: "small" }],
    ["Chicken Special Menu", { displayName: "CHICKEN\nSPECIAL", friesSize: "small" }],
    ["Tikka Burger Menu", { displayName: "TIKKA\nBURGER", spicy: true, friesSize: "large" }],
    ["Big Chicken Menu", { displayName: "BIG\nCHICKEN", friesSize: "large" }],
    ["Mega Chicken Parmesan Menu", { displayName: "MEGA CHICKEN\nPARMESAN", spicy: true, friesSize: "large" }],
    // Chicken & Fish Burgers
    ["Texas Crispy Chicken Menu", { displayName: "TEXAS CRISPY\nCHICKEN", friesSize: "large" }],
    ["Naan Grill Tikka Menu", { displayName: "NAAN GRILL\nTIKKA", spicy: true, friesSize: "large" }],
    ["Tikka Baguette Menu", { displayName: "TIKKA\nBAGUETTE", spicy: true, friesSize: "small" }],
    ["Chicken Baguette Menu", { displayName: "CHICKEN\nBAGUETTE", friesSize: "small" }],
    ["Fishy De Fish Menu", { displayName: "FISHY DE FISH", friesSize: "small" }],
    ["Sizzler Burger Menu", { displayName: "SIZZLER\nBURGER", friesSize: "small" }],
    // Chicken N Chicken Meals
    ["3 stk. Chicken Drumsticks Menu", { displayName: "3 CHICKEN\nDRUMSTICK", friesSize: "large", variants: "1 · 2 · 3 · 4 · 5 · 6 stk" }],
    ["12 stk. Hot Spicy Wings Menu", { displayName: "12 HOT SPICY\nWINGS", friesSize: "large", variants: "8 · 12 · 17 · 22 stk" }],
    ["6 stk. Chicken Strips Menu", { displayName: "6 CHICKEN\nSTRIPS", friesSize: "large", variants: "6 · 10 stk" }],
    ["6 stk. Chicken Tikka Menu", { displayName: "6 CHICKEN TIKKA\nSTRIPS", friesSize: "large" }],
    ["10 stk. Chicken Nuggets Menu", { displayName: "10 CHICKEN\nNUGGETS", friesSize: "large", variants: "6 · 10 · 15 · 20 stk" }],
    ["12 stk. Chicken Pop Corn Menu", { displayName: "12 CHICKEN\nPOP CORN", friesSize: "large", variants: "6 · 12 · 20 stk" }],
    // Wraps
    ["Chicken Fillet Wrap Menu", { displayName: "CHICKEN\nFILLET WRAP", friesSize: "small" }],
    ["Kebab Wrap Menu", { displayName: "CHICKEN\nKEBAB WRAP", friesSize: "small" }],
    ["Chicken Tikka Wrap Menu", { displayName: "CHICKEN\nTIKKA WRAP", spicy: true, friesSize: "large" }],
    ["Chuckle Chickpea Menu", { displayName: "CHUCKLE\nCHICKPEA", vegan: true, friesSize: "large" }],
    // Tacos
    ["Taco M Menu", { displayName: "SIZE: M" }],
    ["Taco L Menu", { displayName: "SIZE: L" }],
    ["Taco XL Menu", { displayName: "SIZE: XL" }],
    // Family
    ["Family 1", { displayName: "FAMILY 1 MENU" }],
    ["Family 2", { displayName: "FAMILY 2 MENU" }],
    ["Family 3", { displayName: "FAMILY 3 MENU" }],
    ["Family 4", { displayName: "FAMILY 4 MENU" }],
    ["Family 5", { displayName: "FAMILY 5 MENU" }],
    ["Family 6", { displayName: "FAMILY 6 MENU" }],
    // Sides display names
    ["Pommes Frites (medium)", { displayName: "POMMES\nFRITES\n(MEDIUM)" }],
    ["Pommes Frites (large)", { displayName: "POMMES\nFRITES\n(LARGE)" }],
    ["Potatoes Wedges", { displayName: "POTATO\nWEDGES" }],
    ["Frites Spirales", { displayName: "SPIRAL\nPOMMES\nFRITES" }],
    ["Frites Dippers", { displayName: "FRITES\nDIPPERS" }],
    ["6 Onion Rings", { displayName: "6 ONION\nRINGS" }],
    ["10 Chili Cheese Nuggets", { displayName: "10 CHILI\nCHEESE\nNUGGETS" }],
    ["6 Mozzarella Sticks", { displayName: "6 MOZZARELLA\nSTICKS" }],
    ["12 Cream Cheese Nuggets", { displayName: "12 CREAM\nCHEESE\nNUGGETS" }],
    // Kids
    ["Kids Meal 1 - Hamburger", { displayName: "KIDS\nMEAL 1" }],
    ["Kids Meal 2 - Chicken Strips 2 Stk.", { displayName: "KIDS\nMEAL 2" }],
    ["Kids Meal 3 - 5 stk. Chicken Pop Corn", { displayName: "KIDS\nMEAL 3" }],
    ["Kids Meal 4 - 4 stk. Chicken Nuggets", { displayName: "KIDS\nMEAL 4" }],
    ["Kids Meal 5 - 1 stk. Drumstick", { displayName: "KIDS\nMEAL 5" }],
    // Salads
    ["Veggie Salad", { displayName: "VEGGIE SALAD", vegan: true }],
    ["Chicken Strips Salad", { displayName: "CHICKEN STRIPS\nSALAD" }],
    ["Chicken Tikka Salad", { displayName: "CHICKEN TIKKA\nSALAD" }],
    // Coffee
    ["Americano", { displayName: "AMERICANO" }],
    ["Espresso dobbelt", { displayName: "DOBBELT\nESPRESSO" }],
    ["Tea", { displayName: "TEA" }],
    ["Cappuccino", { displayName: "CAPPUCCINO" }],
    ["Caffe latte", { displayName: "CAFFE LATTE" }],
    ["Varm kakao", { displayName: "VARM KAKAO" }],
    ["Flat white", { displayName: "FLAT WHITE" }],
    ["Cortador", { displayName: "CORTADO" }],
    ["Is latte - Caramel", { displayName: "CARAMEL\nIS-LATTE 0.5 CL" }],
    ["Is latte - Vanilla", { displayName: "VANILLA\nIS-LATTE 0.5 CL" }],
    ["Chocolate Muffin", { displayName: "CHOCOLATE\nMUFFIN" }],
    ["Tiramisu - Chocolate", { displayName: "TIRAMISU" }],
  ];

  for (const [name, fields] of updates) {
    if (itemMap[name]) {
      await MenuItem.findByIdAndUpdate(itemMap[name]._id, fields);
    }
  }
  console.log(`  Updated ${updates.length} item display fields`);

  // ===== 3. DIP/SAUCE URLS =====
  const CLD = "https://res.cloudinary.com/dtcjxk8si/image/upload";
  const dips6kr = [
    { name: "Mayonnaise", price: 6, image: `${CLD}/v1774752594/cnc-menu/sides-amp-dips/mayonnaise-25g.png` },
    { name: "Pomfrit Sauce", price: 6, image: `${CLD}/v1774752599/cnc-menu/sides-amp-dips/pomfrit-sauce-25g.png` },
    { name: "Curry Mango", price: 6, image: `${CLD}/v1774752600/cnc-menu/sides-amp-dips/curry-mango-25g.png` },
    { name: "Peri Peri (Chili)", price: 6, image: `${CLD}/v1774752601/cnc-menu/sides-amp-dips/peri-peri-30ml.png` },
    { name: "Honey Mustard", price: 6, image: `${CLD}/v1774752596/cnc-menu/sides-amp-dips/honey-mustard-25g.png` },
    { name: "Ketchup", price: 6, image: `${CLD}/v1774752593/cnc-menu/sides-amp-dips/ketchup-25g.png` },
    { name: "Sweet & Sour", price: 6, image: `${CLD}/v1774752597/cnc-menu/sides-amp-dips/sweet-sour-25g.png` },
    { name: "Barbecue", price: 6, image: `${CLD}/v1774752595/cnc-menu/sides-amp-dips/barbecue-25g.png` },
  ];
  const dips4kr = [
    { name: "Chili Mayo", price: 4, image: `${CLD}/v1774752593/cnc-menu/sides-amp-dips/ketchup-25g.png` },
    { name: "Algérienne", price: 4, image: `${CLD}/v1774752602/cnc-menu/sides-amp-dips/algerienne-10g.png` },
    { name: "Biggy Burger", price: 4, image: `${CLD}/v1774752604/cnc-menu/sides-amp-dips/biggy-burger-10g.png` },
    { name: "Samurai", price: 4, image: `${CLD}/v1774752594/cnc-menu/sides-amp-dips/mayonnaise-25g.png` },
  ];
  const ekstraItems = [
    { name: "Corn", price: 20, image: itemMap["Corn"]?.image || "" },
    { name: "Coleslaw", price: 8, image: itemMap["Coleslaw"]?.image || "" },
    { name: "Mr. Brownies", price: 8, image: itemMap["Chocolate Muffin"]?.image || "" },
    { name: "Chocolate OR Caramel", price: 29, image: itemMap["Tiramisu - Chocolate"]?.image || "" },
  ];

  // ===== 4. HELPER TO GET IDS =====
  function ids(names: string[]) {
    return names.map(n => {
      if (!itemMap[n]) console.warn(`  WARNING: item "${n}" not found`);
      return itemMap[n]?._id;
    }).filter(Boolean);
  }

  // ===== 5. CREATE MENU SCREENS =====
  const screens = [
    {
      screenId: "screen-1",
      title: "BEEF BURGER\nMEALS",
      layout: "meal-rows",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["Double Cheese Menu", "Triple Cheese Burger Menu", "O'ring Cheese Burger Meal", "Grand Beef Menu", "Mega Beef Parmesan Menu"]),
      bottomSection: { kind: "husk-dip", items: [...dips6kr, ...dips4kr] },
      sortOrder: 1,
    },
    {
      screenId: "screen-2a",
      title: "CHICKEN\nBURGERS\nMEALS",
      layout: "meal-rows",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["Chicken Royal Menu", "Chicken Special Menu", "Tikka Burger Menu", "Big Chicken Menu", "Mega Chicken Parmesan Menu"]),
      bottomSection: { kind: "ekstra", items: ekstraItems },
      sortOrder: 2,
    },
    {
      screenId: "screen-2b",
      title: "CHICKEN & FISH\nBURGERS MEALS",
      layout: "meal-rows",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["Texas Crispy Chicken Menu", "Naan Grill Tikka Menu", "Tikka Baguette Menu", "Chicken Baguette Menu", "Fishy De Fish Menu"]),
      bottomSection: { kind: "husk-dip", items: [...dips6kr, ...dips4kr] },
      sortOrder: 3,
    },
    {
      screenId: "screen-2c",
      title: "CHICKEN N CHICKEN\nMEALS",
      subtitle: 'Kyllingestykker håndpaneret i den unikke "Chicken n Chicken" panering.',
      layout: "meal-rows",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["3 stk. Chicken Drumsticks Menu", "12 stk. Hot Spicy Wings Menu", "6 stk. Chicken Strips Menu", "6 stk. Chicken Tikka Menu", "10 stk. Chicken Nuggets Menu", "12 stk. Chicken Pop Corn Menu"]),
      bottomSection: { kind: "dips-simple", items: dips6kr.slice(0, 6) },
      note: "Disse menuer kan opgraderes, og deres nummer kan ændres tilsvarende.",
      sortOrder: 4,
    },
    {
      screenId: "screen-3",
      title: "CHICKEN & VEGI\nBURGERS MEALS",
      layout: "meal-rows",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["Chicken Fillet Wrap Menu", "Kebab Wrap Menu", "Chicken Tikka Wrap Menu", "Chuckle Chickpea Menu"]),
      extraItems: ids(["Veggie Salad", "Chicken Strips Salad", "Chicken Tikka Salad", "Chicken Strips Rice Bowl"]),
      sortOrder: 5,
    },
    {
      screenId: "screen-4",
      title: "TACOS MEALS",
      layout: "tacos",
      storMenu: { text: "STOR MENU", price: "+10 KR" },
      items: ids(["Taco M Menu", "Taco L Menu", "Taco XL Menu"]),
      sortOrder: 6,
    },
    {
      screenId: "screen-5",
      title: "FAMILY & SHARING\nBUCKETS MEAL",
      subtitle: "Alle familie menuer indeholder: 1 x 1.5L sodavand + 4 x pomfriter",
      layout: "family",
      storMenu: { text: "STOR MENU", price: "+30 KR" },
      items: ids(["Family 1", "Family 2", "Family 3", "Family 4", "Family 5", "Family 6"]),
      bottomSection: { kind: "husk-dip", items: [...dips6kr, ...dips4kr] },
      sortOrder: 7,
    },
    {
      screenId: "screen-6",
      title: "SIDES",
      layout: "grid-2col",
      items: ids([
        "Pommes Frites (medium)", "10 Chili Cheese Nuggets",
        "Pommes Frites (large)", "6 Mozzarella Sticks",
        "Potatoes Wedges", "12 Cream Cheese Nuggets",
        "Frites Spirales", "6 Nachos Cheese Triangle",
        "Frites Dippers", "6 Smoky Cheese Donuts",
        "6 Onion Rings", "6 Smily Frites",
      ]),
      bottomSection: { kind: "dips-simple", items: dips6kr.slice(0, 6) },
      sortOrder: 8,
    },
    {
      screenId: "screen-7",
      title: "KIDS MEAL",
      layout: "kids",
      storMenu: { text: "SODAVAND", price: "+10 KR" },
      items: ids(["Kids Meal 1 - Hamburger", "Kids Meal 2 - Chicken Strips 2 Stk.", "Kids Meal 3 - 5 stk. Chicken Pop Corn", "Kids Meal 4 - 4 stk. Chicken Nuggets", "Kids Meal 5 - 1 stk. Drumstick"]),
      bottomSection: { kind: "ekstra", items: ekstraItems },
      sortOrder: 9,
    },
    {
      screenId: "screen-8",
      title: "FULL MENU\nPRICE LIST",
      layout: "price-list",
      items: [], // price list uses all items from all categories
      sortOrder: 10,
    },
    {
      screenId: "screen-9a",
      title: "KOLDE DRIKKE",
      layout: "drinks",
      items: ids(["Pepsi", "Pepsi Max", "Faxe Kondi", "Pepsi Max 1.5l", "Faxe Kondi 1.5l", "Kildevand 0.5l", "Danskvand 0.5l", "Capri-Sun", "Red Bull",
        "SUNDAE - Karamel Toffee", "SUNDAE - Chokolade", "SUNDAE - Vanilje", "SUNDAE - Oreo", "SUNDAE - Jordbær", "SUNDAE - Smartis"]),
      sortOrder: 11,
    },
    {
      screenId: "screen-9b",
      title: "KAFFE & KAGE",
      layout: "coffee",
      items: ids(["Americano", "Espresso dobbelt", "Tea", "Cappuccino", "Caffe latte", "Varm kakao", "Flat white", "Cortador", "Is latte - Caramel", "Is latte - Vanilla", "Chocolate Muffin", "Tiramisu - Chocolate", "Mr. Brownie"]),
      sortOrder: 12,
    },
  ];

  for (const screen of screens) {
    await MenuScreen.create(screen);
    console.log(`  Screen ${screen.screenId}: ${screen.items.length} items`);
  }

  const totalItems = await MenuItem.countDocuments();
  const totalScreens = await MenuScreen.countDocuments();
  console.log(`\nDone! ${totalItems} menu items, ${totalScreens} screens`);

  await mongoose.disconnect();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
