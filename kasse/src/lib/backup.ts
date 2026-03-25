import CashEntryBackup from "@/lib/models/CashEntryBackup";

/**
 * Save a backup of the existing entry before overwriting.
 * Enforces max 20 backups per date+restaurant by deleting the oldest.
 */
export async function createBackup(
  existingEntry: any,
  reason: "auto-save" | "manual" | "edit-overwrite" = "auto-save"
) {
  const { date, restaurant } = existingEntry;

  // Count existing backups for this date + restaurant
  const count = await CashEntryBackup.countDocuments({
    originalDate: date,
    restaurant,
  });

  // If at the limit, delete the oldest one
  if (count >= 20) {
    const oldest = await CashEntryBackup.findOne({
      originalDate: date,
      restaurant,
    }).sort({ createdAt: 1 });
    if (oldest) {
      await CashEntryBackup.deleteOne({ _id: oldest._id });
    }
  }

  // Strip mongoose internals from snapshot
  const snapshot = JSON.parse(JSON.stringify(existingEntry));

  await CashEntryBackup.create({
    originalDate: date,
    restaurant,
    snapshot,
    reason,
    createdAt: new Date(),
  });
}
