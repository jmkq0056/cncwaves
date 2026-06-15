import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import mongoose from "mongoose";
import bcrypt from "bcryptjs";

const MONGO_URI = process.env.MONGO_URI!;

const UserSchema = new mongoose.Schema({
  email: { type: String, required: true, unique: true, lowercase: true },
  password: { type: String, required: true },
  name: { type: String, default: "" },
}, { timestamps: true });

const SettingSchema = new mongoose.Schema({
  key: { type: String, required: true, unique: true },
  value: { type: String, required: true },
}, { timestamps: true });

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);

  const User = mongoose.model("User", UserSchema);
  const Setting = mongoose.model("Setting", SettingSchema);

  // Seed admin user for kasseopgørelse
  const email = process.env.KASSE_ADMIN_EMAIL || "admin@chickennchicken.dk";
  const password = process.env.KASSE_ADMIN_PASSWORD || "KasseAdmin2025";
  const name = process.env.KASSE_ADMIN_NAME || "Kasse Admin";

  console.log(`Seeding kasse admin user: ${email}`);
  const hashedPw = await bcrypt.hash(password, 10);
  await User.findOneAndUpdate(
    { email: email.toLowerCase() },
    { email: email.toLowerCase(), password: hashedPw, name },
    { upsert: true }
  );
  console.log("Done! Admin user seeded.");
  console.log(`  Email: ${email}`);
  console.log(`  Password: ${password}`);

  // Seed the staff PIN (used by the separate /staff PWA).
  const staffPin = process.env.KASSE_STAFF_PIN || "7026";
  const hashedPin = await bcrypt.hash(staffPin, 10);
  await Setting.findOneAndUpdate(
    { key: "staffPin" },
    { key: "staffPin", value: hashedPin },
    { upsert: true }
  );
  console.log(`Staff PIN seeded: ${staffPin}  (key: staffPin)`);

  await mongoose.disconnect();
}

main().catch((err) => {
  console.error("Seed failed:", err);
  process.exit(1);
});
