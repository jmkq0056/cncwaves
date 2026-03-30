import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import ImageModel from "@/models/Image";
import { verifyAdmin } from "@/lib/auth";

export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  await connectDB();
  const categories = await ImageModel.distinct("category");
  return NextResponse.json(categories.sort());
}
