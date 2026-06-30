import { NextRequest, NextResponse } from "next/server";
import { Resend } from "resend";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";
import { generatePackingListPDF } from "@/lib/generate-pdf";
import { computeDeliveryValue } from "@/lib/deliveryValue";

function generateRef(direction: "out" | "in" = "out") {
  const now = new Date();
  const y = now.getFullYear();
  const m = String(now.getMonth() + 1).padStart(2, "0");
  const rand = String(Math.floor(Math.random() * 10000)).padStart(4, "0");
  const prefix = direction === "in" ? "RCV" : "DEL";
  return `${prefix}${y}/${m}/${rand}`;
}

export async function GET() {
  await requireAuth();
  await connectDB();
  // Employees see only outgoing deliveries here. Receivings are admin-only
  // and live under /api/receivings, so they never leak into this listing.
  const deliveries = await Delivery.find({ direction: { $ne: "in" } })
    .sort({ createdAt: -1 })
    .lean<any[]>();

  // Bulk-enrich each delivery with its computed value (qty × current
  // priceGross, FX→DKK). One product fetch for ALL unique productIds
  // across the entire list, one FX fetch. Keeps the list page snappy
  // even with hundreds of deliveries.
  try {
    const productIds = Array.from(
      new Set(
        deliveries.flatMap((d) => (d.items || []).map((i: any) => i.productId).filter(Boolean))
      )
    );
    const products = productIds.length
      ? await (await import("@/lib/models/Product")).default
          .find({ _id: { $in: productIds } })
          .select("_id priceNet priceCurrency vatRate noVat")
          .lean<Array<any>>()
      : [];
    const byId = new Map(products.map((p: any) => [String(p._id), p]));
    const { EUR_TO_DKK, convert, effectiveVatRate } = await import("@/lib/currency");
    let fxRate = EUR_TO_DKK;
    try {
      const r = await fetch("https://api.frankfurter.app/latest?from=EUR&to=DKK", {
        next: { revalidate: 3600 },
      });
      if (r.ok) {
        const d = await r.json();
        const v = Number(d?.rates?.DKK);
        if (Number.isFinite(v) && v > 0) fxRate = v;
      }
    } catch {}
    for (const d of deliveries) {
      let net = 0;
      let gross = 0;
      let pickedCount = 0;
      let pendingCount = 0;
      let cancelledCount = 0;
      for (const it of d.items || []) {
        const qty = Number(it.quantity) || 0;
        const p = it.productId ? byId.get(String(it.productId)) : null;
        const priceNet = Number(p?.priceNet) || 0;
        const rowCur = p?.priceCurrency === "EUR" ? "EUR" : "DKK";
        const vat = effectiveVatRate({ vatRate: p?.vatRate, noVat: p?.noVat });
        const lineNetDKK = convert(qty * priceNet, rowCur as any, "DKK", fxRate);
        net += lineNetDKK;
        gross += lineNetDKK * (1 + vat);
        if (it.status === "picked") pickedCount++;
        else if (it.status === "cancelled") cancelledCount++;
        else pendingCount++;
      }
      d.valueNetDKK = Math.round(net * 100) / 100;
      d.valueGrossDKK = Math.round(gross * 100) / 100;
      d.pickedCount = pickedCount;
      d.pendingCount = pendingCount;
      d.cancelledCount = cancelledCount;
    }
  } catch {
    // value enrichment best-effort; list still works without it
  }

  return NextResponse.json(deliveries);
}

export async function POST(req: NextRequest) {
  const session = await requireAuth();
  await connectDB();

  const { items } = await req.json();
  if (!items || items.length === 0) {
    return NextResponse.json({ error: "At least one item is required" }, { status: 400 });
  }

  const itemsWithStatus = items.map((item: any) => ({
    ...item,
    status: "pending",
  }));

  // This endpoint is employee-accessible — it can ONLY create outgoing
  // deliveries. Receivings go through /api/receivings (admin-gated).
  const delivery = await Delivery.create({
    reference: generateRef("out"),
    direction: "out",
    items: itemsWithStatus,
    createdBy: session.email,
  });

  // Auto-send email
  let emailSent = false;
  let emailError = "";

  try {
    const emailSetting = await Setting.findOne({ key: "recipient_email" }).lean() as any;
    const recipientEmail = emailSetting?.value;

    if (recipientEmail) {
      const baseUrl = req.headers.get("origin") || `https://${req.headers.get("host")}`;
      const pickUrl = `${baseUrl}/d/${delivery.shareToken}`;

      // Compute delivery value (qty × current priceGross, FX→DKK).
      // Falls back gracefully — pricing is optional so this can't break
      // delivery creation if the helper throws.
      let value: { netDKK: number; grossDKK: number; fxRate: number } | null = null;
      try {
        value = await computeDeliveryValue(delivery.items as any[]);
      } catch {}

      // Generate PDF (with the value block when available)
      const pdfBuffer = generatePackingListPDF(delivery, pickUrl, value);

      const valueLine = value
        ? `<p style="color:#1e293b;font-size:14px;margin:8px 0 4px;font-weight:bold;">Value: ${value.grossDKK.toFixed(2)} kr <span style="color:#777;font-weight:normal;font-size:11px;">incl. MOMS</span></p>
           <p style="color:#999;font-size:10px;margin:0 0 14px;">Net ${value.netDKK.toFixed(2)} kr · FX EUR→DKK ${value.fxRate.toFixed(4)}</p>`
        : "";

      const html = `
        <div style="font-family:Arial,sans-serif;max-width:450px;margin:0 auto;">
          <div style="background:#f17d00;color:#fff;padding:14px 18px;border-radius:10px 10px 0 0;">
            <h2 style="margin:0;font-size:16px;">New Delivery: ${delivery.reference}</h2>
          </div>
          <div style="border:1px solid #eee;border-top:none;border-radius:0 0 10px 10px;padding:20px;text-align:center;">
            <p style="color:#555;font-size:13px;margin:0 0 4px;">${delivery.items.length} items - ${delivery.createdBy}</p>
            <p style="color:#999;font-size:11px;margin:0 0 12px;">${new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}</p>
            ${valueLine}
            <a href="${pickUrl}" style="display:inline-block;background:#f17d00;color:#fff;text-decoration:none;padding:14px 40px;border-radius:8px;font-size:15px;font-weight:bold;">
              Open Pick List
            </a>
            <p style="margin-top:14px;font-size:11px;color:#aaa;">Share this link with the driver. PDF packing list attached.</p>
          </div>
          <p style="text-align:center;color:#ccc;font-size:9px;margin-top:10px;">CNC Manager</p>
        </div>
      `;

      const resend = new Resend(process.env.RESEND_API_KEY);
      const to = recipientEmail.split(",").map((e: string) => e.trim()).filter(Boolean);
      await resend.emails.send({
        from: `${process.env.EMAIL_FROM_NAME} <${process.env.EMAIL_FROM_ADDRESS}>`,
        to,
        subject: `Delivery ${delivery.reference} - ${delivery.items.length} items`,
        html,
        attachments: [{
          filename: `packing-list-${delivery.reference.replace(/\//g, "-")}.pdf`,
          content: pdfBuffer,
        }],
      });

      emailSent = true;
    }
  } catch (err: any) {
    emailError = err.message || "Email failed";
    console.error("Delivery email failed:", err);
  }

  delivery.emailSent = emailSent;
  delivery.emailError = emailError;
  await delivery.save();

  return NextResponse.json({
    ...delivery.toObject(),
    emailSent,
    emailError,
  }, { status: 201 });
}
