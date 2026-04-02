import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Order from "@/models/Order";

export async function POST(req: NextRequest) {
  await connectDB();
  const body = await req.json();

  // Generate order number (simple incrementing)
  const lastOrder = await Order.findOne().sort({ orderNumber: -1 }).lean();
  const orderNumber = lastOrder ? (lastOrder as any).orderNumber + 1 : 1001;

  const total = body.items.reduce((sum: number, i: any) => sum + i.price * i.quantity, 0);

  const order = await Order.create({
    orderNumber,
    type: body.type || "take-away",
    items: body.items,
    subtotal: total,
    total,
    status: "pending",
    paymentMethod: "unpaid",
    tableNumber: body.tableNumber,
  });

  return NextResponse.json({ orderNumber: order.orderNumber, orderId: order._id, total });
}
