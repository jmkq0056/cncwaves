import { NextRequest, NextResponse } from "next/server";

const ADMIN_PIN = process.env.ADMIN_PIN || "1234";

export async function POST(request: NextRequest) {
  const body = await request.json();
  const { pin } = body;

  if (pin !== ADMIN_PIN) {
    return NextResponse.json({ error: "Invalid PIN" }, { status: 401 });
  }

  const response = NextResponse.json({ success: true });
  // Use Secure cookies only when served over HTTPS. Plain-HTTP deployments
  // (self-hosted by IP) need Secure=false so the browser echoes the cookie
  // back on subsequent requests.
  const isHttps = request.nextUrl.protocol === "https:" ||
    request.headers.get("x-forwarded-proto") === "https";
  response.cookies.set("admin_pin", pin, {
    httpOnly: true,
    secure: isHttps,
    sameSite: "lax",
    maxAge: 60 * 60 * 24 * 30, // 30 days
    path: "/",
  });

  return response;
}
