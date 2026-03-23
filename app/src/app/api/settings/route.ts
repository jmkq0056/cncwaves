import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Setting from "@/lib/models/Setting";

export async function GET() {
  await requireAuth();
  await connectDB();
  const settings = await Setting.find().lean();
  const map: Record<string, string> = {};
  for (const s of settings as any[]) {
    map[s.key] = s.value;
  }
  return NextResponse.json(map);
}

export async function PUT(req: NextRequest) {
  await requireAuth();
  await connectDB();
  const body = await req.json();

  for (const [key, value] of Object.entries(body)) {
    await Setting.findOneAndUpdate(
      { key },
      { key, value: value as string },
      { upsert: true }
    );
  }

  return NextResponse.json({ success: true });
}
