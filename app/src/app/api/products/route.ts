import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Product from "@/lib/models/Product";

export async function GET() {
  await requireAuth();
  await connectDB();
  const products = await Product.find().sort({ category: 1, name: 1 }).lean();
  return NextResponse.json(products);
}

export async function POST(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const body = await req.json();
  const { code, name, brand, category, unit, image } = body;

  if (!code || !name) {
    return NextResponse.json({ error: "Code and name are required" }, { status: 400 });
  }

  const existing = await Product.findOne({ code });
  if (existing) {
    return NextResponse.json({ error: "Product with this code already exists" }, { status: 409 });
  }

  const product = await Product.create({ code, name, brand, category, unit, image });
  return NextResponse.json(product, { status: 201 });
}
