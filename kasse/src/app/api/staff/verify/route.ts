import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import { connectDB } from "@/lib/db";
import { signStaffToken } from "@/lib/auth";
import Setting from "@/lib/models/Setting";
import CashEntry from "@/lib/models/CashEntry";

const RESTAURANT = "cnc";

function todayCPH(): string {
  return new Date().toLocaleDateString("sv-SE", { timeZone: "Europe/Copenhagen" });
}

// POST /api/staff/verify  { pin }
// Validates the PIN, then checks whether today's entry already exists.
//  - wrong PIN              -> 401
//  - correct, already done  -> 200 { alreadyDone: true }   (staff is locked out)
//  - correct, open          -> 200 { token, date }         (staff may enter today)
export async function POST(req: NextRequest) {
  const { pin } = await req.json().catch(() => ({ pin: undefined }));
  if (!pin || typeof pin !== "string") {
    return NextResponse.json({ error: "Indtast kode" }, { status: 400 });
  }

  await connectDB();

  const setting = await Setting.findOne({ key: "staffPin" }).lean<{ value: string } | null>();
  if (!setting) {
    return NextResponse.json({ error: "Personaleadgang er ikke konfigureret." }, { status: 403 });
  }

  const ok = await bcrypt.compare(pin, setting.value);
  if (!ok) {
    return NextResponse.json({ error: "Forkert kode" }, { status: 401 });
  }

  const date = todayCPH();
  const existing = await CashEntry.findOne({ date, restaurant: RESTAURANT }).lean();
  if (existing) {
    // Admin (or someone) already closed today → block staff out completely.
    return NextResponse.json({ alreadyDone: true, date });
  }

  const token = signStaffToken(date);
  return NextResponse.json({ token, date, alreadyDone: false });
}
