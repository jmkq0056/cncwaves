import mongoose from "mongoose";
import dotenv from "dotenv";
import path from "path";

dotenv.config({ path: path.resolve(__dirname, "../.env.local") });

async function seed() {
  const uri = process.env.MONGO_URI;
  if (!uri) {
    console.error("MONGO_URI not set");
    process.exit(1);
  }

  await mongoose.connect(uri);
  const db = mongoose.connection.db!;
  const col = db.collection("screens");

  for (let i = 1; i <= 20; i++) {
    await col.updateOne(
      { _id: i as any },
      {
        $setOnInsert: {
          name: `Screen ${i}`,
          rotationInterval: 10000,
          images: [],
          playlistHash: "",
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      },
      { upsert: true }
    );
  }

  console.log("Seeded 20 screens");
  await mongoose.disconnect();
}

seed().catch(console.error);
