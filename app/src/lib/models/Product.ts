import mongoose from "mongoose";

const ProductSchema = new mongoose.Schema({
  code: { type: String, required: true, unique: true },
  name: { type: String, required: true },
  brand: { type: String, default: "" },
  category: { type: String, default: "" },
  unit: { type: String, default: "" },
  image: { type: String, default: "" },
}, { timestamps: true });

export default mongoose.models.Product || mongoose.model("Product", ProductSchema);
