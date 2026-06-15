import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { verifyStaffToken } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";
import { validateEntry } from "@/lib/validation";

const RESTAURANT = "cnc";

function todayCPH(): string {
  return new Date().toLocaleDateString("sv-SE", { timeZone: "Europe/Copenhagen" });
}

function getBearer(req: NextRequest): string | null {
  const h = req.headers.get("authorization") || "";
  return h.startsWith("Bearer ") ? h.slice(7) : null;
}

// POST /api/staff/entries
// Creates TODAY's entry on behalf of a PIN-authenticated staff member.
// Staff can never choose another date, never edit, and never overwrite an
// existing day — if today is already closed they are blocked.
export async function POST(req: NextRequest) {
  const token = getBearer(req);
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  let staff: { role: "staff"; date: string };
  try {
    staff = verifyStaffToken(token);
  } catch {
    return NextResponse.json({ error: "Session udløbet — log ind igen." }, { status: 401 });
  }

  const today = todayCPH();
  // The token is pinned to the day it was issued; it can only submit that day,
  // and only while that day is still "today".
  if (staff.date !== today) {
    return NextResponse.json(
      { error: "Koden gælder kun for i dag. Log ind igen." },
      { status: 403 }
    );
  }

  const body = await req.json().catch(() => ({}));
  // Force date + restaurant server-side — never trust the client here.
  body.date = today;
  body.restaurant = RESTAURANT;

  const { errors, warnings } = validateEntry(body);
  if (errors.length > 0) {
    return NextResponse.json({ error: errors.join(" ") }, { status: 400 });
  }

  await connectDB();

  // Never overwrite. If the day already exists, lock the staff member out.
  const existing = await CashEntry.findOne({ date: today, restaurant: RESTAURANT }).lean();
  if (existing) {
    return NextResponse.json(
      { alreadyDone: true, error: "Dagen er allerede afsluttet." },
      { status: 409 }
    );
  }

  try {
    const entry = await CashEntry.create({ ...body, date: today, restaurant: RESTAURANT });
    const result = entry.toObject ? entry.toObject() : entry;
    return NextResponse.json(
      { ...result, warnings: warnings.length > 0 ? warnings : undefined },
      { status: 201 }
    );
  } catch (err: any) {
    // Unique index race: another submit beat us to it.
    if (err?.code === 11000) {
      return NextResponse.json(
        { alreadyDone: true, error: "Dagen er allerede afsluttet." },
        { status: 409 }
      );
    }
    return NextResponse.json({ error: "Kunne ikke gemme. Prøv igen." }, { status: 500 });
  }
}
