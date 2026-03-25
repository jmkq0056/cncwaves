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

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);

  const User = mongoose.model("User", UserSchema);

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

  await mongoose.disconnect();
}

main().catch((err) => {
  console.error("Seed failed:", err);
  process.exit(1);
});
