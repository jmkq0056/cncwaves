import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

// Staff PWA + its API authenticate themselves (PIN / bearer token), so they are
// exempt from the admin cookie gate below.
const publicPaths = ["/login", "/api/auth/login", "/staff", "/api/staff"];

export function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;

  if (
    publicPaths.some((p) => pathname.startsWith(p)) ||
    pathname.startsWith("/_next") ||
    pathname.startsWith("/assets") ||
    pathname.includes(".")
  ) {
    return NextResponse.next();
  }

  if (pathname.startsWith("/api/")) {
    const token = req.cookies.get("token")?.value;
    if (!token) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }
    return NextResponse.next();
  }

  const token = req.cookies.get("token")?.value;
  if (!token) {
    return NextResponse.redirect(new URL("/login", req.url));
  }

  return NextResponse.next();
}

export const config = {
  matcher: ["/((?!_next/static|_next/image|favicon.ico).*)"],
};
