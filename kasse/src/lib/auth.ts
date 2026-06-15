import jwt from "jsonwebtoken";
import { cookies } from "next/headers";

const JWT_SECRET = process.env.JWT_SECRET!;

export function signToken(payload: { userId: string; email: string }) {
  return jwt.sign({ ...payload, role: "admin" }, JWT_SECRET, { expiresIn: "1825d" });
}

export function verifyToken(token: string) {
  return jwt.verify(token, JWT_SECRET) as { userId: string; email: string; role?: string };
}

export async function getSession() {
  const cookieStore = await cookies();
  const token = cookieStore.get("token")?.value;
  if (!token) return null;
  try {
    const payload = verifyToken(token);
    // A staff (PIN) token must NEVER be usable as an admin session — it can only
    // ever reach the dedicated /api/staff/* endpoints, never stats/history/etc.
    if (payload.role === "staff") return null;
    return payload;
  } catch {
    return null;
  }
}

export async function requireAuth() {
  const session = await getSession();
  if (!session) throw new Error("Unauthorized");
  return session;
}

/* ----------------------------------------------------------------------------
 * Staff (PIN) tokens — completely separate from admin auth.
 *
 * - Short-lived (a single working day) so the PIN must be re-entered each shift.
 * - Carry no user identity and no admin privileges.
 * - Pinned to the date they were issued for, so a token can only ever be used
 *   to submit *that* day's entry.
 * -------------------------------------------------------------------------- */
const STAFF_TOKEN_TTL = "16h";

export function signStaffToken(date: string) {
  return jwt.sign({ role: "staff", date }, JWT_SECRET, { expiresIn: STAFF_TOKEN_TTL });
}

export function verifyStaffToken(token: string): { role: "staff"; date: string } {
  const payload = jwt.verify(token, JWT_SECRET) as { role?: string; date?: string };
  if (payload.role !== "staff" || !payload.date) {
    throw new Error("Invalid staff token");
  }
  return payload as { role: "staff"; date: string };
}
