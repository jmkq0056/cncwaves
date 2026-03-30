"use client";

import { useEffect, useState, useRef, useCallback } from "react";
import { useParams, useRouter } from "next/navigation";
// Export via server-side Playwright screenshot

interface MenuItem {
  _id: string; name: string; displayName: string; description: string;
  price: number; category: string; image: string; weight: string;
  friesSize: string; spicy: boolean; vegan: boolean; variants: string;
  soldOut: boolean;
  cleanImage: string;
}
interface BottomItem { name: string; price: number; image: string; }
interface MenuScreen {
  _id: string; screenId: string; title: string; subtitle: string;
  layout: string; storMenu: { text: string; price: string };
  items: MenuItem[]; extraItems: MenuItem[];
  bottomSection: { kind: string; items: BottomItem[] }; note: string;
}

// === EXACT screen dimensions (half of 2160x3840, export at 2x) ===
const BW = 1080;
const BH = 1920;

// CNC brand colors (from kasse tailwind + inspiration)
const RED = "#9d292b";
const ORANGE = "#f17d00";

const sf = (v: any) => (v && typeof v === "string" ? v : "");

// Use cleaned image (bg removed + cropped) if available, else original
function imgUrl(item: any): string {
  return item.cleanImage || item.image || "";
}

export default function MenuScreenEditor() {
  const params = useParams();
  const router = useRouter();
  const screenId = params.screenId as string;
  const [screen, setScreen] = useState<MenuScreen | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState<string | null>(null);
  const [editingPrice, setEditingPrice] = useState<string | null>(null);
  const [priceInput, setPriceInput] = useState("");
  const [exporting, setExporting] = useState(false);
  const [viewScale, setViewScale] = useState(0.45); // preview zoom
  const boardRef = useRef<HTMLDivElement>(null);

  const loadScreen = useCallback(async () => {
    try {
      const res = await fetch("/api/admin/menu/screens");
      if (!res.ok) throw new Error("Failed");
      const all = await res.json();
      const found = all.find((sc: any) => sc.screenId === screenId);
      if (found) setScreen(found);
    } catch (e) { console.error(e); } finally { setLoading(false); }
  }, [screenId]);

  useEffect(() => { loadScreen(); }, [loadScreen]);

  async function updateItem(id: string, fields: Record<string, any>) {
    setSaving(id);
    try {
      await fetch("/api/admin/menu/items", {
        method: "PUT", headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ _id: id, ...fields }),
      });
      await loadScreen();
    } finally { setSaving(null); }
  }

  function toggleSoldOut(id: string, cur: boolean) { updateItem(id, { soldOut: !cur }); }

  async function savePrice(id: string) {
    const p = parseFloat(priceInput);
    if (isNaN(p) || p < 0) return;
    await updateItem(id, { price: p });
    setEditingPrice(null);
  }

  if (loading) return <div className="text-gray-400 text-center mt-20">Loading...</div>;
  if (!screen) return <div className="text-red-400 text-center mt-20">Screen not found</div>;

  // =================== COMPONENTS (all sizes in px at 1080x1920) ===================

  function Stripes({ h = 140 }: { h?: number }) {
    return (
      <div style={{ display: "flex", gap: 12, width: 68, height: h, flexShrink: 0, marginRight: 24 }}>
        <div style={{ width: 18, height: "100%", background: RED, borderRadius: 3 }} />
        <div style={{ width: 18, height: "100%", background: ORANGE, borderRadius: 3 }} />
        <div style={{ width: 18, height: "100%", background: RED, borderRadius: 3 }} />
      </div>
    );
  }

  function StorBadge() {
    if (!screen!.storMenu?.text) return null;
    return (
      <div style={{ position: "absolute", top: 24, right: 28, textAlign: "center" }}>
        <div style={{ background: RED, color: "white", fontWeight: 700, fontSize: 24, padding: "12px 24px", borderRadius: 6, lineHeight: 1.2, fontFamily: "Oswald,sans-serif" }}>
          <div>{screen!.storMenu.text}</div>
          <div style={{ fontSize: 30 }}>{screen!.storMenu.price}</div>
        </div>
        <div style={{ width: 0, height: 0, margin: "0 auto", borderLeft: "22px solid transparent", borderRight: "22px solid transparent", borderTop: `16px solid ${RED}` }} />
      </div>
    );
  }

  function Price({ item }: { item: MenuItem }) {
    const ed = editingPrice === item._id;
    return (
      <div style={{ display: "inline-flex", alignItems: "baseline", cursor: "pointer", padding: "4px 8px" }}
        onClick={(e) => { e.stopPropagation(); setEditingPrice(item._id); setPriceInput(String(item.price)); }}>
        {ed ? (
          <input type="number" value={priceInput} onChange={(e) => setPriceInput(e.target.value)}
            onBlur={() => savePrice(item._id)} onKeyDown={(e) => { if (e.key === "Enter") savePrice(item._id); if (e.key === "Escape") setEditingPrice(null); }}
            style={{ width: 130, background: `${ORANGE}33`, border: `4px solid ${ORANGE}`, borderRadius: 8, padding: "4px 8px", fontWeight: 700, fontSize: 72, textAlign: "right", fontFamily: "Oswald,sans-serif", color: "black" }}
            autoFocus onClick={(e) => e.stopPropagation()} />
        ) : (
          <>
            <span style={{ fontWeight: 700, fontSize: 72, color: "black", fontFamily: "Oswald,sans-serif" }}>{item.price}</span>
            <span style={{ fontSize: 30, fontWeight: 700, color: "black", verticalAlign: "super", marginLeft: 4 }}>KR</span>
          </>
        )}
      </div>
    );
  }

  function UdsolgtPrice() {
    return (
      <div style={{ position: "relative", display: "inline-block" }}>
        <div style={{ opacity: 0.12 }}>
          <span style={{ fontWeight: 700, fontSize: 72, color: "black", fontFamily: "Oswald,sans-serif" }}>—</span>
          <span style={{ fontSize: 30, fontWeight: 700, color: "black", verticalAlign: "super", marginLeft: 4 }}>KR</span>
        </div>
        <div style={{ position: "absolute", inset: -8, display: "flex", alignItems: "center", justifyContent: "center", zIndex: 10 }}>
          <span style={{ background: RED, color: "white", fontWeight: 700, fontSize: 32, padding: "6px 24px", transform: "rotate(-12deg)", letterSpacing: 4, fontFamily: "Oswald,sans-serif", whiteSpace: "nowrap" }}>UDSOLGT</span>
        </div>
      </div>
    );
  }

  // =================== MEAL ROW ===================
  // Dynamic row height: fills board without cutoff
  // Header ~200px, bottom ~280px, items get the rest
  const itemCount = (screen?.items || []).length;
  const headerH = 200;
  const bottomH = screen?.bottomSection?.kind ? 280 : 0;
  const rowH = Math.floor((BH - headerH - bottomH) / Math.max(itemCount, 1));
  const imgH = Math.min(rowH - 30, 320);

  function MealRow({ item }: { item: MenuItem }) {
    return (
      <div style={{ display: "flex", alignItems: "center", padding: "4px 20px", borderBottom: "4px solid #eee", cursor: "pointer", gap: 16, height: rowH }}
        onClick={() => toggleSoldOut(item._id, item.soldOut)}>
        {/* Clean image — bg removed by Cloudinary e_bgremoval */}
        <div style={{ width: 420, flexShrink: 0, display: "flex", justifyContent: "center", alignItems: "center" }}>
          {(item.cleanImage || item.image) && <img src={imgUrl(item)} alt="" style={{ width: 400, height: imgH, objectFit: "contain" }} />}
        </div>
        <div style={{ flex: 1, minWidth: 0 }}>
          <div style={{ display: "flex", alignItems: "flex-start", gap: 8 }}>
            <div style={{ fontWeight: 700, fontSize: 38, color: "black", fontFamily: "Oswald,sans-serif", whiteSpace: "pre-line", lineHeight: 1.05 }}>
              {sf(item.displayName) || sf(item.name)}
            </div>
            {item.spicy && <span style={{ fontSize: 26 }}>🌶️</span>}
            {item.vegan && <span style={{ fontSize: 26 }}>🌿</span>}
          </div>
          <div style={{ fontSize: 18, color: "black", lineHeight: 1.25, marginTop: 6, maxHeight: 46, overflow: "hidden", textOverflow: "ellipsis" }}>{sf(item.description)}</div>
          <div style={{ display: "flex", alignItems: "center", gap: 12, marginTop: 10 }}>
            {item.weight && <span style={{ background: ORANGE, color: "white", fontSize: 22, fontWeight: 700, padding: "4px 20px", borderRadius: 24 }}>{item.weight}</span>}
            {item.variants && <span style={{ fontSize: 20, color: RED, fontWeight: 700, background: "#fff0f0", padding: "4px 16px", borderRadius: 8 }}>{item.variants}</span>}
          </div>
        </div>
        <div style={{ flexShrink: 0 }}>
          {item.soldOut ? <UdsolgtPrice /> : <Price item={item} />}
        </div>
      </div>
    );
  }

  // =================== GRID ITEM ===================
  function GridItem({ item, sz = 260 }: { item: MenuItem; sz?: number }) {
    return (
      <div style={{ textAlign: "center", padding: "12px 4px 10px", cursor: "pointer", borderBottom: "4px solid #eee" }}
        onClick={() => toggleSoldOut(item._id, item.soldOut)}>
        {(item.cleanImage || item.image) && <img src={imgUrl(item)} alt="" style={{ width: sz, height: sz, objectFit: "contain", margin: "0 auto 6px", display: "block" }} />}
        <div style={{ fontWeight: 700, fontSize: 30, color: "black", fontFamily: "Oswald,sans-serif", whiteSpace: "pre-line", lineHeight: 1.1 }}>
          {sf(item.displayName) || sf(item.name).toUpperCase()}
        </div>
        {item.soldOut ? <UdsolgtPrice /> : <Price item={item} />}
      </div>
    );
  }

  // =================== BOTTOM ===================
  function Bottom() {
    const bs = screen!.bottomSection;
    if (!bs?.kind) return null;
    const label = bs.kind === "husk-dip" ? "HUSK DIP" : bs.kind === "ekstra" ? "EKSTRA" : "DIPS";
    const dips6 = (bs.items || []).filter(d => d.price >= 5);
    const dips4 = (bs.items || []).filter(d => d.price > 0 && d.price < 5);
    return (
      <div style={{ flexShrink: 0 }}>
        <div style={{ background: ORANGE, padding: "20px 28px", textAlign: "center" }}>
          <div style={{ fontWeight: 700, fontSize: 60, color: "white", fontFamily: "Oswald,sans-serif" }}>{label}</div>
          <div style={{ fontSize: 20, color: "rgba(255,255,255,0.8)", textTransform: "uppercase", letterSpacing: 3 }}>Gør din menu mere fristende</div>
        </div>
        {(bs.items || []).length > 0 && (
          <div style={{ background: "#111", padding: "16px 10px 20px", display: "flex", justifyContent: "center", alignItems: "flex-start", gap: 0, flexWrap: "wrap" }}>
            {dips6.length > 0 && (
              <>
                <div style={{ color: ORANGE, fontSize: 44, fontWeight: 700, fontFamily: "Oswald,sans-serif", alignSelf: "center", marginRight: 6, lineHeight: 1 }}>
                  {dips6[0].price}<span style={{ fontSize: 26, verticalAlign: "super" }}>KR</span>
                </div>
                {dips6.map((d, i) => (
                  <div key={`a${i}`} style={{ textAlign: "center", width: 88 }}>
                    {d.image && <img src={d.image} alt="" style={{ width: 80, height: 80, objectFit: "contain", margin: "0 auto", borderRadius: "50%" }} />}
                    <div style={{ fontSize: 14, color: "white", lineHeight: 1.1, marginTop: 2 }}>{d.name}</div>
                  </div>
                ))}
              </>
            )}
            {dips4.length > 0 && (
              <>
                <div style={{ color: ORANGE, fontSize: 44, fontWeight: 700, fontFamily: "Oswald,sans-serif", alignSelf: "center", marginLeft: 10, marginRight: 6, lineHeight: 1 }}>
                  {dips4[0].price}<span style={{ fontSize: 26, verticalAlign: "super" }}>KR</span>
                </div>
                {dips4.map((d, i) => (
                  <div key={`b${i}`} style={{ textAlign: "center", width: 88 }}>
                    {d.image && <img src={d.image} alt="" style={{ width: 80, height: 80, objectFit: "contain", margin: "0 auto", borderRadius: "50%" }} />}
                    <div style={{ fontSize: 14, color: "white", lineHeight: 1.1, marginTop: 2 }}>{d.name}</div>
                  </div>
                ))}
              </>
            )}
          </div>
        )}
      </div>
    );
  }

  // =================== BOARD at 1080x1920 ===================
  function renderBoard() {
    const items = screen!.items || [];
    const extras = screen!.extraItems || [];
    const ly = screen!.layout;
    return (
      <div ref={boardRef} data-board style={{ width: BW, height: BH, background: "white", position: "relative", display: "flex", flexDirection: "column", fontFamily: "'Open Sans',sans-serif", overflow: "hidden" }}>
        {/* Header */}
        <div style={{ display: "flex", alignItems: "flex-start", padding: "32px 32px 20px", position: "relative" }}>
          <Stripes h={ly === "grid-2col" || ly === "coffee" ? 80 : 150} />
          <h1 style={{ fontWeight: 700, fontSize: 60, color: "black", fontFamily: "Oswald,sans-serif", whiteSpace: "pre-line", lineHeight: 1.0, flex: 1 }}>{sf(screen!.title)}</h1>
          <StorBadge />
        </div>
        {screen!.subtitle && <div style={{ fontSize: 20, color: "black", padding: "0 32px 12px", fontStyle: "italic" }}>{screen!.subtitle}</div>}

        {/* Items */}
        <div style={{ flex: 1 }}>
          {(ly === "meal-rows" || ly === "kids" || ly === "family") && items.map(it => <MealRow key={it._id} item={it} />)}
          {ly === "grid-2col" && <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr" }}>{items.map(it => <GridItem key={it._id} item={it} sz={280} />)}</div>}
          {ly === "coffee" && <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr" }}>{items.map(it => <GridItem key={it._id} item={it} sz={220} />)}</div>}
          {ly === "drinks" && <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", gap: 4, padding: "0 16px" }}>{items.map(it => <GridItem key={it._id} item={it} sz={180} />)}</div>}
          {ly === "tacos" && (
            <div>
              <div style={{ textAlign: "center", padding: 24 }}>
                <span style={{ background: ORANGE, color: "white", fontSize: 26, fontWeight: 700, padding: "8px 24px", borderRadius: 8, fontFamily: "Oswald,sans-serif" }}>STEP 1 OF 3</span>
                <p style={{ fontSize: 20, color: "black", marginTop: 12 }}>Alle tacos indeholder: Pålæg, fromage smørrelse, pomfritter</p>
              </div>
              <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", gap: 16, padding: "0 32px" }}>
                {items.map(it => (
                  <div key={it._id} style={{ textAlign: "center", position: "relative", cursor: "pointer", padding: 16 }} onClick={() => toggleSoldOut(it._id, it.soldOut)}>
                    {(it.cleanImage || it.image) && <img src={imgUrl(it)} alt="" style={{ width: 260, height: 260, objectFit: "contain", margin: "0 auto", display: "block" }} />}
                    <div style={{ fontWeight: 700, fontSize: 36, color: "black", fontFamily: "Oswald,sans-serif", marginTop: 12 }}>{sf(it.displayName)}</div>
                    <div style={{ fontSize: 20, color: "black", marginTop: 6, lineHeight: 1.2 }}>{sf(it.description).split("\n")[0]}</div>
                    {it.soldOut ? <UdsolgtPrice /> : <Price item={it} />}
                  </div>
                ))}
              </div>
            </div>
          )}
          {ly === "price-list" && <div style={{ padding: 32 }}><p style={{ textAlign: "center", color: "black", padding: 40, fontSize: 22 }}>Full price list — all categories</p></div>}

          {extras.length > 0 && (
            <div style={{ borderTop: "6px solid #ddd", marginTop: 20 }}>
              <div style={{ display: "flex", alignItems: "center", padding: "24px 32px 12px" }}>
                <Stripes h={80} />
                <h2 style={{ fontWeight: 700, fontSize: 44, color: "black", fontFamily: "Oswald,sans-serif" }}>VEGI&apos;S &amp; SALAD</h2>
              </div>
              <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr", padding: "0 16px" }}>{extras.map(it => <GridItem key={it._id} item={it} sz={220} />)}</div>
            </div>
          )}
        </div>

        {screen!.note && <div style={{ background: ORANGE, fontSize: 20, textAlign: "center", color: "white", padding: "10px 20px", flexShrink: 0 }}>{screen!.note}</div>}
        <Bottom />
      </div>
    );
  }

  return (
    <div>
      {/* Toolbar */}
      <div className="flex items-center justify-between mb-4">
        <div className="flex items-center gap-3">
          <button onClick={() => router.push("/admin/menu")} className="text-gray-400 hover:text-white transition text-sm">← Back</button>
          <h2 className="text-lg font-bold whitespace-pre-line leading-tight">{screen.title}</h2>
        </div>
        <div className="flex items-center gap-3">
          <span className="text-xs text-gray-500 hidden sm:inline">Click item = UDSOLGT · Click price = Edit</span>
          <div className="flex items-center gap-1">
            <button onClick={() => setViewScale(v => Math.max(0.2, v - 0.05))} className="bg-gray-800 text-white w-7 h-7 rounded text-sm">−</button>
            <span className="text-xs text-gray-400 w-10 text-center">{Math.round(viewScale * 100)}%</span>
            <button onClick={() => setViewScale(v => Math.min(1, v + 0.05))} className="bg-gray-800 text-white w-7 h-7 rounded text-sm">+</button>
          </div>
          <button onClick={async () => {
            setExporting(true);
            try {
              const res = await fetch("/api/admin/menu/export", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ screenId }),
              });
              if (!res.ok) {
                const err = await res.json().catch(() => ({}));
                throw new Error(err.error || `Export failed (${res.status})`);
              }
              const blob = await res.blob();
              const url = URL.createObjectURL(blob);
              const a = document.createElement("a"); a.download = `${screenId}.png`; a.href = url; a.click();
              URL.revokeObjectURL(url);
            } catch (e: any) { alert("Export failed: " + (e?.message || e)); } finally { setExporting(false); }
          }} disabled={exporting} className="bg-orange-500 hover:bg-orange-600 disabled:opacity-50 text-white font-bold px-4 py-2 rounded-lg text-sm">
            {exporting ? "Exporting..." : "Export PNG (2160×3840)"}
          </button>
        </div>
      </div>

      {/* Board preview — CSS scaled, but actual DOM is 1080x1920 */}
      <div className="flex justify-center overflow-auto pb-8">
        <div style={{ width: BW * viewScale, height: BH * viewScale, position: "relative" }}>
          <div style={{ transform: `scale(${viewScale})`, transformOrigin: "top left", position: "absolute", top: 0, left: 0, border: "2px solid #333", borderRadius: 8, overflow: "hidden", boxShadow: "0 8px 40px rgba(0,0,0,0.5)" }}>
            {renderBoard()}
          </div>
        </div>
      </div>
    </div>
  );
}
