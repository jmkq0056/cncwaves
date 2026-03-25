import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntryBackup from "@/lib/models/CashEntryBackup";

export async function GET(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const sp = req.nextUrl.searchParams;
  const date = sp.get("date");
  const restaurant = sp.get("restaurant") || "cnc";

  if (!date) {
    return NextResponse.json({ error: "date query param is required" }, { status: 400 });
  }

  const backups = await CashEntryBackup.find({
    originalDate: date,
    restaurant,
  })
    .sort({ createdAt: -1 })
    .lean();

  return NextResponse.json(backups);
}
