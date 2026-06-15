import type { Metadata } from "next";

// Separate PWA scope for the staff app — its own manifest / install target.
export const metadata: Metadata = {
  title: "CNC Kasse — Personale",
  description: "Daglig kasseopgørelse for personale",
  manifest: "/staff-manifest.json",
  appleWebApp: {
    capable: true,
    statusBarStyle: "black-translucent",
    title: "CNC Personale",
  },
};

export default function StaffLayout({ children }: { children: React.ReactNode }) {
  return <div className="h-screen overflow-hidden bg-white">{children}</div>;
}
