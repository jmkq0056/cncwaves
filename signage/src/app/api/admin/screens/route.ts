import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";

export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    await connectDB();
    const screens = await Screen.find().sort({ _id: 1 }).lean();

    return NextResponse.json(
      screens.map((s: any) => ({
        _id: s._id,
        name: s.name,
        imageCount: s.images?.length || 0,
        firstImage: s.images?.[0]?.url || null,
        rotationInterval: s.rotationInterval,
        published: s.published || false,
        publishedAt: s.publishedAt || null,
        updatedAt: s.updatedAt,
        screenOnTime: s.screenOnTime || "",
        screenOffTime: s.screenOffTime || "",
        screenOffMode: s.screenOffMode || "dim",
        burstEnabled: s.burstEnabled || false,
        burstInterval: s.burstInterval || 3,
        burstDuration: s.burstDuration || 10,
      }))
    );
  } catch (e) {
    console.error("GET /api/admin/screens error:", e);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
