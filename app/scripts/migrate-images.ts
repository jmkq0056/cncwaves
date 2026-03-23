import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import mongoose from "mongoose";
import { v2 as cloudinary } from "cloudinary";
import * as fs from "fs";
import * as path from "path";

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

const ProductSchema = new mongoose.Schema({
  code: String, name: String, brand: String,
  category: String, unit: String, image: String,
}, { timestamps: true });

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(process.env.MONGO_URI!);
  const Product = mongoose.model("Product", ProductSchema);

  const products = await Product.find({});
  console.log(`Found ${products.length} products`);

  const assetsDir = path.join(__dirname, "..", "public", "assets");

  let uploaded = 0, skipped = 0, failed = 0, noImage = 0;

  for (const product of products) {
    const img = product.image;

    if (!img) { noImage++; continue; }
    if (img.startsWith("http")) { skipped++; continue; }

    // Local file: stored as just the hash filename, but on disk it's code_hash.ext
    const localFilename = `${product.code}_${img}`;
    let filePath = path.join(assetsDir, localFilename);
    if (!fs.existsSync(filePath)) {
      filePath = path.join(assetsDir, img);
    }

    if (!fs.existsSync(filePath)) {
      console.log(`  [SKIP] ${product.code} - not found: ${localFilename}`);
      failed++;
      continue;
    }

    try {
      const result = await cloudinary.uploader.upload(filePath, {
        folder: "cnc-stock/products",
        public_id: product.code,
        overwrite: true,
        resource_type: "image",
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

  console.log(`\nDone! Uploaded: ${uploaded}, Skipped: ${skipped}, No image: ${noImage}, Failed: ${failed}`);
  await mongoose.disconnect();
}

main().catch((err) => { console.error(err); process.exit(1); });
