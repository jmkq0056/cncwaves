import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";

export async function GET(req: NextRequest, { params }: { params: Promise<{ date: string }> }) {
  await requireAuth();
  await connectDB();
  const { date } = await params;
  const restaurant = req.nextUrl.searchParams.get("restaurant") || "cnc";

  const entry = await CashEntry.findOne({ date, restaurant }).lean();
  if (!entry) {
    return NextResponse.json({ error: "Not found" }, { status: 404 });
  }
  return NextResponse.json(entry);
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ date: string }> }) {
  await requireAuth();
  await connectDB();
  const { date } = await params;
  const body = await req.json();
  const restaurant = body.restaurant || "cnc";

  const entry = await CashEntry.findOneAndUpdate(
    { date, restaurant },
    body,
    { new: true }
  );
  if (!entry) {
    return NextResponse.json({ error: "Not found" }, { status: 404 });
  }
  return NextResponse.json(entry);
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ date: string }> }) {
  await requireAuth();
  await connectDB();
  const { date } = await params;
  const restaurant = req.nextUrl.searchParams.get("restaurant") || "cnc";

  await CashEntry.deleteOne({ date, restaurant });
  return NextResponse.json({ success: true });
}
