import mongoose from "mongoose";

const CashEntrySchema = new mongoose.Schema({
  date: { type: String, required: true }, // YYYY-MM-DD
  restaurant: { type: String, default: "cnc" },
  employeeName: { type: String, default: "" },
  denominations: {
    "0.50": { type: Number, default: 0 },
    "1": { type: Number, default: 0 },
    "2": { type: Number, default: 0 },
    "5": { type: Number, default: 0 },
    "10": { type: Number, default: 0 },
    "20": { type: Number, default: 0 },
    "50": { type: Number, default: 0 },
    "100": { type: Number, default: 0 },
    "200": { type: Number, default: 0 },
    "500": { type: Number, default: 0 },
    "1000": { type: Number, default: 0 },
  },
  purchases: { type: Number, default: 0 },
  onlineSales: { type: Number, default: 0 },
  posCash: { type: Number, default: 0 },
  posCard: { type: Number, default: 0 },
  kioskSales: { type: Number, default: 0 },
  morningCash: { type: Number, default: 0 },
  eveningCash: { type: Number, default: 0 },
}, { timestamps: true });

CashEntrySchema.index({ date: 1, restaurant: 1 }, { unique: true });

export default mongoose.models.CashEntry || mongoose.model("CashEntry", CashEntrySchema);
