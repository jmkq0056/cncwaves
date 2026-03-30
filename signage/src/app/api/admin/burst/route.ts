import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";

// GET: get burst status (are any screens burst-enabled?)
export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();
  const screens = await Screen.find({ burstEnabled: true }).lean();
  return NextResponse.json({
    enabled: screens.length > 0,
    count: screens.length,
    screenIds: screens.map((s: any) => s._id),
  });
}

// PUT: toggle burst on/off for all screens at once
export async function PUT(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  const { enabled } = await request.json();
  await connectDB();

  if (enabled) {
    // Enable burst on screens that have a burst image configured
    await Screen.updateMany(
      { burstImageUrl: { $ne: "" } },
      { $set: { burstEnabled: true } }
    );
  } else {
    // Disable all
    await Screen.updateMany({}, { $set: { burstEnabled: false } });
  }

  const count = await Screen.countDocuments({ burstEnabled: true });
  return NextResponse.json({ enabled: count > 0, count });
}
