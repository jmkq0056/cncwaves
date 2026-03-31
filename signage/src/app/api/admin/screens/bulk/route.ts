import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";
import { computePlaylistHash } from "@/lib/hash";

const ALLOWED_FIELDS = [
  "screenOnTime",
  "screenOffTime",
  "screenOffMode",
  "burstEnabled",
  "burstInterval",
  "burstDuration",
  "published",
];

export async function PUT(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    const { screenIds, updates } = await request.json();

    if (!Array.isArray(screenIds) || screenIds.length === 0) {
      return NextResponse.json(
        { error: "screenIds must be a non-empty array" },
        { status: 400 }
      );
    }
    if (!updates || typeof updates !== "object") {
      return NextResponse.json(
        { error: "updates must be an object" },
        { status: 400 }
      );
    }

    // Only allow safe bulk fields
    const safeUpdates: Record<string, any> = {};
    for (const key of ALLOWED_FIELDS) {
      if (key in updates) {
        safeUpdates[key] = updates[key];
      }
    }

    if (Object.keys(safeUpdates).length === 0) {
      return NextResponse.json(
        { error: "No valid fields to update" },
        { status: 400 }
      );
    }

    // Validate values
    if (safeUpdates.burstInterval !== undefined) {
      safeUpdates.burstInterval = Math.max(1, Math.min(60, Number(safeUpdates.burstInterval)));
    }
    if (safeUpdates.burstDuration !== undefined) {
      safeUpdates.burstDuration = Math.max(3, Math.min(120, Number(safeUpdates.burstDuration)));
    }
    if (safeUpdates.screenOffMode && !["dim", "reboot"].includes(safeUpdates.screenOffMode)) {
      safeUpdates.screenOffMode = "dim";
    }

    await connectDB();

    // If publishing, need to handle per-screen hash computation
    if (safeUpdates.published === true) {
      let count = 0;
      for (const id of screenIds) {
        const screen = await Screen.findById(id);
        if (!screen || !screen.images?.length) continue;

        screen.set(safeUpdates);
        screen.publishedAt = new Date();
        screen.playlistHash = computePlaylistHash(
          screen.images,
          screen.rotationInterval || 10000
        );
        await screen.save();
        count++;
      }
      return NextResponse.json({ success: true, count });
    }

    // Simple bulk update for non-publish fields
    safeUpdates.updatedAt = new Date();
    const result = await Screen.updateMany(
      { _id: { $in: screenIds } },
      { $set: safeUpdates }
    );

    return NextResponse.json({
      success: true,
      count: result.modifiedCount,
    });
  } catch (e) {
    console.error("PUT /api/admin/screens/bulk error:", e);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
