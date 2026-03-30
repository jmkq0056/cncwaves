import mongoose from "mongoose";

const MONGO_URI = process.env.MONGO_URI!;

let cached = (global as any).mongoose || { conn: null, promise: null };
let seeded = (global as any).__cnc_seeded || false;

export async function connectDB() {
  if (cached.conn) {
    if (!seeded) await seedScreens();
    return cached.conn;
  }

  if (!cached.promise) {
    cached.promise = mongoose.connect(MONGO_URI).then((m) => m);
    (global as any).mongoose = cached;
  }

  cached.conn = await cached.promise;
  await seedScreens();
  return cached.conn;
}

// Auto-seed 20 screens on first connection (idempotent)
async function seedScreens() {
  if (seeded) return;
  try {
    const db = mongoose.connection.db;
    if (!db) return;
    const col = db.collection("screens");
    const count = await col.countDocuments();
    if (count >= 20) {
      seeded = true;
      (global as any).__cnc_seeded = true;
      return;
    }
    for (let i = 1; i <= 20; i++) {
      await col.updateOne(
        { _id: i as any },
        {
          $setOnInsert: {
            name: `Screen ${i}`,
            rotationInterval: 10000,
            images: [],
            playlistHash: "",
            published: false,
            publishedAt: null,
            createdAt: new Date(),
            updatedAt: new Date(),
          },
        },
        { upsert: true }
      );
    }
    seeded = true;
    (global as any).__cnc_seeded = true;
    console.log("Auto-seeded 20 screens");
  } catch (e) {
    console.warn("Seed check failed (non-fatal):", e);
  }
}
