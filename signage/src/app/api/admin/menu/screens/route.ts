import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import MenuScreen from "@/models/MenuScreen";
import MenuItem from "@/models/MenuItem";
import { verifyAdmin } from "@/lib/auth";

// GET: list all menu screens with populated items
export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  await connectDB();
  // Ensure MenuItem model is registered for populate
  void MenuItem;

  const screens = await MenuScreen.find()
    .sort({ sortOrder: 1 })
    .populate("items")
    .populate("extraItems")
    .lean();

  return NextResponse.json(screens);
}
