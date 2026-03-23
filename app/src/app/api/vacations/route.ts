import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { getSession } from "@/lib/auth";
import Vacation from "@/lib/models/Vacation";

export async function GET(req: NextRequest) {
  await connectDB();
  const { searchParams } = new URL(req.url);
  const year = parseInt(searchParams.get("year") || String(new Date().getFullYear()));
  const vacations = await Vacation.find({ year }).sort({ employeeName: 1 }).lean();
  return NextResponse.json(vacations);
}

// Public: employee submits vacation request
export async function POST(req: NextRequest) {
  await connectDB();
  const { employeeName, year, weeks } = await req.json();

  if (!employeeName || !year || !weeks) {
    return NextResponse.json({ error: "employeeName, year, and weeks are required" }, { status: 400 });
  }

  const sanitizedName = String(employeeName).trim().replace(/<[^>]*>/g, "").slice(0, 100);

  // Upsert: merge requested weeks into existing record
  const existing = await Vacation.findOne({ employeeName: sanitizedName, year });
  if (existing) {
    const merged = { ...(existing.weeks || {}) };
    for (const [week, status] of Object.entries(weeks)) {
      // Employee can only set "requested", not "approved"
      if (status === "requested") {
        merged[week] = "requested";
      } else if (status === "") {
        // Can remove own request only if not yet approved
        if (merged[week] === "requested") merged[week] = "";
      }
    }
    existing.weeks = merged;
    existing.markModified("weeks");
    await existing.save();
    return NextResponse.json(existing);
  }

  // Only allow "requested" status from public
  const cleanWeeks: Record<string, string> = {};
  for (const [week, status] of Object.entries(weeks)) {
    if (status === "requested") cleanWeeks[week] = "requested";
  }

  const vacation = await Vacation.create({
    employeeName: sanitizedName,
    year,
    weeks: cleanWeeks,
  });
  return NextResponse.json(vacation, { status: 201 });
}

// Admin: approve/reject weeks
export async function PUT(req: NextRequest) {
  const session = await getSession();
  if (!session) return NextResponse.json({ error: "Unauthorized" }, { status: 401 });

  await connectDB();
  const { employeeName, year, weeks } = await req.json();

  const vacation = await Vacation.findOne({ employeeName, year });
  if (!vacation) return NextResponse.json({ error: "Not found" }, { status: 404 });

  const merged = { ...(vacation.weeks || {}) };
  for (const [week, status] of Object.entries(weeks)) {
    merged[week] = status as string;
  }
  vacation.weeks = merged;
  vacation.markModified("weeks");
  await vacation.save();
  return NextResponse.json(vacation);
}
