import type { Metadata, Viewport } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "CNC Manager",
  description: "CNC Manager - Operations & Stock Management",
  icons: {
    icon: "/favicon.ico",
    apple: "/apple-touch-icon.png",
  },
  manifest: "/manifest.json",
  appleWebApp: {
    capable: true,
    statusBarStyle: "black-translucent",
    title: "CNC Manager",
  },
  formatDetection: {
    telephone: false,
  },
};

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  maximumScale: 1,
  userScalable: false,
  viewportFit: "cover",
  themeColor: "#1e293b",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <meta name="mobile-web-app-capable" content="yes" />
        <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
      </head>
      <body className="bg-gray-100 min-h-screen">
        {children}
        <script
          dangerouslySetInnerHTML={{
            __html: `
              if ('serviceWorker' in navigator) {
                window.addEventListener('load', () => {
                  navigator.serviceWorker.register('/sw.js').then((reg) => {
                    // When a new SW finishes installing in the background,
                    // tell it to skip waiting so the user picks up the new
                    // version on their next navigation without manual reload.
                    if (reg.waiting) reg.waiting.postMessage({ type: 'SKIP_WAITING' });
                    reg.addEventListener('updatefound', () => {
                      const sw = reg.installing;
                      if (!sw) return;
                      sw.addEventListener('statechange', () => {
                        if (sw.state === 'installed' && navigator.serviceWorker.controller) {
                          sw.postMessage({ type: 'SKIP_WAITING' });
                        }
                      });
                    });
                  }).catch(() => {});

                  // The SW pings clients with CNC_RELOAD_NOW after a forced
                  // cache wipe; honour it.
                  navigator.serviceWorker.addEventListener('message', (ev) => {
                    if (ev.data && ev.data.type === 'CNC_RELOAD_NOW') {
                      window.location.reload();
                    }
                  });

                  // Reload once the new SW takes control, so the page is
                  // running on the latest assets without a second F5.
                  let refreshing = false;
                  navigator.serviceWorker.addEventListener('controllerchange', () => {
                    if (refreshing) return;
                    refreshing = true;
                    window.location.reload();
                  });
                });
              }
            `,
          }}
        />
      </body>
    </html>
  );
}
