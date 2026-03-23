import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Setting from "@/lib/models/Setting";
import AdminSession from "@/lib/models/AdminSession";

// POST: verify passcode, create 2-hour session
export async function POST(req: NextRequest) {
  const session = await requireAuth();
  await connectDB();

  const { passcode } = await req.json();
  if (!passcode) {
    return NextResponse.json({ error: "Passcode required" }, { status: 400 });
  }

  // Get stored passcode
  const setting = await Setting.findOne({ key: "admin_passcode" }).lean() as any;
  const storedPasscode = setting?.value || "2670"; // default seed

  if (passcode !== storedPasscode) {
    return NextResponse.json({ error: "Invalid passcode" }, { status: 401 });
  }

  // Create session valid for 2 hours (Copenhagen time doesn't matter for duration, just for display)
  const expiresAt = new Date(Date.now() + 2 * 60 * 60 * 1000);

  const adminSession = await AdminSession.create({
    userId: session.userId,
    expiresAt,
  });

  const res = NextResponse.json({ success: true, expiresAt: expiresAt.toISOString() });
  res.cookies.set("admin_session", adminSession._id.toString(), {
    httpOnly: true,
    secure: process.env.NODE_ENV === "production",
    sameSite: "lax",
    maxAge: 2 * 60 * 60,
    path: "/",
  });

  return res;
}

// GET: check if current admin session is valid
export async function GET() {
  const session = await requireAuth();
  await connectDB();

  const { cookies } = await import("next/headers");
  const cookieStore = await cookies();
  const sessionId = cookieStore.get("admin_session")?.value;

  if (!sessionId) {
    return NextResponse.json({ valid: false });
  }

  const adminSession = await AdminSession.findOne({
    _id: sessionId,
    userId: session.userId,
    expiresAt: { $gt: new Date() },
  }).lean();

  if (!adminSession) {
    return NextResponse.json({ valid: false });
  }

  return NextResponse.json({
    valid: true,
    expiresAt: (adminSession as any).expiresAt,
  });
}
