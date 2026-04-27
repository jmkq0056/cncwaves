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

// One burst session. A screen can run up to 3 in parallel, each with its own
// interval and image. The id (1..3) is stable so clients (Android) can keep
// per-burst preloaded drawables without re-decoding on every fire.
//
// `animation` controls how the burst ripples across the 9 physical screens:
//   - "wave"        : 1 -> 2 -> ... -> 9 (default, current behavior)
//   - "center-out"  : 5 -> 4,6 -> 3,7 -> 2,8 -> 1,9
// The actual offset per screen is computed server-side; clients only see a
// fire_at timestamp.
const BurstSchema = new mongoose.Schema(
  {
    id: { type: Number, required: true },
    name: { type: String, default: "" },
    enabled: { type: Boolean, default: false },
    imageUrl: { type: String, default: "" },
    cloudinaryId: { type: String, default: "" },
    intervalMin: { type: Number, default: 2 },
    durationS: { type: Number, default: 10 },
    animation: { type: String, enum: ["wave", "center-out"], default: "wave" },
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
    screenOffMode: { type: String, default: "dim" }, // "dim" or "reboot"
    // Bursts: up to 3 independently-scheduled synchronized images. New
    // multi-burst design — `burstEnabled` etc. below are kept for backward
    // compatibility with v1.3 APKs and the legacy admin API; the migration
    // script copies them into bursts[0]. Server prefers bursts[] when set.
    bursts: {
      type: [BurstSchema],
      default: () => [
        { id: 1, name: "", enabled: false, imageUrl: "", cloudinaryId: "", intervalMin: 2, durationS: 10, animation: "wave" },
        { id: 2, name: "", enabled: false, imageUrl: "", cloudinaryId: "", intervalMin: 2, durationS: 10, animation: "center-out" },
      ],
    },
    // Burst session: how often (in minutes) the next burst in the rotation
    // fires. The server picks bursts[slot % enabled.length] at each slot
    // boundary, so all enabled bursts cycle through in order without
    // colliding. Backfills from the legacy `burstInterval` field on read
    // for screens that haven't been re-saved through the new admin UI yet.
    burstSessionIntervalMin: { type: Number, default: 2 },
    // --- Legacy single-burst fields (deprecated, do not delete during the
    // mixed-version rollout window). v1.3 APK and the old admin UI still
    // read/write these. Any updates to bursts[0] must mirror these so older
    // clients see the same state.
    burstEnabled: { type: Boolean, default: false },
    burstImageUrl: { type: String, default: "" },
    burstCloudinaryId: { type: String, default: "" },
    burstInterval: { type: Number, default: 3 },
    burstDuration: { type: Number, default: 10 },
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
