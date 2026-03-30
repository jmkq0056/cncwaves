/**
 * Batch process all menu item images:
 * 1. Use Cloudinary e_bgremoval to get bg-removed version
 * 2. Download that bg-removed image
 * 3. Auto-crop (trim transparent borders) locally with Pillow
 * 4. Upload cropped version to Cloudinary (cnc-menu-clean/ folder)
 * 5. Update MongoDB MenuItem.cleanImage with new URL
 *
 * Run: cd signage && npx tsx scripts/clean-menu-images.ts
 */
import "dotenv/config";
import mongoose from "mongoose";
import { v2 as cloudinary } from "cloudinary";
import https from "https";
import http from "http";
import fs from "fs";
import path from "path";
import { execSync } from "child_process";

const MONGO_URI = process.env.MONGO_URI!;
if (!MONGO_URI) { console.error("Set MONGO_URI in .env.local"); process.exit(1); }

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

const MenuItemSchema = new mongoose.Schema({
  name: String, image: String, cloudinaryPublicId: String,
  cleanImage: String, cleanCloudinaryId: String,
}, { strict: false, timestamps: true });

const MenuItem = mongoose.models.MenuItem || mongoose.model("MenuItem", MenuItemSchema, "menuItems");
const TMP = "/tmp/cnc-clean-imgs";

function download(url: string, dest: string): Promise<void> {
  return new Promise((resolve, reject) => {
    const mod = url.startsWith("https") ? https : http;
    mod.get(url, (res) => {
      if (res.statusCode === 301 || res.statusCode === 302) {
        return download(res.headers.location!, dest).then(resolve).catch(reject);
      }
      if (res.statusCode !== 200) return reject(new Error(`HTTP ${res.statusCode}`));
      const file = fs.createWriteStream(dest);
      res.pipe(file);
      file.on("finish", () => { file.close(); resolve(); });
    }).on("error", reject);
  });
}

// Build Cloudinary URL with e_bgremoval
function bgRemovedUrl(originalUrl: string): string {
  if (!originalUrl.includes("/upload/")) return originalUrl;
  return originalUrl.replace("/upload/", "/upload/e_bgremoval/");
}

async function main() {
  await mongoose.connect(MONGO_URI);
  console.log("Connected to MongoDB");
  fs.mkdirSync(TMP, { recursive: true });

  // Verify Pillow
  try { execSync("python3 -c 'from PIL import Image'", { stdio: "ignore" }); }
  catch { console.error("Need Pillow: pip3 install Pillow"); process.exit(1); }

  const items = await MenuItem.find({ image: { $ne: "" } }).lean();
  console.log(`${items.length} items with images\n`);

  let ok = 0, skip = 0, fail = 0;

  for (const item of items as any[]) {
    if (!item.image) { skip++; continue; }
    if (item.cleanImage) { console.log(`SKIP ${item.name}`); skip++; continue; }

    const slug = (item.cloudinaryPublicId || "x").replace(/\//g, "_");
    const dlPath = path.join(TMP, `${slug}_nobg.png`);
    const cropPath = path.join(TMP, `${slug}_crop.png`);

    try {
      // 1. Download bg-removed version from Cloudinary
      const url = bgRemovedUrl(item.image);
      await download(url, dlPath);

      // 2. Auto-crop with Pillow (trim transparent pixels)
      execSync(`python3 -c "
from PIL import Image
img = Image.open('${dlPath}').convert('RGBA')
bbox = img.getbbox()
if bbox:
    img = img.crop(bbox)
img.save('${cropPath}')
print(f'{img.size[0]}x{img.size[1]}')
"`, { encoding: "utf-8", timeout: 15000 });

      // 3. Upload cropped to Cloudinary
      const up = await cloudinary.uploader.upload(cropPath, {
        folder: "cnc-menu-clean",
        public_id: slug,
        overwrite: true,
        format: "png",
      });

      // 4. Update MongoDB
      await MenuItem.findByIdAndUpdate(item._id, {
        cleanImage: up.secure_url,
        cleanCloudinaryId: up.public_id,
      });

      ok++;
      console.log(`OK  ${item.name} → ${up.secure_url.slice(-50)}`);
    } catch (e: any) {
      fail++;
      console.log(`FAIL ${item.name}: ${e.message?.slice(0, 60)}`);
    }

    // Cleanup
    try { fs.unlinkSync(dlPath); } catch {}
    try { fs.unlinkSync(cropPath); } catch {}
  }

  console.log(`\nDone: ${ok} ok, ${skip} skipped, ${fail} failed`);
  try { fs.rmdirSync(TMP); } catch {}
  await mongoose.disconnect();
}

main().catch(e => { console.error(e); process.exit(1); });
