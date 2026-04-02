import { NextRequest, NextResponse } from "next/server";

// In-memory cart per session (MVP — no auth, single kiosk)
const carts = new Map<string, any[]>();

function getCart(id: string) {
  if (!carts.has(id)) carts.set(id, []);
  return carts.get(id)!;
}

export async function GET(req: NextRequest) {
  const cartId = req.nextUrl.searchParams.get("cartId") || "default";
  const cart = getCart(cartId);
  const total = cart.reduce((sum, i) => sum + i.price * i.quantity, 0);
  return NextResponse.json({ items: cart, total });
}

export async function POST(req: NextRequest) {
  const body = await req.json();
  const cartId = body.cartId || "default";
  const cart = getCart(cartId);

  const cartItem = {
    id: Date.now().toString(36),
    itemId: body.itemId,
    name: body.name,
    price: body.price,
    image: body.image,
    quantity: body.quantity || 1,
    addons: body.addons || [],
  };

  // Recalculate price with addons
  const addonTotal = cartItem.addons.reduce((s: number, a: any) => s + (a.price || 0), 0);
  cartItem.price = body.basePrice + addonTotal;

  cart.push(cartItem);
  const total = cart.reduce((sum, i) => sum + i.price * i.quantity, 0);
  return NextResponse.json({ items: cart, total });
}

export async function DELETE(req: NextRequest) {
  const cartId = req.nextUrl.searchParams.get("cartId") || "default";
  carts.set(cartId, []);
  return NextResponse.json({ items: [], total: 0 });
}
