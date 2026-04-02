import "./globals.css";

export const metadata = { title: "Chicken N Chicken - Order Here" };

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="da">
      <body className="bg-white text-gray-900 h-screen w-screen overflow-hidden">{children}</body>
    </html>
  );
}
