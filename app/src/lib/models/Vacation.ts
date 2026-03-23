import mongoose from "mongoose";

const VacationSchema = new mongoose.Schema({
  employeeName: { type: String, required: true },
  year: { type: Number, required: true },
  // weeks is an object: { "1": "requested"|"approved"|"", "2": "approved", ... }
  weeks: { type: mongoose.Schema.Types.Mixed, default: {} },
}, { timestamps: true });

VacationSchema.index({ employeeName: 1, year: 1 }, { unique: true });

export default mongoose.models.Vacation || mongoose.model("Vacation", VacationSchema);
