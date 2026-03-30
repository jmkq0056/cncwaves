/**
 * Seed signage screens 1-9 with inspiration menu images:
 * - Upload each image to Cloudinary (cnc-signage folder)
 * - Assign to the correct screen with rotation
 * - Keep existing schedule (11:00-23:05) and burst config
 * - Screens 10-20 left untouched
 *
 * Run: cd signage && npx tsx scripts/seed-screens-from-inspiration.ts
 */
import "dotenv/config";
import mongoose from "mongoose";
import { v2 as cloudinary } from "cloudinary";
import fs from "fs";
import path from "path";
import crypto from "crypto";

const MONGO_URI = process.env.MONGO_URI!;
if (!MONGO_URI) { console.error("Set MONGO_URI in .env.local"); process.exit(1); }

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

const INSPIRATION = path.resolve(__dirname, "../../cnc-solutions/inspiration menu/screens");

// Screen → image files mapping (exactly matching the inspiration folder structure)
const SCREEN_MAP: Record<number, string[]> = {
  1: ["screen-1/beef-burger-meals.png"],
  2: ["screen-2/chicken-burgers-meals.png", "screen-2/chicken-fish-burgers-meals.png", "screen-2/chicken-n-chicken-meals.png"],
  3: ["screen-3/wraps-vegi-salad-meals.png", "screen-3/ris-bowl-promo.jpg"],
  4: ["screen-4/tacos-meals.png"],
  5: ["screen-5/family-sharing-buckets.png"],
  6: ["screen-6/sides.png"],
  7: ["screen-7/kids-meal.png"],
  8: ["screen-8/full-menu-price-list.jpg"],
  9: ["screen-9/cold-drinks-shakes-sundae.jpg", "screen-9/kaffe-kage.jpg"],
};

const SCREEN_NAMES: Record<number, string> = {
  1: "Beef Burger Meals",
  2: "Chicken Burgers",
  3: "Wraps & Salad",
  4: "Tacos Meals",
  5: "Family Buckets",
  6: "Sides",
  7: "Kids Meal",
  8: "Full Price List",
  9: "Drinks & Coffee",
};

async function main() {
  await mongoose.connect(MONGO_URI);
  console.log("Connected to MongoDB\n");

  const db = mongoose.connection.db!;
  const screensCol = db.collection("screens");
  const imagesCol = db.collection("images");

  for (const [screenNum, files] of Object.entries(SCREEN_MAP)) {
    const num = parseInt(screenNum);
    console.log(`=== Screen ${num}: ${SCREEN_NAMES[num]} (${files.length} images) ===`);

    const screenImages: any[] = [];

    for (let i = 0; i < files.length; i++) {
      const filePath = path.join(INSPIRATION, files[i]);
      if (!fs.existsSync(filePath)) {
        console.log(`  SKIP ${files[i]} (not found)`);
        continue;
      }

      const filename = path.basename(filePath, path.extname(filePath));
      const publicId = `cnc-signage/screen-${num}-${filename}`;

      // Upload to Cloudinary
      console.log(`  Uploading ${files[i]}...`);
      const result = await cloudinary.uploader.upload(filePath, {
        folder: "cnc-signage",
        public_id: `screen-${num}-${filename}`,
        overwrite: true,
        format: "png",
      });

      // Save to images collection
      await imagesCol.updateOne(
        { cloudinaryPublicId: result.public_id },
        {
          $set: {
            name: `${SCREEN_NAMES[num]} ${i + 1}`,
            category: "Menu Boards",
            cloudinaryPublicId: result.public_id,
            url: result.secure_url,
            width: result.width,
            height: result.height,
            format: result.format,
            sizeBytes: result.bytes,
            updatedAt: new Date(),
          },
          $setOnInsert: { createdAt: new Date() },
        },
        { upsert: true }
      );

      screenImages.push({
        filename: `${filename}.png`,
        cloudinaryPublicId: result.public_id,
        url: result.secure_url,
        order: i,
      });

      console.log(`  OK → ${result.secure_url.slice(-50)}`);
    }

    // Compute playlist hash
    const hashData = screenImages.map(img => `${img.url}:${img.order}`).join("|");
    const playlistHash = crypto.createHash("md5").update(hashData).digest("hex");

    // Update screen config
    await screensCol.updateOne(
      { _id: num as any },
      {
        $set: {
          name: SCREEN_NAMES[num],
          images: screenImages,
          rotationInterval: 60000, // 60 seconds
          published: true,
          publishedAt: new Date(),
          playlistHash,
          screenOnTime: "11:00",
          screenOffTime: "23:05",
          screenOffMode: "dim",
          updatedAt: new Date(),
        },
        $setOnInsert: { createdAt: new Date() },
      },
      { upsert: true }
    );

    console.log(`  Screen ${num} → ${screenImages.length} images, hash: ${playlistHash.slice(0, 8)}\n`);
  }

  console.log("Done! Screens 1-9 seeded from inspiration images.");
  console.log("Screens 10-20 untouched.\n");

  // Print summary
  for (let i = 1; i <= 9; i++) {
    const s = await screensCol.findOne({ _id: i as any });
    console.log(`  Screen ${i}: ${(s as any)?.images?.length || 0} images | ${(s as any)?.name} | ON ${(s as any)?.screenOnTime}-${(s as any)?.screenOffTime}`);
  }

  await mongoose.disconnect();
}

main().catch(e => { console.error(e); process.exit(1); });
