import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";
import { validateEntry } from "@/lib/validation";
import { createBackup } from "@/lib/backup";

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

  // Server-side validation
  const toValidate = { ...body, date };
  const { errors, warnings } = validateEntry(toValidate);
  if (errors.length > 0) {
    return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
  }

  // Back up existing entry before overwriting
  const existing = await CashEntry.findOne({ date, restaurant }).lean();
  if (existing) {
    await createBackup(existing, "edit-overwrite");
  }

  const entry = await CashEntry.findOneAndUpdate(
    { date, restaurant },
    body,
    { new: true }
  );
  if (!entry) {
    return NextResponse.json({ error: "Not found" }, { status: 404 });
  }

  const result = entry.toObject ? entry.toObject() : entry;
  return NextResponse.json(
    { ...result, warnings: warnings.length > 0 ? warnings : undefined }
  );
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ date: string }> }) {
  await requireAuth();
  await connectDB();
  const { date } = await params;
  const restaurant = req.nextUrl.searchParams.get("restaurant") || "cnc";

  await CashEntry.deleteOne({ date, restaurant });
  return NextResponse.json({ success: true });
}
