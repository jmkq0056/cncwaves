/**
 * Kasse history reset / seed.
 *
 * Wipes ALL kasse cash-reconciliation history (cashentries + cashentrybackups)
 * and then re-ensures the admin user + staff PIN exist so the system is usable
 * from a clean slate.
 *
 * It touches ONLY the two kasse collections. Stock/menu/signage collections
 * (products, deliveries, menuItems, stocksnapshots, submissions, screens, ...)
 * that share the same CNCtest database are left untouched.
 *
 *   MONGO_URI=... npx tsx scripts/reset-kasse.ts
 *   (or `npm run reset:kasse` — reads .env.local)
 */
import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import mongoose from "mongoose";
import bcrypt from "bcryptjs";

const MONGO_URI = process.env.MONGO_URI;
if (!MONGO_URI) {
  console.error("MONGO_URI is not set (env or .env.local). Aborting.");
  process.exit(1);
}

const UserSchema = new mongoose.Schema(
  {
    email: { type: String, required: true, unique: true, lowercase: true },
    password: { type: String, required: true },
    name: { type: String, default: "" },
  },
  { timestamps: true }
);

const SettingSchema = new mongoose.Schema(
  {
    key: { type: String, required: true, unique: true },
    value: { type: String, required: true },
  },
  { timestamps: true }
);

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI!);
  const db = mongoose.connection.db!;
  console.log(`Connected to DB: ${db.databaseName}`);

  // --- Clear kasse history (and ONLY the kasse history collections) ---
  for (const name of ["cashentries", "cashentrybackups"]) {
    const exists = await db.listCollections({ name }).hasNext();
    if (!exists) {
      console.log(`  ${name}: collection does not exist, skipping`);
      continue;
    }
    const before = await db.collection(name).countDocuments();
    const res = await db.collection(name).deleteMany({});
    console.log(`  ${name}: deleted ${res.deletedCount} of ${before} documents`);
  }

  // --- Re-ensure admin user + staff PIN so the system is immediately usable ---
  const User = mongoose.models.User || mongoose.model("User", UserSchema);
  const Setting = mongoose.models.Setting || mongoose.model("Setting", SettingSchema);

  const email = process.env.KASSE_ADMIN_EMAIL || "admin@chickennchicken.dk";
  const password = process.env.KASSE_ADMIN_PASSWORD || "KasseAdmin2025";
  const name = process.env.KASSE_ADMIN_NAME || "Kasse Admin";
  const hashedPw = await bcrypt.hash(password, 10);
  await User.findOneAndUpdate(
    { email: email.toLowerCase() },
    { email: email.toLowerCase(), password: hashedPw, name },
    { upsert: true }
  );
  console.log(`Admin user ensured: ${email}`);

  const staffPin = process.env.KASSE_STAFF_PIN || "7026";
  const hashedPin = await bcrypt.hash(staffPin, 10);
  await Setting.findOneAndUpdate(
    { key: "staffPin" },
    { key: "staffPin", value: hashedPin },
    { upsert: true }
  );
  console.log(`Staff PIN ensured: ${staffPin}`);

  await mongoose.disconnect();
  console.log("Done. Kasse history cleared.");
}

main().catch((err) => {
  console.error("Reset failed:", err);
  process.exit(1);
});
