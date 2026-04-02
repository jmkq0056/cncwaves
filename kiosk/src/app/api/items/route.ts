import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Item from "@/models/Item";

export async function GET(req: NextRequest) {
  await connectDB();
  const categoryId = req.nextUrl.searchParams.get("category");
  const filter = categoryId ? { category: categoryId } : {};
  const items = await Item.find(filter).sort({ sortOrder: 1 }).select("-addons").lean();
  return NextResponse.json(items);
}
