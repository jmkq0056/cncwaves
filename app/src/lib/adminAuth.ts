import { cookies } from "next/headers";
import { connectDB } from "./db";
import { requireAuth } from "./auth";
import AdminSession from "./models/AdminSession";

// Server-side admin check. Requires:
//   - a valid login session (cookie)
//   - a non-expired admin_session cookie linked to this user
// Throws "Unauthorized" if either is missing/expired.
// Use this on any route that must remain behind the admin passcode
// (Stock writes, Receivings create/list, Price writes, etc.).
export async function requireAdmin(): Promise<{ userId: string; email: string }> {
  const session = await requireAuth();
  await connectDB();
  const cookieStore = await cookies();
  const sessionId = cookieStore.get("admin_session")?.value;
  if (!sessionId) throw new Error("Unauthorized");
  const adminSession = await AdminSession.findOne({
    _id: sessionId,
    userId: session.userId,
    expiresAt: { $gt: new Date() },
  }).lean();
  if (!adminSession) throw new Error("Unauthorized");
  return { userId: session.userId, email: session.email };
}
