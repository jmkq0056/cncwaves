import mongoose from "mongoose";

const BottomItemSchema = new mongoose.Schema(
  {
    name: { type: String, required: true },
    price: { type: Number, required: true },
    image: { type: String, default: "" },
    soldOut: { type: Boolean, default: false },
  },
  { _id: false }
);

const MenuScreenSchema = new mongoose.Schema(
  {
    screenId: { type: String, required: true, unique: true }, // "screen-1", "screen-2a", etc.
    title: { type: String, required: true },
    subtitle: { type: String, default: "" },
    layout: {
      type: String,
      required: true,
      enum: ["meal-rows", "grid-2col", "family", "tacos", "kids", "price-list", "drinks", "coffee"],
    },
    storMenu: {
      text: { type: String, default: "" },
      price: { type: String, default: "" },
    },
    items: [{ type: mongoose.Schema.Types.ObjectId, ref: "MenuItem" }],
    // Extra items for screens with secondary grids (e.g. salads on screen-3)
    extraItems: [{ type: mongoose.Schema.Types.ObjectId, ref: "MenuItem" }],
    bottomSection: {
      kind: { type: String, default: "" }, // "husk-dip", "ekstra", "dips-simple", "allergener"
      items: { type: [BottomItemSchema], default: [] },
    },
    note: { type: String, default: "" },
    sortOrder: { type: Number, default: 0 },
  },
  { timestamps: true }
);

export default mongoose.models.MenuScreen ||
  mongoose.model("MenuScreen", MenuScreenSchema, "menuScreens");
