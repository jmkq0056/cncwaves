const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch();
  const ctx = await browser.newContext({ viewport: { width: 1400, height: 1200 } });
  const page = await ctx.newPage();

  // Capture console errors
  page.on('pageerror', err => console.log('PAGE ERROR:', err.message));
  page.on('console', msg => {
    if (msg.type() === 'error') console.log('CONSOLE ERROR:', msg.text());
  });

  // Login
  await page.goto('http://localhost:3001/admin');
  await page.waitForSelector('input[type="password"]');
  await page.fill('input[type="password"]', '1234');
  await page.click('button[type="submit"]');
  await page.waitForTimeout(3000);

  const screens = ['screen-1', 'screen-2a', 'screen-3', 'screen-5', 'screen-6', 'screen-7', 'screen-9b'];
  for (const id of screens) {
    await page.goto(`http://localhost:3001/admin/menu/${id}`);
    await page.waitForTimeout(6000);

    // Check for any dialog (alert from export failure)
    page.once('dialog', async dialog => {
      console.log(`  ALERT on ${id}: ${dialog.message()}`);
      await dialog.dismiss();
    });

    try {
      const [download] = await Promise.all([
        page.waitForEvent('download', { timeout: 20000 }),
        page.click('button:has-text("Export PNG")'),
      ]);
      await download.saveAs(`/tmp/v3-export-${id}.png`);
      console.log(`${id}: EXPORT OK`);
    } catch (e) {
      console.log(`${id}: EXPORT FAILED - ${e.message}`);
      await page.screenshot({ path: `/tmp/v3-fail-${id}.png` });
    }
  }

  await browser.close();
  console.log('Done');
})();
