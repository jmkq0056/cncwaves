import mongoose from "mongoose";

// One row per product captured at snapshot time. Includes pricing so a
// historical PDF reflects what the price/value WAS at that moment.
const StockSnapshotItemSchema = new mongoose.Schema(
  {
    productId: { type: mongoose.Schema.Types.ObjectId, ref: "Product" },
    code: String,
    name: String,
    brand: String,
    category: String,
    unit: String,
    qty: { type: Number, default: 0 },
    priceNet: { type: Number, default: 0 },
    priceCurrency: { type: String, default: "DKK" },
    vatRate: { type: Number, default: 0.25 },
    noVat: { type: Boolean, default: false },
  },
  { _id: false }
);

const StockSnapshotSchema = new mongoose.Schema(
  {
    capturedAt: { type: Date, default: Date.now, index: -1 },
    // Where the snapshot came from. "daily" / "hourly" = Hetzner cron;
    // "manual" = button on the Stock page; "delivery" = future hook.
    source: {
      type: String,
      enum: ["manual", "daily", "hourly", "interval", "delivery"],
      default: "manual",
    },
    label: { type: String, default: "" },
    triggeredBy: { type: String, default: "" }, // admin email if manual, "cron@hetzner" otherwise
    items: [StockSnapshotItemSchema],
    totals: {
      itemCount: Number,
      totalUnits: Number,
      outOfStockCount: Number,
      negativeCount: Number,
    },
  },
  { timestamps: true }
);

StockSnapshotSchema.index({ capturedAt: -1 });

export default mongoose.models.StockSnapshot ||
  mongoose.model("StockSnapshot", StockSnapshotSchema);
