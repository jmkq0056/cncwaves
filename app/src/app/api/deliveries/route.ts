import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";

function generateRef() {
  const now = new Date();
  const y = now.getFullYear();
  const m = String(now.getMonth() + 1).padStart(2, "0");
  const rand = String(Math.floor(Math.random() * 10000)).padStart(4, "0");
  return `DEL${y}/${m}/${rand}`;
}

export async function GET() {
  await requireAuth();
  await connectDB();
  const deliveries = await Delivery.find().sort({ createdAt: -1 }).lean();
  return NextResponse.json(deliveries);
}

export async function POST(req: NextRequest) {
  const session = await requireAuth();
  await connectDB();

  const { items } = await req.json();
  if (!items || items.length === 0) {
    return NextResponse.json({ error: "At least one item is required" }, { status: 400 });
  }

  const delivery = await Delivery.create({
    reference: generateRef(),
    items,
    createdBy: session.email,
  });

  return NextResponse.json(delivery, { status: 201 });
}
