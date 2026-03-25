import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";

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

  const restaurant = body.restaurant || "cnc";

  const entry = await CashEntry.findOneAndUpdate(
    { date: body.date, restaurant },
    { ...body, restaurant },
    { upsert: true, new: true, setDefaultsOnInsert: true }
  );

  return NextResponse.json(entry, { status: 201 });
}
