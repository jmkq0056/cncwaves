import { NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAdmin } from "@/lib/adminAuth";
import Delivery from "@/lib/models/Delivery";

// DELETE /api/deliveries/clear
//
// Hard-deletes every OUTGOING delivery (direction != "in"). Admin-only —
// requireAdmin enforces the live admin_session cookie (2h passcode-issued)
// at the server. No body needed.
//
// Receivings (direction:"in") are NOT touched by this call — they live in
// their own admin module and have their own retention policy.
export async function DELETE() {
  try {
    await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();
  const res = await Delivery.deleteMany({ direction: { $ne: "in" } });
  return NextResponse.json({ success: true, deletedCount: res.deletedCount ?? 0 });
}
