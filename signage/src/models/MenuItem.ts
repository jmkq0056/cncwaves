import mongoose from "mongoose";

const MenuItemSchema = new mongoose.Schema(
  {
    name: { type: String, required: true },
    displayName: { type: String, default: "" }, // formatted name for display (e.g. "DOUBLE\nCHEESE")
    description: { type: String, default: "" },
    price: { type: Number, required: true },
    category: { type: String, required: true }, // "Beef Burger", "Chicken & Fish Burgers", etc.
    image: { type: String, default: "" }, // Cloudinary URL
    cloudinaryPublicId: { type: String, default: "" },
    weight: { type: String, default: "" }, // "55g", "112g"
    friesSize: { type: String, default: "" }, // "small" or "large"
    spicy: { type: Boolean, default: false },
    vegan: { type: Boolean, default: false },
    variants: { type: String, default: "" }, // "1 · 2 · 3 · 4 · 5 · 6 stk"
    soldOut: { type: Boolean, default: false },
    sortOrder: { type: Number, default: 0 },
  },
  { timestamps: true }
);

MenuItemSchema.index({ category: 1, sortOrder: 1 });

export default mongoose.models.MenuItem ||
  mongoose.model("MenuItem", MenuItemSchema, "menuItems");
