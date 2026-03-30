import mongoose from "mongoose";

const ImageSchema = new mongoose.Schema(
  {
    filename: { type: String, required: true },
    cloudinaryPublicId: { type: String, required: true },
    url: { type: String, required: true },
    order: { type: Number, default: 0 },
  },
  { _id: false }
);

const ScreenSchema = new mongoose.Schema(
  {
    _id: { type: Number, required: true },
    name: { type: String, default: "" },
    rotationInterval: { type: Number, default: 10000 },
    images: { type: [ImageSchema], default: [] },
    playlistHash: { type: String, default: "" },
    published: { type: Boolean, default: false },
    publishedAt: { type: Date, default: null },
    // Schedule: HH:mm format, empty = always on
    screenOnTime: { type: String, default: "" },
    screenOffTime: { type: String, default: "" },
    // Remote control
    pendingCommand: { type: String, default: "" }, // "identify", "force-sync", "restart"
    // Device status (updated by heartbeat)
    lastSeenAt: { type: Date, default: null },
    deviceIp: { type: String, default: "" },
    appVersion: { type: String, default: "" },
    cachedImageCount: { type: Number, default: 0 },
  },
  { timestamps: true }
);

export default mongoose.models.Screen ||
  mongoose.model("Screen", ScreenSchema, "screens");
