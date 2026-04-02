import { NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Item from "@/models/Item";

export async function GET(_: Request, { params }: { params: { id: string } }) {
  await connectDB();
  const item = await Item.findById(params.id).lean();
  if (!item) return NextResponse.json({ error: "Not found" }, { status: 404 });
  return NextResponse.json(item);
}
