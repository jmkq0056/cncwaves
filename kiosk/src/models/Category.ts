import mongoose from "mongoose";

const CategorySchema = new mongoose.Schema({
  name: String,
  slug: String,
  description: String,
  image: String,
  sortOrder: { type: Number, default: 0 },
}, { timestamps: true });

export default mongoose.models.Category || mongoose.model("Category", CategorySchema);
