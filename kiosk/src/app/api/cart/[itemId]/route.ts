import { NextRequest, NextResponse } from "next/server";

const carts = new Map<string, any[]>();
function getCart(id: string) {
  if (!carts.has(id)) carts.set(id, []);
  return carts.get(id)!;
}

export async function DELETE(_: Request, { params }: { params: { itemId: string } }) {
  const cartId = "default";
  const cart = getCart(cartId);
  const idx = cart.findIndex((i) => i.id === params.itemId);
  if (idx !== -1) cart.splice(idx, 1);
  const total = cart.reduce((sum, i) => sum + i.price * i.quantity, 0);
  return NextResponse.json({ items: cart, total });
}
