import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "CNC Manager",
  description: "CNC Manager - Operations & Stock Management",
  icons: {
    icon: "/favicon.ico",
    apple: "/apple-touch-icon.png",
  },
  manifest: "/manifest.json",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body className="bg-gray-100 min-h-screen">{children}</body>
    </html>
  );
}
