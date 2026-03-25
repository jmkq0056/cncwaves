import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import CashEntry from "@/lib/models/CashEntry";

export async function GET(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const sp = req.nextUrl.searchParams;
  const restaurant = sp.get("restaurant") || "cnc";

  const entries = await CashEntry.find({ restaurant }).sort({ date: -1 }).lean();

  if (entries.length === 0) {
    return NextResponse.json({ entries: 0 });
  }

  const totalPosCash = entries.reduce((s, e: any) => s + (e.posCash || 0), 0);
  const totalPosCard = entries.reduce((s, e: any) => s + (e.posCard || 0), 0);
  const totalKiosk = entries.reduce((s, e: any) => s + (e.kioskSales || 0), 0);
  const totalOnline = entries.reduce((s, e: any) => s + (e.onlineSales || 0), 0);
  const totalSales = totalPosCash + totalPosCard + totalKiosk + totalOnline;

  const avgDaily = totalSales / entries.length;
  const dateRange = {
    from: entries[entries.length - 1].date,
    to: entries[0].date,
  };

  return NextResponse.json({
    entries: entries.length,
    dateRange,
    totalSales,
    avgDaily: Math.round(avgDaily),
    channels: {
      posCash: totalPosCash,
      posCard: totalPosCard,
      kiosk: totalKiosk,
      online: totalOnline,
    },
  });
}
