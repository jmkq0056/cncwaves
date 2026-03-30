import { NextRequest, NextResponse } from "next/server";

const ADMIN_PIN = process.env.ADMIN_PIN || "1234";

export async function POST(request: NextRequest) {
  const body = await request.json();
  const { pin } = body;

  if (pin !== ADMIN_PIN) {
    return NextResponse.json({ error: "Invalid PIN" }, { status: 401 });
  }

  const response = NextResponse.json({ success: true });
  response.cookies.set("admin_pin", pin, {
    httpOnly: true,
    secure: process.env.NODE_ENV === "production",
    sameSite: "lax",
    maxAge: 60 * 60 * 24 * 30, // 30 days
    path: "/",
  });

  return response;
}
