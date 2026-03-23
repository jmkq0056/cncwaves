import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Submission from "@/lib/models/Submission";
import Delivery from "@/lib/models/Delivery";
import Vacation from "@/lib/models/Vacation";
import AdminSession from "@/lib/models/AdminSession";
import Setting from "@/lib/models/Setting";

export async function POST(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const { code } = await req.json();
  const DANGER_RESET_CODE = process.env.DANGER_RESET_CODE;

  if (!DANGER_RESET_CODE || !code || code !== DANGER_RESET_CODE) {
    return NextResponse.json({ error: "Invalid reset code" }, { status: 403 });
  }

  // Delete everything EXCEPT Products and Users
  const results = await Promise.all([
    Submission.deleteMany({}),
    Delivery.deleteMany({}),
    Vacation.deleteMany({}),
    AdminSession.deleteMany({}),
    // Keep Settings but you could clear them too
    // Setting.deleteMany({}),
  ]);

  const deleted = {
    submissions: results[0].deletedCount,
    deliveries: results[1].deletedCount,
    vacations: results[2].deletedCount,
    adminSessions: results[3].deletedCount,
  };

  return NextResponse.json({
    success: true,
    message: "Database cleared (Products and Users preserved)",
    deleted,
  });
}
