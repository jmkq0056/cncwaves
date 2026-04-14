(function () {
  'use strict';

  // --- Service Worker Registration ---
  if ('serviceWorker' in navigator) {
    window.addEventListener('load', function () {
      navigator.serviceWorker
        .register('/backoffice/sw.js', { scope: '/backoffice/' })
        .then(function (reg) {
          console.log('SW registered, scope:', reg.scope);
        })
        .catch(function (err) {
          console.warn('SW registration failed:', err);
        });
    });
  }

  // --- PWA Install Prompt ---
  var deferredPrompt = null;
  var banner = null;

  function createBanner() {
    var el = document.createElement('div');
    el.id = 'pwa-install-banner';
    el.style.cssText =
      'position:fixed;bottom:0;left:0;right:0;background:#3d0d0f;color:#fff;' +
      'padding:14px 16px;display:flex;align-items:center;justify-content:space-between;' +
      'z-index:99999;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;' +
      'box-shadow:0 -2px 10px rgba(0,0,0,0.2);';

    var left = document.createElement('div');
    left.innerHTML =
      '<strong style="font-size:14px;">Install Chicken Waves</strong>' +
      '<br><span style="font-size:12px;opacity:0.8;">Add to home screen for quick access</span>';

    var right = document.createElement('div');
    right.style.cssText = 'display:flex;gap:8px;flex-shrink:0;margin-left:12px;';

    var laterBtn = document.createElement('button');
    laterBtn.textContent = 'Later';
    laterBtn.style.cssText =
      'background:none;border:none;color:rgba(255,255,255,0.6);' +
      'font-size:13px;cursor:pointer;padding:8px 12px;';
    laterBtn.onclick = dismissBanner;

    var installBtn = document.createElement('button');
    installBtn.textContent = 'Install';
    installBtn.style.cssText =
      'background:#fff;color:#3d0d0f;border:none;border-radius:6px;' +
      'font-size:13px;font-weight:600;cursor:pointer;padding:8px 16px;';
    installBtn.onclick = doInstall;

    right.appendChild(laterBtn);
    right.appendChild(installBtn);
    el.appendChild(left);
    el.appendChild(right);
    return el;
  }

  function showBanner() {
    if (banner) return;
    banner = createBanner();
    document.body.appendChild(banner);
  }

  function dismissBanner() {
    if (banner && banner.parentNode) {
      banner.parentNode.removeChild(banner);
    }
    banner = null;
  }

  function doInstall() {
    if (!deferredPrompt) return;
    deferredPrompt.prompt();
    deferredPrompt.userChoice.then(function () {
      deferredPrompt = null;
      dismissBanner();
    });
  }

  window.addEventListener('beforeinstallprompt', function (e) {
    e.preventDefault();
    deferredPrompt = e;
    showBanner();
  });

  window.addEventListener('appinstalled', function () {
    deferredPrompt = null;
    dismissBanner();
  });

  // --- Floating back button (always visible) ---
  function mountBackButton() {
    if (document.getElementById('pwa-back-button')) return;

    var btn = document.createElement('button');
    btn.id = 'pwa-back-button';
    btn.setAttribute('aria-label', 'Go back');
    btn.innerHTML =
      '<svg width="28" height="28" viewBox="0 0 24 24" fill="none" ' +
      'stroke="currentColor" stroke-width="3" stroke-linecap="round" ' +
      'stroke-linejoin="round" style="flex-shrink:0;">' +
      '<path d="M15 18l-6-6 6-6"/></svg>' +
      '<span style="letter-spacing:0.5px;">Back</span>';
    btn.style.cssText =
      'position:fixed;top:0;left:0;width:240px;height:76px;' +
      'background:#ea7a1f;color:#fff;border:none;' +
      'display:flex;align-items:center;justify-content:center;gap:10px;' +
      'cursor:pointer;z-index:99999;padding:0;outline:none;' +
      'font-size:20px;font-weight:800;text-transform:uppercase;' +
      'font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,' +
      '"Helvetica Neue",Arial,sans-serif;' +
      '-webkit-tap-highlight-color:transparent;' +
      'box-shadow:2px 2px 12px rgba(0,0,0,0.35);' +
      'transition:background 0.15s ease, transform 0.12s ease;';

    if (window.matchMedia('(max-width: 640px)').matches) {
      btn.style.width = '140px';
      btn.style.height = '56px';
      btn.style.fontSize = '16px';
    }

    btn.onmousedown = function () { btn.style.transform = 'scale(0.92)'; };
    btn.onmouseup = function () { btn.style.transform = 'scale(1)'; };
    btn.onmouseleave = function () { btn.style.transform = 'scale(1)'; };
    btn.ontouchstart = function () { btn.style.transform = 'scale(0.92)'; };
    btn.ontouchend = function () { btn.style.transform = 'scale(1)'; };

    btn.onclick = function () {
      if (window.history.length > 1) {
        window.history.back();
      } else {
        window.location.href = '/backoffice/merchant/dashboard';
      }
    };

    document.body.appendChild(btn);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mountBackButton);
  } else {
    mountBackButton();
  }
})();
