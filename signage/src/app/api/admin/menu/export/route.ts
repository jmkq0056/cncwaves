import { NextRequest, NextResponse } from "next/server";
import { verifyAdmin } from "@/lib/auth";

// POST /api/admin/menu/export { screenId: "screen-1" }
// Returns PNG screenshot of that screen's board (2160x3840)
export async function POST(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { screenId } = await request.json();
  if (!screenId) {
    return NextResponse.json({ error: "screenId required" }, { status: 400 });
  }

  const adminPin = request.cookies.get("admin_pin")?.value || "";
  const baseUrl = request.nextUrl.origin;

  let browser: any;
  try {
    const pw = require("playwright");
    console.log(`[export] ${screenId} — launching`);
    browser = await pw.chromium.launch();
    const ctx = await browser.newContext({
      viewport: { width: 1080, height: 1920 },
      deviceScaleFactor: 2,
    });
    await ctx.addCookies([{
      name: "admin_pin", value: adminPin,
      domain: new URL(baseUrl).hostname, path: "/",
    }]);

    const page = await ctx.newPage();
    await page.goto(`${baseUrl}/admin/menu/${screenId}`, {
      waitUntil: "networkidle", timeout: 30000,
    });
    await page.waitForTimeout(4000);

    const board = page.locator("[data-board]").first();
    const png = await board.screenshot({ type: "png" });
    await browser.close();

    console.log(`[export] ${screenId} — done (${png.length} bytes)`);

    return new NextResponse(png, {
      headers: {
        "Content-Type": "image/png",
        "Content-Disposition": `attachment; filename="${screenId}.png"`,
      },
    });
  } catch (e: any) {
    console.error(`[export] ${screenId} — FAIL:`, e.message);
    if (browser) try { await browser.close(); } catch {}
    return NextResponse.json({ error: e.message || "Export failed" }, { status: 500 });
  }
}
