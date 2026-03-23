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

async function generateCode(): Promise<string> {
  // Generate 8-digit numeric code, ensure unique
  for (let i = 0; i < 10; i++) {
    const code = String(Math.floor(10000000 + Math.random() * 90000000));
    const exists = await Product.findOne({ code });
    if (!exists) return code;
  }
  // Fallback: timestamp-based
  return String(Date.now()).slice(-8);
}

export async function POST(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const body = await req.json();
  const { name, brand, category, unit, image } = body;

  if (!name) {
    return NextResponse.json({ error: "Name is required" }, { status: 400 });
  }

  const code = body.code || await generateCode();

  const existing = await Product.findOne({ code });
  if (existing) {
    return NextResponse.json({ error: "Product with this code already exists" }, { status: 409 });
  }

  const product = await Product.create({ code, name, brand, category, unit, image });
  return NextResponse.json(product, { status: 201 });
}
