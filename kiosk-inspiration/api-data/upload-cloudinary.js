const cloudinary = require('cloudinary').v2;
const fs = require('fs');
const path = require('path');

cloudinary.config({
  cloud_name: 'dtcjxk8si',
  api_key: '327179765556728',
  api_secret: 'J05WLti2g_12vdN5L1ARA7KkED8'
});

const IMG_DIR = path.join(__dirname, 'images');
const CONCURRENCY = 15;

function walkDir(dir) {
  let results = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      results = results.concat(walkDir(full));
    } else if (/\.(png|jpg|jpeg|webp)$/i.test(entry.name)) {
      results.push(full);
    }
  }
  return results;
}

async function upload(filepath) {
  const rel = path.relative(IMG_DIR, filepath);
  const publicId = 'cnc-kiosk/' + rel.replace(/\.[^.]+$/, '').replace(/\\/g, '/');
  try {
    const result = await cloudinary.uploader.upload(filepath, {
      public_id: publicId,
      overwrite: false,
      resource_type: 'image'
    });
    return { rel, url: result.secure_url, ok: true };
  } catch (e) {
    if (e.message && e.message.includes('already exists')) {
      return { rel, url: `https://res.cloudinary.com/dtcjxk8si/image/upload/${publicId}`, ok: true };
    }
    return { rel, error: e.message, ok: false };
  }
}

async function main() {
  const files = walkDir(IMG_DIR);
  console.log(`Uploading ${files.length} images with ${CONCURRENCY} parallel workers...\n`);

  const manifest = {};
  let done = 0;
  let errors = 0;

  // Process in chunks of CONCURRENCY
  for (let i = 0; i < files.length; i += CONCURRENCY) {
    const chunk = files.slice(i, i + CONCURRENCY);
    const results = await Promise.all(chunk.map(f => upload(f)));
    for (const r of results) {
      done++;
      if (r.ok) {
        manifest[r.rel] = r.url;
      } else {
        errors++;
        console.log(`  FAIL: ${r.rel} - ${r.error}`);
      }
    }
    process.stdout.write(`  ${done}/${files.length} done\r`);
  }

  console.log(`\n\nDone! ${done - errors} uploaded, ${errors} errors`);

  fs.writeFileSync(
    path.join(__dirname, 'cloudinary-manifest.json'),
    JSON.stringify(manifest, null, 2)
  );
  console.log(`Manifest saved: ${Object.keys(manifest).length} entries`);
}

main().catch(console.error);
