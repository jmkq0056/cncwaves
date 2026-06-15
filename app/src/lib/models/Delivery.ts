import mongoose from "mongoose";
import crypto from "crypto";

const DeliveryItemSchema = new mongoose.Schema({
  productId: { type: mongoose.Schema.Types.ObjectId, ref: "Product" },
  code: String,
  name: String,
  unit: String,
  image: String,
  quantity: { type: Number, default: 1 },            // original ordered qty (immutable after creation)
  pickedQuantity: { type: Number, default: 0 },      // actually received qty (editable at pick time)
  stockDelta: { type: Number, default: 0 },          // current applied delta to Product.qty — used for reversal on undo/cancel
  note: { type: String, default: "" },
  status: { type: String, enum: ["pending", "picked", "cancelled"], default: "pending" },
});

const DeliverySchema = new mongoose.Schema({
  reference: { type: String, required: true, unique: true },
  shareToken: { type: String, unique: true, default: () => crypto.randomBytes(16).toString("hex") },
  // "out" = issuing (existing /delivery flow — picking DEDUCTS from stock)
  // "in"  = receiving (new /receiving flow — picking ADDS to stock)
  direction: { type: String, enum: ["out", "in"], default: "out", index: true },
  items: [DeliveryItemSchema],
  status: { type: String, enum: ["pending", "in-progress", "completed"], default: "pending" },
  createdBy: { type: String, default: "" },
  emailSent: { type: Boolean, default: false },
  emailError: { type: String, default: "" },
}, { timestamps: true });

export default mongoose.models.Delivery || mongoose.model("Delivery", DeliverySchema);
