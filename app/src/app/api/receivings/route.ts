import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAdmin } from "@/lib/adminAuth";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";

function generateRef() {
  const now = new Date();
  const y = now.getFullYear();
  const m = String(now.getMonth() + 1).padStart(2, "0");
  const rand = String(Math.floor(Math.random() * 10000)).padStart(4, "0");
  return `RCV${y}/${m}/${rand}`;
}

// GET — list incoming receivings (admin only).
export async function GET() {
  try {
    await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();
  const receivings = await Delivery.find({ direction: "in" })
    .sort({ createdAt: -1 })
    .lean();
  return NextResponse.json(receivings);
}

// POST — create a new receiving (admin only). Same shape as a delivery
// but direction is hardcoded to "in", so the pick endpoint will ADD to
// stock instead of deducting. No email/Resend integration — receivings
// are internal-only.
export async function POST(req: NextRequest) {
  let auth;
  try {
    auth = await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();

  const { items } = await req.json();
  if (!items || items.length === 0) {
    return NextResponse.json({ error: "At least one item is required" }, { status: 400 });
  }

  // Receiving creates a record AND immediately applies stock additions —
  // the admin is doing the picking themselves (vs the share-token model
  // used for outgoing deliveries). Each line is marked "picked" up-front
  // and Product.qty is bumped atomically via $inc.
  const itemsToSave = items.map((item: any) => {
    const qty = Math.max(0, Math.floor(Number(item.quantity) || 0));
    return {
      ...item,
      quantity: qty,
      pickedQuantity: qty,
      status: "picked",
    };
  });

  // Apply stock additions per-product (atomic $inc, race-safe).
  for (const it of itemsToSave) {
    const pid = (it as any).productId;
    const qty = (it as any).quantity;
    if (pid && qty > 0) {
      await Product.findByIdAndUpdate(pid, { $inc: { qty } });
    }
  }

  const receiving = await Delivery.create({
    reference: generateRef(),
    direction: "in",
    items: itemsToSave,
    status: "completed",
    createdBy: auth.email,
  });

  return NextResponse.json(receiving.toObject(), { status: 201 });
}
