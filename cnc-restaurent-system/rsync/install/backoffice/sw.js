// IMPORTANT: bump CACHE_NAME on EVERY production deploy.
// Format: cnc-merchant-vYYYYMMDDHHMM (date+time at deploy moment).
// cnc-order-bell.js reads this version via postMessage and surfaces the
// "Force update" button when a mismatch is detected vs page-load version.
const CACHE_NAME = 'cnc-merchant-v20260604-2000';

const APP_SHELL = [
  '/backoffice/auth/login',
  '/backoffice/offline.html',
];

// Install: cache app shell + skip waiting so the new SW takes over immediately
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      return cache.addAll(APP_SHELL).catch((err) => {
        console.warn('SW: failed to cache app shell', err);
      });
    })
  );
  self.skipWaiting();
});

// Activate: clean ANY cache that isn't the current CACHE_NAME, then claim clients
self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((keys) => {
      return Promise.all(
        keys.filter((key) => key !== CACHE_NAME).map((key) => caches.delete(key))
      );
    }).then(() => self.clients.claim())
  );
});

// MESSAGE channel — page can request a full cache wipe + SW unregister.
// Triggered by the "Force update" button in cnc-order-bell.js when a user
// reports a stale/broken PWA.
self.addEventListener('message', (event) => {
  if (!event.data || !event.data.type) return;

  if (event.data.type === 'CNC_CLEAR_CACHES') {
    event.waitUntil(
      caches.keys()
        .then((keys) => Promise.all(keys.map((k) => caches.delete(k))))
        .then(() => self.registration.unregister())
        .then(() => self.clients.matchAll())
        .then((cs) => cs.forEach((c) => c.postMessage({ type: 'CNC_RELOAD_NOW' })))
    );
  }

  if (event.data.type === 'CNC_GET_VERSION') {
    if (event.ports && event.ports[0]) {
      event.ports[0].postMessage({ version: CACHE_NAME });
    }
  }
});

// Fetch strategy:
//   - API / AJAX        → bypass SW entirely (always network)
//   - HTML navigations  → network-first, offline fallback
//   - Static assets     → NETWORK-first with cache fallback
//     (was cache-first — which is what caused the stale-PWA bug. With
//     network-first, JS updates land within one page load, not
//     "whenever the user happens to clear their browser cache".)
self.addEventListener('fetch', (event) => {
  const { request } = event;
  const url = new URL(request.url);

  if (request.method !== 'GET') return;

  // Always-network for any dynamic endpoint
  if (url.pathname.startsWith('/backoffice/api') ||
      url.pathname.startsWith('/backoffice/apibackend') ||
      url.pathname.startsWith('/backoffice/backendmerchant')) return;

  // Navigation: network-first, offline fallback
  if (request.mode === 'navigate') {
    event.respondWith(
      fetch(request)
        .then((response) => {
          const clone = response.clone();
          caches.open(CACHE_NAME).then((cache) => cache.put(request, clone));
          return response;
        })
        .catch(() => {
          return caches.match(request)
            .then((cached) => cached || caches.match('/backoffice/offline.html'));
        })
    );
    return;
  }

  // Static assets: network-first with cache fallback (offline support)
  if (
    url.pathname.startsWith('/backoffice/assets/') ||
    url.pathname.startsWith('/backoffice/themes/') ||
    url.pathname.match(/\.(js|css|png|jpg|jpeg|gif|svg|ico|woff2?|ttf|eot)$/)
  ) {
    event.respondWith(
      fetch(request)
        .then((response) => {
          if (response.ok) {
            const clone = response.clone();
            caches.open(CACHE_NAME).then((cache) => cache.put(request, clone));
          }
          return response;
        })
        .catch(() => caches.match(request))
    );
    return;
  }
});
