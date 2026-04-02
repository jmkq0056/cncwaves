import mongoose from "mongoose";
import fs from "fs";
import path from "path";
import dotenv from "dotenv";

dotenv.config({ path: path.join(__dirname, "..", ".env.local") });

const MONGO_URI = process.env.MONGO_URI!;

// Inline schemas to avoid import issues with tsx
const AddonOptionSchema = new mongoose.Schema({
  name: String, description: String, price: { type: Number, default: 0 }, image: String,
}, { _id: false });

const AddonSchema = new mongoose.Schema({
  name: String, description: String,
  selection: { type: String, enum: ["one", "multiple", "custom"], default: "multiple" },
  min: { type: Number, default: 0 }, max: { type: Number, default: 0 },
  required: { type: Boolean, default: false }, options: [AddonOptionSchema],
}, { _id: false });

const CategoryModel = mongoose.model("Category", new mongoose.Schema({
  name: String, slug: String, description: String, image: String, sortOrder: { type: Number, default: 0 },
}, { timestamps: true }));

const ItemModel = mongoose.model("Item", new mongoose.Schema({
  name: String, description: String, price: Number, image: String,
  category: { type: mongoose.Schema.Types.ObjectId, ref: "Category" },
  categorySlug: String, soldOut: { type: Boolean, default: false },
  sortOrder: { type: Number, default: 0 }, addons: [AddonSchema],
}, { timestamps: true }));

async function seed() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);

  const menuPath = path.join(__dirname, "..", "..", "cnc-solutions", "menu-data", "full-menu.json");
  const menu = JSON.parse(fs.readFileSync(menuPath, "utf-8"));

  // Clear existing data
  await CategoryModel.deleteMany({});
  await ItemModel.deleteMany({});
  console.log("Cleared old data.");

  let totalItems = 0;

  for (const [catIdx, cat] of menu.categories.entries()) {
    const category = await CategoryModel.create({
      name: cat.name,
      slug: cat.slug,
      description: cat.description || "",
      image: cat.image_cloudinary || cat.image_original || "",
      sortOrder: cat.sort_order || catIdx,
    });
    console.log(`  Category: ${cat.name} (${cat.items.length} items)`);

    for (const [itemIdx, item] of cat.items.entries()) {
      const addons = (item.addons || []).map((addon: any) => ({
        name: addon.name,
        description: addon.description || "",
        selection: addon.selection || "multiple",
        min: addon.min || 0,
        max: addon.max || 0,
        required: addon.required || false,
        options: (addon.options || []).map((opt: any) => ({
          name: opt.name,
          description: opt.description || "",
          price: opt.price || 0,
          image: opt.image_cloudinary || opt.image_original || "",
        })),
      }));

      await ItemModel.create({
        name: item.name,
        description: item.description || "",
        price: item.price,
        image: item.image_cloudinary || item.image_original || "",
        category: category._id,
        categorySlug: cat.slug,
        soldOut: false,
        sortOrder: itemIdx,
        addons,
      });
      totalItems++;
    }
  }

  console.log(`\nSeeded ${menu.categories.length} categories and ${totalItems} items.`);
  await mongoose.disconnect();
}

seed().catch((e) => { console.error(e); process.exit(1); });
