import mongoose from "mongoose";

const AddonOptionSchema = new mongoose.Schema({
  name: String,
  description: String,
  price: { type: Number, default: 0 },
  image: String,
}, { _id: false });

const AddonSchema = new mongoose.Schema({
  name: String,
  description: String,
  selection: { type: String, enum: ["one", "multiple", "custom"], default: "multiple" },
  min: { type: Number, default: 0 },
  max: { type: Number, default: 0 },
  required: { type: Boolean, default: false },
  options: [AddonOptionSchema],
}, { _id: false });

const ItemSchema = new mongoose.Schema({
  name: String,
  description: String,
  price: Number,
  image: String,
  category: { type: mongoose.Schema.Types.ObjectId, ref: "Category" },
  categorySlug: String,
  soldOut: { type: Boolean, default: false },
  sortOrder: { type: Number, default: 0 },
  addons: [AddonSchema],
}, { timestamps: true });

ItemSchema.index({ category: 1, sortOrder: 1 });

export default mongoose.models.Item || mongoose.model("Item", ItemSchema);
