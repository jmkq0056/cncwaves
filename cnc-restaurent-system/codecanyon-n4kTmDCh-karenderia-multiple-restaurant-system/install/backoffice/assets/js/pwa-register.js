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

  // --- Floating Back/Forward nav bar ---
  var FWD_FLAG = 'pwa-can-forward';

  try {
    var navEntry = performance.getEntriesByType &&
                   performance.getEntriesByType('navigation')[0];
    if (navEntry && navEntry.type === 'navigate') {
      sessionStorage.removeItem(FWD_FLAG);
    }
  } catch (e) {}

  function makeNavButton(dir, isMobile) {
    var btn = document.createElement('button');
    btn.id = 'pwa-' + dir + '-button';
    btn.setAttribute('aria-label', dir === 'back' ? 'Go back' : 'Go forward');

    var iconSize = isMobile ? 22 : 26;
    var path = dir === 'back'
      ? '<path d="M15 18l-6-6 6-6"/>'
      : '<path d="M9 18l6-6-6-6"/>';
    var label = dir === 'back' ? 'Back' : 'Fwd';
    var icon =
      '<svg width="' + iconSize + '" height="' + iconSize + '" ' +
      'viewBox="0 0 24 24" fill="none" stroke="currentColor" ' +
      'stroke-width="3" stroke-linecap="round" stroke-linejoin="round" ' +
      'style="flex-shrink:0;">' + path + '</svg>';
    var text = '<span style="letter-spacing:0.5px;">' + label + '</span>';

    btn.innerHTML = dir === 'back' ? icon + text : text + icon;
    btn.style.cssText =
      'flex:1;height:100%;background:#ea7a1f;color:#fff;border:none;' +
      'display:flex;align-items:center;justify-content:center;gap:8px;' +
      'cursor:pointer;padding:0;outline:none;' +
      'font-size:' + (isMobile ? 14 : 18) + 'px;' +
      'font-weight:800;text-transform:uppercase;' +
      'font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,' +
      '"Helvetica Neue",Arial,sans-serif;' +
      '-webkit-tap-highlight-color:transparent;' +
      'transition:background 0.15s ease, opacity 0.15s ease, transform 0.12s ease;';
    return btn;
  }

  function setEnabled(btn, enabled) {
    btn.disabled = !enabled;
    btn.style.opacity = enabled ? '1' : '0.4';
    btn.style.cursor = enabled ? 'pointer' : 'not-allowed';
    btn.style.background = enabled ? '#ea7a1f' : '#c97935';
  }

  function mountBackButton() {
    if (document.getElementById('pwa-nav-container')) return;

    var isMobile = window.matchMedia('(max-width: 640px)').matches;
    var w = isMobile ? 180 : 240;
    var h = isMobile ? 56 : 76;

    var container = document.createElement('div');
    container.id = 'pwa-nav-container';
    container.style.cssText =
      'position:fixed;top:0;left:0;width:' + w + 'px;height:' + h + 'px;' +
      'display:flex;z-index:99999;' +
      'box-shadow:2px 2px 12px rgba(0,0,0,0.35);';

    var backBtn = makeNavButton('back', isMobile);
    backBtn.style.borderRight = '1px solid rgba(0,0,0,0.18)';
    var fwdBtn = makeNavButton('forward', isMobile);

    var canBack = window.history.length > 1;
    var canForward = sessionStorage.getItem(FWD_FLAG) === '1';
    setEnabled(backBtn, canBack);
    setEnabled(fwdBtn, canForward);

    backBtn.onclick = function () {
      if (backBtn.disabled) return;
      sessionStorage.setItem(FWD_FLAG, '1');
      window.history.back();
    };

    fwdBtn.onclick = function () {
      if (fwdBtn.disabled) return;
      window.history.forward();
    };

    [backBtn, fwdBtn].forEach(function (b) {
      b.onmousedown = function () { if (!b.disabled) b.style.transform = 'scale(0.96)'; };
      b.onmouseup = function () { b.style.transform = 'scale(1)'; };
      b.onmouseleave = function () { b.style.transform = 'scale(1)'; };
      b.ontouchstart = function () { if (!b.disabled) b.style.transform = 'scale(0.96)'; };
      b.ontouchend = function () { b.style.transform = 'scale(1)'; };
    });

    container.appendChild(backBtn);
    container.appendChild(fwdBtn);
    document.body.appendChild(container);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mountBackButton);
  } else {
    mountBackButton();
  }
})();
