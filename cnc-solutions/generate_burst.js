/**
 * Generate 9 burst PNGs at 2160x3840 using Playwright + HTML
 * Screen 1: Full-screen CNC stripes (3 equal bars filling the entire screen)
 * Screen 2: TASTE / IS A
 * Screens 3-9: P, A, S, S, I, O, N
 */
const { chromium } = require('playwright');
const path = require('path');
const fs = require('fs');

// Cloudinary upload
let cloudinary;
try {
  cloudinary = require('cloudinary').v2;
  cloudinary.config({
    cloud_name: 'dtcjxk8si',
    api_key: '327179765556728',
    api_secret: 'J05WLti2g_12vdN5L1ARA7KkED8',
  });
} catch {
  console.error('npm install cloudinary');
  process.exit(1);
}

// MongoDB
let MongoClient;
try {
  MongoClient = require('mongodb').MongoClient;
} catch {
  console.error('npm install mongodb');
  process.exit(1);
}

const MONGO_URI = 'mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority';
const OUTPUT = path.join(__dirname, 'seed_output');
fs.mkdirSync(OUTPUT, { recursive: true });

const GRADIENTS = [
  ['#3d0d0f', '#5a1518'],
  ['#5a1518', '#721c1f'],
  ['#721c1f', '#8a2325'],
  ['#8a2325', '#a52e28'],
  ['#a52e28', '#c03a1c'],
  ['#c03a1c', '#d85010'],
  ['#d85010', '#e86505'],
  ['#e86505', '#f17d00'],
  ['#f17d00', '#f89020'],
];

const CONTENT = [
  'STRIPES',
  'TASTE_ISA',
  'P', 'A', 'S', 'S', 'I', 'O', 'N',
];

function makeHTML(idx) {
  const [c1, c2] = GRADIENTS[idx];
  const content = CONTENT[idx];

  let bodyContent = '';

  if (content === 'STRIPES') {
    // 3 vertical bars filling the entire screen
    bodyContent = `
      <div style="display:flex; width:100%; height:100%; align-items:stretch;">
        <div style="flex:1; background:#9d292b;"></div>
        <div style="flex:1; background:#f17d00;"></div>
        <div style="flex:1; background:#9d292b;"></div>
      </div>`;
  } else if (content === 'TASTE_ISA') {
    bodyContent = `
      <div style="display:flex; flex-direction:column; justify-content:center; align-items:center; height:100%; gap:20px;">
        <div style="font-size:200px; font-weight:700; color:white; letter-spacing:8px; text-shadow:0 4px 40px rgba(0,0,0,0.4);">TASTE</div>
        <div style="font-size:200px; font-weight:700; color:white; letter-spacing:8px; text-shadow:0 4px 40px rgba(0,0,0,0.4);">IS A</div>
      </div>`;
  } else {
    bodyContent = `
      <div style="display:flex; justify-content:center; align-items:center; height:100%;">
        <div style="font-size:700px; font-weight:700; color:white; line-height:1; text-shadow:0 6px 60px rgba(0,0,0,0.4);">${content}</div>
      </div>`;
  }

  return `<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
<style>
  * { margin:0; padding:0; box-sizing:border-box; }
  body {
    width: 1080px;
    height: 1920px;
    background: linear-gradient(155deg, ${c1} 0%, ${c2} 100%);
    font-family: 'Oswald', sans-serif;
    overflow: hidden;
  }
</style>
</head>
<body>${bodyContent}</body>
</html>`;
}

async function main() {
  const browser = await chromium.launch();

  for (let i = 0; i < 9; i++) {
    const num = i + 1;
    const html = makeHTML(i);
    const htmlPath = path.join(OUTPUT, `burst_${num}.html`);
    const pngPath = path.join(OUTPUT, `burst_screen_${num}.png`);

    fs.writeFileSync(htmlPath, html);

    const ctx = await browser.newContext({
      viewport: { width: 1080, height: 1920 },
      deviceScaleFactor: 2,
    });
    const page = await ctx.newPage();
    await page.goto('file://' + htmlPath, { waitUntil: 'networkidle' });
    await page.waitForTimeout(2000); // wait for Oswald font to load
    await page.screenshot({ path: pngPath, type: 'png' });
    await ctx.close();

    // Upload to Cloudinary
    const result = await cloudinary.uploader.upload(pngPath, {
      folder: 'cnc-signage',
      public_id: `burst-screen-${num}`,
      overwrite: true,
      format: 'png',
    });

    console.log(`Screen ${num}: ${CONTENT[i]} → ${result.secure_url.slice(-50)}`);

    // Cleanup HTML
    fs.unlinkSync(htmlPath);
  }

  await browser.close();

  // Update MongoDB burst URLs
  console.log('\nUpdating MongoDB...');
  const client = new MongoClient(MONGO_URI);
  await client.connect();
  const db = client.db('CNCtest');

  for (let i = 1; i <= 9; i++) {
    const result = await cloudinary.api.resource(`cnc-signage/burst-screen-${i}`);
    await db.collection('screens').updateOne(
      { _id: i },
      { $set: {
        burstEnabled: true,
        burstImageUrl: result.secure_url,
        burstCloudinaryId: result.public_id,
        burstInterval: 3,
        burstDuration: 10,
      }}
    );
    console.log(`  Screen ${i}: burst updated`);
  }

  await client.close();
  console.log('Done!');
}

main().catch(e => { console.error(e); process.exit(1); });
