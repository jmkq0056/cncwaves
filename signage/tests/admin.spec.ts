import { test, expect } from "@playwright/test";

const PIN = "1111";

// Helper: login and land on dashboard
async function login(page: any) {
  await page.goto("/admin");
  // Wait for initial auth check to complete before interacting
  await page.waitForLoadState("networkidle");

  const pinInput = page.locator('input[placeholder="Enter PIN"]');
  if (await pinInput.isVisible({ timeout: 5000 }).catch(() => false)) {
    await pinInput.fill(PIN);
    await Promise.all([
      page.waitForResponse((r: any) => r.url().includes("/api/admin/login")),
      page.click("text=Login"),
    ]);
    // Wait for dashboard to load after login
    await page.waitForLoadState("networkidle");
  }
  await expect(page.locator("text=All Screens")).toBeVisible({ timeout: 20000 });
}

test.describe("Login", () => {
  test("shows login form", async ({ page }) => {
    await page.goto("/admin");
    await expect(page.locator('input[placeholder="Enter PIN"]')).toBeVisible({ timeout: 10000 });
  });

  test("rejects wrong PIN", async ({ page }) => {
    await page.goto("/admin");
    await page.fill('input[placeholder="Enter PIN"]', "9999");
    await page.click("text=Login");
    await expect(page.locator("text=Invalid PIN")).toBeVisible();
  });

  test("accepts correct PIN", async ({ page }) => {
    await login(page);
  });
});

test.describe("Dashboard", () => {
  test("shows 20 screen cards", async ({ page }) => {
    await login(page);
    await expect(page.locator("text=#1").first()).toBeVisible();
    await expect(page.locator("text=#20")).toBeVisible();
  });

  test("click screen navigates to edit", async ({ page }) => {
    await login(page);
    await page.locator("text=#1").first().click();
    await expect(page.locator("text=Screen #1")).toBeVisible({ timeout: 15000 });
  });
});

test.describe("Edit Screen", () => {
  test("shows name + rotation + toggle", async ({ page }) => {
    await login(page);
    await page.goto("/admin/screen/1");
    await expect(page.locator("text=Screen #1")).toBeVisible({ timeout: 15000 });
    await expect(page.locator("text=Screen Name")).toBeVisible();
    await expect(page.locator("text=Rotation Interval")).toBeVisible();
    await expect(page.locator("text=DRAFT").or(page.locator("text=LIVE"))).toBeVisible();
  });

  test("save + unsaved changes indicator", async ({ page }) => {
    await login(page);
    await page.goto("/admin/screen/20");
    await expect(page.locator("text=Screen #20")).toBeVisible({ timeout: 15000 });

    const nameInput = page.locator('input[type="text"]').first();
    await nameInput.clear();
    await nameInput.fill("Test E2E");
    await expect(page.locator("text=Unsaved changes")).toBeVisible();

    await page.click("text=Save");
    await expect(page.locator("text=Saved!")).toBeVisible({ timeout: 15000 });

    // Reset
    await nameInput.clear();
    await nameInput.fill("Screen 20");
    await page.click("text=Save");
    await expect(page.locator("text=Saved!")).toBeVisible({ timeout: 15000 });
  });

  test("DRAFT/LIVE toggle", async ({ page }) => {
    await login(page);
    await page.goto("/admin/screen/20");
    await expect(page.locator("text=Screen #20")).toBeVisible({ timeout: 15000 });

    const toggle = page.locator('button[class*="rounded-full"]').first();
    const wasDraft = await page.locator("text=DRAFT").isVisible();

    await toggle.click();
    if (wasDraft) {
      await expect(page.locator("text=LIVE")).toBeVisible();
    } else {
      await expect(page.locator("text=DRAFT")).toBeVisible();
    }

    // Toggle back
    await toggle.click();
    if (wasDraft) {
      await expect(page.locator("text=DRAFT")).toBeVisible();
    } else {
      await expect(page.locator("text=LIVE")).toBeVisible();
    }
  });

  test("back button works", async ({ page }) => {
    await login(page);
    await page.goto("/admin/screen/1");
    await expect(page.locator("text=Screen #1")).toBeVisible({ timeout: 15000 });
    await page.click("text=Back");
    await expect(page.locator("text=All Screens")).toBeVisible({ timeout: 15000 });
  });
});

test.describe("Image Library", () => {
  test("page loads", async ({ page }) => {
    await login(page);
    await page.goto("/admin/images");
    await expect(page.locator("h2:has-text('Images')")).toBeVisible({ timeout: 15000 });
    await expect(page.locator("label:has-text('Upload')")).toBeVisible();
  });
});

test.describe("Full Flow", () => {
  test("upload → assign → publish → verify → cleanup", async ({ page }) => {
    await login(page);
    await page.goto("/admin/screen/19");
    await expect(page.locator("text=Screen #19")).toBeVisible({ timeout: 15000 });

    // Upload test PNG
    const pngBase64 = "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAFklEQVQYV2P8z8BQz0BFwMgwasCoAgBVnAMZwGmKJAAAAABJRU5ErkJggg==";
    const fileInput = page.locator('input[type="file"]').first();
    await fileInput.setInputFiles({
      name: "test-e2e.png",
      mimeType: "image/png",
      buffer: Buffer.from(pngBase64, "base64"),
    });
    await expect(page.locator("text=Upload New")).toBeVisible({ timeout: 20000 });
    await expect(page.locator("text=Images (1)")).toBeVisible();

    // Publish
    const toggle = page.locator('button[class*="rounded-full"]').first();
    await toggle.click();
    await expect(page.locator("text=LIVE")).toBeVisible();
    await page.click("text=Save");
    await expect(page.locator("text=Saved!")).toBeVisible({ timeout: 15000 });

    // Verify public API
    const res = await page.request.get("/api/screens/19");
    const data = await res.json();
    expect(data.hash).toBeTruthy();
    expect(data.images.length).toBe(1);

    // Cleanup
    await page.click('button:has-text("×")');
    await expect(page.locator("text=Images (0)")).toBeVisible();
    await toggle.click();
    await expect(page.locator("text=DRAFT")).toBeVisible();
    await page.click("text=Save");
    await expect(page.locator("text=Saved!")).toBeVisible({ timeout: 15000 });

    // Verify cleanup
    const res2 = await page.request.get("/api/screens/19");
    const data2 = await res2.json();
    expect(data2.hash).toBe("");
    expect(data2.images.length).toBe(0);
  });
});

test.describe("Mobile", () => {
  test("login form fits on phone", async ({ page }) => {
    await page.setViewportSize({ width: 375, height: 812 });
    await page.goto("/admin");
    const form = page.locator("form");
    await expect(form).toBeVisible({ timeout: 10000 });
    const box = await form.boundingBox();
    expect(box!.width).toBeLessThanOrEqual(375);
  });

  test("bottom nav visible on phone", async ({ page }) => {
    await page.setViewportSize({ width: 375, height: 812 });
    await login(page);
    const bottomNav = page.locator("nav").last();
    await expect(bottomNav).toBeVisible();
  });
});

test.describe("Public API", () => {
  test("valid screen → 200 + JSON", async ({ request }) => {
    const res = await request.get("/api/screens/1");
    expect(res.status()).toBe(200);
    const data = await res.json();
    expect(data.screenId).toBe(1);
    expect(data).toHaveProperty("hash");
    expect(data).toHaveProperty("images");
  });

  test("screen 0 → 404", async ({ request }) => {
    expect((await request.get("/api/screens/0")).status()).toBe(404);
  });

  test("screen abc → 404", async ({ request }) => {
    expect((await request.get("/api/screens/abc")).status()).toBe(404);
  });

  test("admin without auth → 401", async ({ request }) => {
    expect((await request.get("/api/admin/screens")).status()).toBe(401);
  });
});
