import mongoose from "mongoose";

const ImageModelSchema = new mongoose.Schema(
  {
    name: { type: String, required: true },
    category: { type: String, default: "Uncategorized" },
    cloudinaryPublicId: { type: String, required: true, unique: true },
    url: { type: String, required: true },
    width: { type: Number, default: 0 },
    height: { type: Number, default: 0 },
    format: { type: String, default: "png" },
    sizeBytes: { type: Number, default: 0 },
  },
  { timestamps: true }
);

ImageModelSchema.index({ category: 1, name: 1 });

export default mongoose.models.Image ||
  mongoose.model("Image", ImageModelSchema, "images");
