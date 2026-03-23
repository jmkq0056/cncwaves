import mongoose from "mongoose";

const DeliveryItemSchema = new mongoose.Schema({
  productId: { type: mongoose.Schema.Types.ObjectId, ref: "Product" },
  code: String,
  name: String,
  unit: String,
  image: String,
  quantity: { type: Number, default: 1 },
  note: { type: String, default: "" },
});

const DeliverySchema = new mongoose.Schema({
  reference: { type: String, required: true, unique: true },
  items: [DeliveryItemSchema],
  status: { type: String, enum: ["pending", "completed"], default: "pending" },
  createdBy: { type: String, default: "" },
}, { timestamps: true });

export default mongoose.models.Delivery || mongoose.model("Delivery", DeliverySchema);
