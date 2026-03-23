import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import mongoose from "mongoose";
import bcrypt from "bcryptjs";
import * as fs from "fs";
import * as path from "path";

const MONGO_URI = process.env.MONGO_URI!;

// Inline schemas so we don't need Next.js module resolution
const UserSchema = new mongoose.Schema({
  email: { type: String, required: true, unique: true, lowercase: true },
  password: { type: String, required: true },
  name: { type: String, default: "" },
}, { timestamps: true });

const ProductSchema = new mongoose.Schema({
  code: { type: String, required: true, unique: true },
  name: { type: String, required: true },
  brand: { type: String, default: "" },
  category: { type: String, default: "" },
  unit: { type: String, default: "" },
  image: { type: String, default: "" },
}, { timestamps: true });

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);

  const User = mongoose.model("User", UserSchema);
  const Product = mongoose.model("Product", ProductSchema);

  // Seed user (same as Sanitos login)
  console.log("Seeding user...");
  const hashedPw = await bcrypt.hash("Chicken0036", 10);
  await User.findOneAndUpdate(
    { email: "info@chickennchicken.dk" },
    { email: "info@chickennchicken.dk", password: hashedPw, name: "CNC Admin" },
    { upsert: true }
  );
  console.log("User seeded: info@chickennchicken.dk");

  // Read products from the scraped Excel using a simple JSON approach
  // First, let's read from the scraper output. We'll parse the Excel with a simple approach.
  // Since we can't easily import openpyxl in TS, let's read from a JSON export.
  const jsonPath = path.join(__dirname, "..", "..", "products.json");
  if (!fs.existsSync(jsonPath)) {
    console.log("No products.json found. Run 'python3 export_json.py' first.");
    console.log("Skipping product seed.");
    await mongoose.disconnect();
    return;
  }

  const products = JSON.parse(fs.readFileSync(jsonPath, "utf-8"));
  console.log(`Seeding ${products.length} products...`);

  let created = 0;
  let updated = 0;

  for (const p of products) {
    const result = await Product.findOneAndUpdate(
      { code: p.code },
      {
        code: p.code,
        name: p.name,
        brand: p.brand || "",
        category: p.category || "",
        unit: p.unit || "",
        image: p.image || "",
      },
      { upsert: true, new: true }
    );
    if (result.createdAt.getTime() === result.updatedAt.getTime()) {
      created++;
    } else {
      updated++;
    }
  }

  console.log(`Products: ${created} created, ${updated} updated`);
  await mongoose.disconnect();
  console.log("Done!");
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
