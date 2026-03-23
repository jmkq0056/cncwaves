import mongoose from "mongoose";

const AdminSessionSchema = new mongoose.Schema({
  userId: { type: String, required: true },
  expiresAt: { type: Date, required: true },
}, { timestamps: true });

// Auto-delete expired sessions
AdminSessionSchema.index({ expiresAt: 1 }, { expireAfterSeconds: 0 });

export default mongoose.models.AdminSession || mongoose.model("AdminSession", AdminSessionSchema);
