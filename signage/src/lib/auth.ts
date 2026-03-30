import { cookies } from "next/headers";
import { NextRequest } from "next/server";

const ADMIN_PIN = process.env.ADMIN_PIN || "1234";

export function verifyAdmin(request: NextRequest): boolean {
  const pin =
    request.headers.get("x-admin-pin") ||
    request.cookies.get("admin_pin")?.value;
  return pin === ADMIN_PIN;
}

export async function isAdminAuthenticated(): Promise<boolean> {
  const cookieStore = await cookies();
  const pin = cookieStore.get("admin_pin")?.value;
  return pin === ADMIN_PIN;
}

export { ADMIN_PIN };
