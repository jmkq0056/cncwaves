import mongoose from "mongoose";

const OrderItemAddonSchema = new mongoose.Schema({
  name: String,
  price: Number,
}, { _id: false });

const OrderItemSchema = new mongoose.Schema({
  itemId: mongoose.Schema.Types.ObjectId,
  name: String,
  price: Number,
  quantity: { type: Number, default: 1 },
  image: String,
  addons: [OrderItemAddonSchema],
}, { _id: false });

const OrderSchema = new mongoose.Schema({
  orderNumber: { type: Number, required: true },
  type: { type: String, enum: ["dine-in", "take-away", "pickup"], default: "take-away" },
  items: [OrderItemSchema],
  subtotal: Number,
  total: Number,
  status: { type: String, enum: ["pending", "confirmed", "preparing", "ready", "completed", "cancelled"], default: "pending" },
  paymentMethod: { type: String, default: "unpaid" },
  tableNumber: Number,
}, { timestamps: true });

export default mongoose.models.Order || mongoose.model("Order", OrderSchema);
