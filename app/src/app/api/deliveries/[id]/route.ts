import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";

export async function GET(_req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const delivery = await Delivery.findById(id).lean();
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });
  return NextResponse.json(delivery);
}

export async function PUT(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const body = await req.json();
  const delivery = await Delivery.findByIdAndUpdate(id, body, { new: true }).lean();
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });
  return NextResponse.json(delivery);
}

export async function DELETE(_req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const delivery = await Delivery.findByIdAndDelete(id);
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });
  return NextResponse.json({ success: true });
}
