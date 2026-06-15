import { NextResponse } from "next/server";
import { EUR_TO_DKK as FALLBACK } from "@/lib/currency";

// GET /api/fx → live EUR → DKK rate, source-cited.
// Source: api.frankfurter.app — official ECB data, no API key required,
// updated daily during ECB trading hours. We cache for 1 hour at the
// Vercel CDN edge so 99% of clients hit cache, not the upstream.
// On any upstream failure (HTTP error, malformed response, fetch throw)
// we silently fall back to the constant in lib/currency.ts so the Price
// page is never broken by a third-party blip.
export async function GET() {
  try {
    const r = await fetch("https://api.frankfurter.app/latest?from=EUR&to=DKK", {
      // 1 hour cache — ECB updates once per day anyway
      next: { revalidate: 3600 },
    });
    if (!r.ok) throw new Error(`upstream ${r.status}`);
    const data = await r.json();
    const eurToDkk = Number(data?.rates?.DKK);
    if (!Number.isFinite(eurToDkk) || eurToDkk <= 0) throw new Error("bad shape");
    return NextResponse.json({
      eurToDkk,
      source: "frankfurter.app (ECB)",
      asOf: data?.date || null,
      live: true,
    });
  } catch {
    return NextResponse.json({
      eurToDkk: FALLBACK,
      source: "fallback constant",
      asOf: null,
      live: false,
    });
  }
}
