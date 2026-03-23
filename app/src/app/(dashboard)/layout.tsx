"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { useEffect, useState } from "react";

const navItems = [
  { href: "/delivery", label: "New Delivery", icon: "📦" },
  { href: "/deliveries", label: "Deliveries", icon: "📋" },
  { href: "/products", label: "Products", icon: "🏷️" },
  { href: "/settings", label: "Settings", icon: "⚙️" },
];

export default function DashboardLayout({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const router = useRouter();
  const [collapsed, setCollapsed] = useState(false);

  useEffect(() => {
    fetch("/api/auth/me").then((r) => {
      if (!r.ok) router.push("/login");
    });
  }, [router]);

  async function handleLogout() {
    await fetch("/api/auth/logout", { method: "POST" });
    router.push("/login");
  }

  return (
    <div className="flex h-screen overflow-hidden">
      {/* Sidebar */}
      <aside
        className={`bg-gray-900 text-white flex flex-col transition-all duration-200 ${
          collapsed ? "w-16" : "w-56"
        }`}
      >
        <div className="flex items-center justify-between p-4 border-b border-gray-700">
          {!collapsed && <span className="font-bold text-lg">CNC Stock</span>}
          <button
            onClick={() => setCollapsed(!collapsed)}
            className="text-gray-400 hover:text-white text-sm"
          >
            {collapsed ? "▶" : "◀"}
          </button>
        </div>

        <nav className="flex-1 py-4">
          {navItems.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className={`flex items-center gap-3 px-4 py-3 text-sm transition-colors ${
                pathname === item.href
                  ? "bg-blue-600 text-white"
                  : "text-gray-300 hover:bg-gray-800 hover:text-white"
              }`}
            >
              <span className="text-lg">{item.icon}</span>
              {!collapsed && <span>{item.label}</span>}
            </Link>
          ))}
        </nav>

        <div className="p-4 border-t border-gray-700">
          <button
            onClick={handleLogout}
            className="flex items-center gap-3 text-gray-400 hover:text-red-400 text-sm w-full"
          >
            <span className="text-lg">🚪</span>
            {!collapsed && <span>Log out</span>}
          </button>
        </div>
      </aside>

      {/* Main content */}
      <main className="flex-1 overflow-auto bg-gray-100">{children}</main>
    </div>
  );
}
