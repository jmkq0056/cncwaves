// IMPORTANT: bump CACHE_NAME on EVERY production deploy.
// Format: cnc-manager-vYYYYMMDDHHMM (date+time at deploy moment).
// The app reads this version via postMessage and can surface an
// "Update available" prompt when a mismatch is detected.
const CACHE_NAME = 'cnc-manager-v20260615-2315';

// App shell to pre-cache for first-meaningful-paint offline fallback
const APP_SHELL = [
  '/',
  '/login',
  '/delivery',
  '/deliveries',
  '/products',
  '/stock',
  '/price',
  '/stats',
  '/vacations',
  '/submissions',
  '/settings',
];

// Install: cache app shell + skip waiting so the new SW takes over immediately
self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => {
      return cache.addAll(APP_SHELL).catch(() => {});
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
// Useful for a future "force refresh" recovery button if a device gets stuck.
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

  if (event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

// Fetch strategy:
//  - API + auth          → bypass SW entirely (always network)
//  - HTML navigations    → network-first, offline fallback to cached shell
//  - /_next/static/*     → cache-first (content-hashed, immutable)
//  - Other static assets → NETWORK-first with cache fallback
//    (was cache-first — that's what caused the stale-PWA bug on
//    the Karenderia side. Network-first lands JS/CSS updates inside
//    one page load, not "whenever the browser eventually evicts".)
self.addEventListener('fetch', (event) => {
  const { request } = event;
  const url = new URL(request.url);

  if (request.method !== 'GET') return;

  // Always-network for any dynamic endpoint
  if (url.pathname.startsWith('/api/')) return;

  // Navigation: network-first, offline fallback
  if (request.mode === 'navigate') {
    event.respondWith(
      fetch(request)
        .then((response) => {
          const clone = response.clone();
          caches.open(CACHE_NAME).then((cache) => cache.put(request, clone));
          return response;
        })
        .catch(() =>
          caches.match(request).then((r) => r || caches.match('/delivery') || caches.match('/login'))
        )
    );
    return;
  }

  // Next.js content-hashed assets: cache-first is safe (immutable URLs)
  if (url.pathname.startsWith('/_next/static/')) {
    event.respondWith(
      caches.match(request).then((cached) => {
        if (cached) return cached;
        return fetch(request).then((response) => {
          if (response.ok) {
            const clone = response.clone();
            caches.open(CACHE_NAME).then((cache) => cache.put(request, clone));
          }
          return response;
        });
      })
    );
    return;
  }

  // Everything else static: network-first with cache fallback (offline support)
  if (
    url.pathname.startsWith('/_next/') ||
    url.pathname.startsWith('/assets/') ||
    url.pathname.match(/\.(js|css|png|jpg|jpeg|gif|svg|ico|webp|woff2?|ttf|eot)$/)
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
