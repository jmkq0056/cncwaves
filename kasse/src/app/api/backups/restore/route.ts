import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";
import CashEntryBackup from "@/lib/models/CashEntryBackup";
import { createBackup } from "@/lib/backup";

export async function POST(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const { backupId } = await req.json();
  if (!backupId) {
    return NextResponse.json({ error: "backupId is required" }, { status: 400 });
  }

  // Find the backup
  const backup = await CashEntryBackup.findById(backupId).lean();
  if (!backup) {
    return NextResponse.json({ error: "Backup not found" }, { status: 404 });
  }

  const { originalDate, restaurant, snapshot } = backup as any;

  // Back up the current version first (before we overwrite it)
  const current = await CashEntry.findOne({
    date: originalDate,
    restaurant,
  }).lean();
  if (current) {
    await createBackup(current, "auto-save");
  }

  // Strip _id and timestamps from snapshot so they don't conflict
  const { _id, createdAt, updatedAt, __v, ...restoreData } = snapshot as any;

  // Restore the backup into CashEntry
  const entry = await CashEntry.findOneAndUpdate(
    { date: originalDate, restaurant },
    { ...restoreData, date: originalDate, restaurant },
    { upsert: true, new: true, setDefaultsOnInsert: true }
  );

  return NextResponse.json({ success: true, entry });
}
