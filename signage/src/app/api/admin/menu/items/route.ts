import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import MenuItem from "@/models/MenuItem";
import { verifyAdmin } from "@/lib/auth";

// GET: list all menu items, optionally filter by ?category=
export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  await connectDB();

  const category = request.nextUrl.searchParams.get("category");
  const filter: any = {};
  if (category) filter.category = category;

  const items = await MenuItem.find(filter)
    .sort({ category: 1, sortOrder: 1 })
    .lean();

  return NextResponse.json(items);
}

// PUT: update a menu item (toggle soldOut, change price, etc.)
export async function PUT(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = await request.json();
  const { _id, ...updates } = body;

  if (!_id) {
    return NextResponse.json({ error: "_id required" }, { status: 400 });
  }

  // Only allow safe fields to be updated
  const allowed: Record<string, any> = {};
  for (const key of ["soldOut", "price", "displayName", "description", "weight", "variants", "spicy", "vegan"]) {
    if (updates[key] !== undefined) allowed[key] = updates[key];
  }

  await connectDB();
  const item = await MenuItem.findByIdAndUpdate(_id, allowed, { new: true }).lean();

  if (!item) {
    return NextResponse.json({ error: "Item not found" }, { status: 404 });
  }

  return NextResponse.json(item);
}
