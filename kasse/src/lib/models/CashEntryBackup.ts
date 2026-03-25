import mongoose from "mongoose";

const CashEntryBackupSchema = new mongoose.Schema({
  originalDate: { type: String, required: true },
  restaurant: { type: String, required: true, default: "cnc" },
  snapshot: { type: mongoose.Schema.Types.Mixed, required: true },
  reason: {
    type: String,
    enum: ["auto-save", "manual", "edit-overwrite"],
    default: "auto-save",
  },
  createdAt: { type: Date, default: Date.now },
});

CashEntryBackupSchema.index({ originalDate: 1, restaurant: 1 });
CashEntryBackupSchema.index({ createdAt: 1 }, { expireAfterSeconds: 90 * 24 * 60 * 60 }); // 90 days TTL

export default mongoose.models.CashEntryBackup ||
  mongoose.model("CashEntryBackup", CashEntryBackupSchema);
