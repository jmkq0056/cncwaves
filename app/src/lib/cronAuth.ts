import { NextRequest } from "next/server";
import { getSession } from "./auth";

// Allow EITHER:
//   - an admin session (cookie-based, normal UI)
//   - a Bearer token equal to process.env.CRON_SECRET (Hetzner cron / curl)
// Throws "Unauthorized" if neither holds.
export async function requireAdminOrCron(req: NextRequest): Promise<{ kind: "admin" | "cron"; email: string }> {
  const bearer = req.headers.get("authorization")?.replace(/^Bearer\s+/i, "").trim();
  if (bearer && process.env.CRON_SECRET && bearer === process.env.CRON_SECRET) {
    return { kind: "cron", email: "cron@hetzner" };
  }
  const session = await getSession();
  if (session) return { kind: "admin", email: session.email };
  throw new Error("Unauthorized");
}
