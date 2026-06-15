import mongoose from "mongoose";

const ProductSchema = new mongoose.Schema({
  code: { type: String, required: true, unique: true },
  name: { type: String, required: true },
  brand: { type: String, default: "" },
  category: { type: String, default: "" },
  unit: { type: String, default: "" },
  image: { type: String, default: "" },
  qty: { type: Number, default: 0 },

  // Pricing — net (excl. VAT) is the canonical stored field; gross is derived.
  // priceCurrency is the currency the value was entered in (DKK or EUR).
  // The Price page shows totals in either currency using a fixed FX rate.
  priceNet: { type: Number, default: 0 },
  priceCurrency: { type: String, enum: ["DKK", "EUR"], default: "DKK" },
  vatRate: { type: Number, default: 0.25 },         // 25% Danish moms
  noVat: { type: Boolean, default: false },         // mark item as VAT-exempt (effective VAT becomes 0)
}, { timestamps: true });

export default mongoose.models.Product || mongoose.model("Product", ProductSchema);
