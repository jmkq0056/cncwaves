import mongoose from "mongoose";
import { v2 as cloudinary } from "cloudinary";
import * as fs from "fs";
import * as path from "path";

const MONGO_URI =
  "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority";

cloudinary.config({
  cloud_name: "dtcjxk8si",
  api_key: "327179765556728",
  api_secret: "J05WLti2g_l2vdN5L1ARA7KkED8",
});

const ProductSchema = new mongoose.Schema({
  code: String,
  name: String,
  brand: String,
  category: String,
  unit: String,
  image: String,
}, { timestamps: true });

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);
  const Product = mongoose.model("Product", ProductSchema);

  const products = await Product.find({});
  console.log(`Found ${products.length} products`);

  const assetsDir = path.join(__dirname, "..", "assets");
  const appAssetsDir = path.join(__dirname, "..", "app", "public", "assets");

  let uploaded = 0;
  let skipped = 0;
  let failed = 0;
  let noImage = 0;

  for (const product of products) {
    const img = product.image;

    // Skip if no image or already a cloudinary URL
    if (!img) {
      noImage++;
      continue;
    }
    if (img.startsWith("http")) {
      skipped++;
      continue;
    }

    // Find the local file
    const localFilename = `${product.code}_${img}`;
    let filePath = path.join(appAssetsDir, localFilename);
    if (!fs.existsSync(filePath)) {
      filePath = path.join(assetsDir, localFilename);
    }
    if (!fs.existsSync(filePath)) {
      // Try the image value directly as filename
      filePath = path.join(appAssetsDir, img);
      if (!fs.existsSync(filePath)) {
        filePath = path.join(assetsDir, img);
      }
    }

    if (!fs.existsSync(filePath)) {
      console.log(`  [SKIP] ${product.code} - file not found: ${localFilename}`);
      failed++;
      continue;
    }

    try {
      const result = await cloudinary.uploader.upload(filePath, {
        folder: "cnc-stock/products",
        public_id: `${product.code}`,
        overwrite: true,
        resource_type: "image",
        transformation: [
          { width: 800, height: 800, crop: "limit", quality: "auto" },
        ],
      });

      await Product.updateOne(
        { _id: product._id },
        { $set: { image: result.secure_url } }
      );

      uploaded++;
      console.log(`  [${uploaded}] ${product.code} -> ${result.secure_url}`);
    } catch (err: any) {
      console.log(`  [FAIL] ${product.code}: ${err.message}`);
      failed++;
    }
  }

  console.log(`\nDone!`);
  console.log(`  Uploaded: ${uploaded}`);
  console.log(`  Skipped (already cloudinary): ${skipped}`);
  console.log(`  No image: ${noImage}`);
  console.log(`  Failed: ${failed}`);

  await mongoose.disconnect();
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
