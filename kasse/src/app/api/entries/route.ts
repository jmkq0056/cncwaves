import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";
import { validateEntry } from "@/lib/validation";
import { createBackup } from "@/lib/backup";

export async function GET(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const sp = req.nextUrl.searchParams;
  const restaurant = sp.get("restaurant") || "cnc";
  const from = sp.get("from");
  const to = sp.get("to");

  const query: any = { restaurant };
  if (from || to) {
    query.date = {};
    if (from) query.date.$gte = from;
    if (to) query.date.$lte = to;
  }

  const entries = await CashEntry.find(query).sort({ date: -1 }).lean();
  return NextResponse.json(entries);
}

export async function POST(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const body = await req.json();
  if (!body.date) {
    return NextResponse.json({ error: "Date is required" }, { status: 400 });
  }

  // Server-side validation
  const { errors, warnings } = validateEntry(body);
  if (errors.length > 0) {
    return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
  }

  const restaurant = body.restaurant || "cnc";

  // Back up existing entry before overwriting
  const existing = await CashEntry.findOne({ date: body.date, restaurant }).lean();
  if (existing) {
    await createBackup(existing, "edit-overwrite");
  }

  const entry = await CashEntry.findOneAndUpdate(
    { date: body.date, restaurant },
    { ...body, restaurant },
    { upsert: true, new: true, setDefaultsOnInsert: true }
  );

  const result = entry.toObject ? entry.toObject() : entry;
  return NextResponse.json(
    { ...result, warnings: warnings.length > 0 ? warnings : undefined },
    { status: 201 }
  );
}
