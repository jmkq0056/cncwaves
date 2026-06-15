import mongoose from "mongoose";

// Generic key/value settings store (used for the staff PIN hash, etc.)
const SettingSchema = new mongoose.Schema({
  key: { type: String, required: true, unique: true },
  value: { type: String, required: true },
}, { timestamps: true });

export default mongoose.models.Setting || mongoose.model("Setting", SettingSchema);
