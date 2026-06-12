/*
 * CNC Order Bell + PWA Stale-Cache Recovery
 * ─────────────────────────────────────────
 * Behavior:
 *  1. Polls /backoffice/apibackend/getLastTenOrder every 15s.
 *  2. When a new order_id is seen → SOUND LOOPS + ACKNOWLEDGE MODAL appears.
 *     Both stay until user clicks "Acknowledge". This is the only modal.
 *  3. If sound playback was rejected (browser audio blocked), the modal
 *     adds a small "⚠️ Sound was blocked — clicking will unlock it" hint.
 *  4. If polling returns 0 orders for 60s, shows a "Force update PWA" toast
 *     (this is the recovery path for the stale-cache empty-orders-list bug).
 *  5. NO timer-based reminders. NO modal on page load. Quiet until needed.
 *
 * Audio rules:
 *  - <audio> element created on FIRST user gesture (any click/tap/key).
 *    This dodges the AudioContext-blocked-before-gesture problem.
 *  - Loops via element.loop = true; stops via .pause() + currentTime = 0.
 *
 * Console API for debugging:
 *  window.__cncBell.test()         → play sound once
 *  window.__cncBell.ring()         → start the loop+modal as if order came in
 *  window.__cncBell.stop()         → stop ringing manually
 *  window.__cncBell.state()        → current internal state
 *  window.__cncBell.forceUpdate()  → wipe PWA caches + reload
 */
(function () {
  'use strict';

  // ─── Config ─────────────────────────────────────────────────────────────
  var POLL_INTERVAL_MS  = 15 * 1000;
  var STUCK_THRESHOLD_MS = 60 * 1000;
  var SOUND_URL_MP3 = '/backoffice/assets/sound/notify.mp3';
  var SOUND_URL_OGG = '/backoffice/assets/sound/notify.ogg';
  var API_URL = '/backoffice/apibackend/getLastTenOrder';

  // ─── Bail-out conditions ────────────────────────────────────────────────
  var path = window.location.pathname;
  if (/\/auth\/(login|logout|forgot)/.test(path)) return;
  if (/\/offline\.html$/.test(path)) return;

  // ─── State ──────────────────────────────────────────────────────────────
  var lastSeenOrderId = null;
  var lastNonEmptyAt = Date.now();
  var stuckBannerShown = false;
  var ringingNow = false;
  var pendingCount = 0;             // how many orders waiting to be ack'd
  var sound = null;
  var soundEnabled = false;          // audio has been primed by a user gesture
  var soundBlocked = false;          // last play() was rejected
  var authFailed = false;
  var pendingRing = false;           // a ring was requested while audio was blocked

  // ─── Style sheet ────────────────────────────────────────────────────────
  var css = document.createElement('style');
  css.textContent = (
    '#cnc-toast-container{position:fixed;top:14px;right:14px;z-index:99999;display:flex;flex-direction:column;gap:8px;pointer-events:none;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif}' +
    '.cnc-toast{background:#1a1a1a;color:#fff;padding:14px 18px;border-radius:10px;box-shadow:0 4px 18px rgba(0,0,0,.3);pointer-events:auto;animation:cnc-slide .25s ease;min-width:240px;max-width:360px;font-size:14px}' +
    '.cnc-toast.cnc-stuck{border-left:4px solid #f17d00;cursor:pointer}' +
    '@keyframes cnc-slide{from{transform:translateX(40px);opacity:0}to{transform:translateX(0);opacity:1}}' +

    '#cnc-bell-modal{position:fixed;inset:0;display:none;align-items:center;justify-content:center;background:rgba(0,0,0,.55);z-index:99998;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;backdrop-filter:blur(3px)}' +
    '#cnc-bell-modal.cnc-show{display:flex}' +
    '#cnc-bell-modal .cnc-card{background:#fff;border-radius:18px;padding:30px 30px 26px;max-width:420px;width:90%;text-align:center;box-shadow:0 12px 40px rgba(0,0,0,.4);position:relative;border-top:6px solid #f17d00}' +
    '#cnc-bell-modal .cnc-icon{font-size:64px;line-height:1;margin-bottom:10px;display:inline-block;animation:cnc-shake 1s ease-in-out infinite}' +
    '@keyframes cnc-shake{0%,100%{transform:rotate(0)}25%{transform:rotate(15deg)}75%{transform:rotate(-15deg)}}' +
    '#cnc-bell-modal h2{margin:0 0 6px;font-size:24px;color:#111;font-weight:700;letter-spacing:-.01em}' +
    '#cnc-bell-modal .cnc-count{font-size:42px;font-weight:800;color:#f17d00;margin:6px 0 14px;font-variant-numeric:tabular-nums;line-height:1}' +
    '#cnc-bell-modal .cnc-sub{color:#666;font-size:14px;margin:0 0 22px}' +
    '#cnc-bell-modal button.cnc-ack{display:block;width:100%;background:#f17d00;color:#fff;border:0;padding:16px 22px;border-radius:12px;font-size:17px;font-weight:700;cursor:pointer;letter-spacing:.01em;box-shadow:0 4px 14px rgba(241,125,0,.35)}' +
    '#cnc-bell-modal button.cnc-ack:hover,#cnc-bell-modal button.cnc-ack:focus{background:#d96b00;outline:none}' +
    '#cnc-bell-modal button.cnc-ack:active{transform:translateY(1px)}' +
    '#cnc-bell-modal .cnc-blocked{margin-top:14px;padding:10px 12px;background:#fff7e8;border:1px solid #f4cf8a;border-radius:8px;font-size:12.5px;color:#7a5400;display:none}' +
    '#cnc-bell-modal .cnc-blocked.cnc-on{display:block}' +
    '#cnc-bell-modal .cnc-footer{margin-top:14px;padding-top:12px;border-top:1px solid #eee;font-size:11px;color:#999}' +
    '#cnc-bell-modal .cnc-footer a{color:#f17d00;text-decoration:underline}' +

    '#cnc-pwa-update-btn{position:fixed;top:10px;right:10px;z-index:99997;background:#f17d00;color:#fff;border:0;padding:8px 14px;border-radius:20px;font-size:12.5px;font-weight:600;cursor:pointer;box-shadow:0 2px 8px rgba(0,0,0,.2);font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;letter-spacing:.02em;display:flex;align-items:center;gap:6px;line-height:1}' +
    '#cnc-pwa-update-btn:hover,#cnc-pwa-update-btn:focus{background:#d96b00;outline:none}' +
    '#cnc-pwa-update-btn:active{transform:translateY(1px)}' +
    '@media(max-width:480px){#cnc-pwa-update-btn{top:8px;right:8px;padding:7px 11px;font-size:11.5px}}' +

    '#cnc-permission-banner{position:fixed;top:0;left:0;right:0;z-index:99996;background:linear-gradient(180deg,#fff8e6 0%,#fff2cc 100%);border-bottom:2px solid #f17d00;padding:14px 20px;display:flex;align-items:center;justify-content:center;gap:14px;flex-wrap:wrap;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;font-size:14px;color:#5a3e00;box-shadow:0 2px 12px rgba(0,0,0,.08);animation:cnc-banner-down .35s ease}' +
    '@keyframes cnc-banner-down{from{transform:translateY(-100%)}to{transform:translateY(0)}}' +
    '#cnc-permission-banner .cnc-msg{font-weight:600;display:flex;align-items:center;gap:8px}' +
    '#cnc-permission-banner .cnc-icon{font-size:22px;line-height:1}' +
    '#cnc-permission-banner button.cnc-enable{background:#f17d00;color:#fff;border:0;padding:9px 22px;border-radius:8px;font-size:14px;font-weight:700;cursor:pointer;letter-spacing:.02em;box-shadow:0 2px 6px rgba(241,125,0,.3)}' +
    '#cnc-permission-banner button.cnc-enable:hover,#cnc-permission-banner button.cnc-enable:focus{background:#d96b00;outline:none}' +

    '#cnc-sound-status{position:fixed;top:10px;right:118px;z-index:99997;background:#fff;border:1.5px solid #ddd;color:#555;padding:7px 12px;border-radius:20px;font-size:12px;font-weight:600;cursor:pointer;box-shadow:0 2px 8px rgba(0,0,0,.15);font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif;display:flex;align-items:center;gap:6px;line-height:1;user-select:none}' +
    '#cnc-sound-status.cnc-on{background:#e7f6ec;border-color:#5cb47b;color:#1e6b3a}' +
    '#cnc-sound-status.cnc-off{background:#fdecea;border-color:#e07b78;color:#8a1f1a;animation:cnc-status-pulse 2s ease-in-out infinite}' +
    '@keyframes cnc-status-pulse{0%,100%{box-shadow:0 2px 8px rgba(224,123,120,.5)}50%{box-shadow:0 2px 14px rgba(224,123,120,.85)}}' +
    '#cnc-sound-status:hover,#cnc-sound-status:focus{transform:translateY(-1px);outline:none}' +
    '@media(max-width:480px){#cnc-sound-status{right:96px;top:8px;padding:6px 10px;font-size:11px}}'
  );
  document.head.appendChild(css);

  // ─── Toast helper ───────────────────────────────────────────────────────
  function ensureToastContainer() {
    var c = document.getElementById('cnc-toast-container');
    if (c) return c;
    c = document.createElement('div');
    c.id = 'cnc-toast-container';
    document.body.appendChild(c);
    return c;
  }
  function toast(html, cls, durationMs, onClick) {
    var c = ensureToastContainer();
    var el = document.createElement('div');
    el.className = 'cnc-toast ' + (cls || '');
    el.innerHTML = html;
    if (onClick) { el.style.cursor = 'pointer'; el.addEventListener('click', onClick); }
    c.appendChild(el);
    if (durationMs > 0) {
      setTimeout(function () { el.style.opacity = '0'; el.style.transition = 'opacity .3s'; setTimeout(function(){el.remove();}, 300); }, durationMs);
    }
    return el;
  }

  // ─── Sound (created in user-gesture only) ───────────────────────────────
  function initSound() {
    if (sound) return;
    var a = new Audio();
    a.src = SOUND_URL_MP3;
    a.preload = 'auto';
    a.volume = 1.0;
    a.addEventListener('error', function () {
      if (a.src.indexOf('.ogg') < 0) {
        console.warn('[CNC bell] mp3 failed → trying ogg');
        a.src = SOUND_URL_OGG;
      }
    });
    sound = a;
  }

  function startRinging() {
    if (ringingNow) return;
    ringingNow = true;
    initSound();
    if (!sound) return;
    sound.loop = true;
    sound.currentTime = 0;
    var p = sound.play();
    if (p && p.then) {
      p.then(function () {
        soundBlocked = false;
        pendingRing = false;
        var blockedHint = document.querySelector('#cnc-bell-modal .cnc-blocked');
        if (blockedHint) blockedHint.classList.remove('cnc-on');
        if (typeof updateSoundStatusUI === 'function') updateSoundStatusUI();
      }, function (err) {
        // play() rejected — usually NotAllowedError before any user gesture.
        // Mark a deferred ring: the very next user gesture will retry it.
        soundBlocked = true;
        pendingRing = true;
        console.warn('[CNC bell] ringing was blocked, will retry on next user gesture', err && err.message);
        var blockedHint = document.querySelector('#cnc-bell-modal .cnc-blocked');
        if (blockedHint) blockedHint.classList.add('cnc-on');
        // If we thought audio was primed but it isn't, reset + re-prompt once.
        if (isPrimedPersisted()) {
          clearPrimedPersisted();
          soundEnabled = false;
          showPermissionBanner();
        }
        if (typeof updateSoundStatusUI === 'function') updateSoundStatusUI();
      });
    }
  }

  function stopRinging() {
    ringingNow = false;
    if (!sound) return;
    try {
      sound.pause();
      sound.currentTime = 0;
      sound.loop = false;
    } catch (e) {}
  }

  // Persistence: once audio is verifiably primed, set this flag. On future
  // page loads we can skip the permission banner. If a later ring is blocked
  // despite this flag (browser cleared storage, new device), clear the flag
  // and show the banner once more.
  var LS_PRIMED_KEY = 'cnc-bell-audio-primed';
  function isPrimedPersisted() {
    try { return localStorage.getItem(LS_PRIMED_KEY) === '1'; } catch (e) { return false; }
  }
  function markPrimedPersisted() {
    try { localStorage.setItem(LS_PRIMED_KEY, '1'); } catch (e) {}
  }
  function clearPrimedPersisted() {
    try { localStorage.removeItem(LS_PRIMED_KEY); } catch (e) {}
  }

  // EVERY user gesture: (a) if not yet primed, prime audio; (b) if a ring was
  // requested while audio was blocked, start ringing now. This means once the
  // merchant has tapped ANYWHERE in the session, the bell rings instantly on
  // future orders — no second tap needed.
  function primeAudio(callback) {
    initSound();
    if (!sound) { if (callback) callback(false); return; }
    try {
      sound.volume = 0;
      var p = sound.play();
      var restore = function (ok) {
        try { sound.pause(); sound.currentTime = 0; sound.volume = 1.0; } catch(e){}
        if (callback) callback(ok);
      };
      if (p && p.then) {
        p.then(function(){ restore(true); }, function(){ restore(false); });
      } else {
        setTimeout(function(){ restore(true); }, 300);
      }
    } catch (e) {
      if (callback) callback(false);
    }
  }
  function onUserGesture() {
    if (!soundEnabled) {
      soundEnabled = true;
      primeAudio(function (ok) {
        if (ok) {
          markPrimedPersisted();
          console.log('[CNC bell] audio unlocked + persisted');
          hidePermissionBanner();
          if (typeof updateSoundStatusUI === 'function') updateSoundStatusUI();
        } else {
          soundEnabled = false;
          if (typeof updateSoundStatusUI === 'function') updateSoundStatusUI();
        }
      });
    }
    if (pendingRing) {
      pendingRing = false;
      ringingNow = false;
      startRinging();
    }
  }
  ['click', 'touchstart', 'keydown', 'pointerdown'].forEach(function (evt) {
    window.addEventListener(evt, onUserGesture, { capture: true });
  });

  // ─── First-load permission banner ───────────────────────────────────────
  // Shown when audio has never been primed on this device, OR when we
  // detected a blocked ring despite the persisted flag.
  function buildPermissionBanner() {
    if (document.getElementById('cnc-permission-banner')) return;
    var b = document.createElement('div');
    b.id = 'cnc-permission-banner';
    // No dismiss button on purpose — banner stays until audio is actually enabled.
    b.innerHTML =
      '<div class="cnc-msg"><span class="cnc-icon">🔔</span>' +
      '<span>Sound is OFF. Tap to enable order alerts.</span></div>' +
      '<button type="button" class="cnc-enable">Enable sound</button>';
    document.body.appendChild(b);
    b.querySelector('.cnc-enable').addEventListener('click', function (ev) {
      ev.stopPropagation();
      soundEnabled = true;
      primeAudio(function (ok) {
        if (ok) {
          markPrimedPersisted();
          hidePermissionBanner();
          updateSoundStatusUI();
          toast('🔔 Sound enabled — you\'ll hear the bell on new orders', '', 3500);
        } else {
          soundEnabled = false;
          var msg = b.querySelector('.cnc-msg span:last-child');
          if (msg) msg.textContent = 'Your browser still blocked it — tap "Enable sound" once more';
        }
      });
    });
  }
  function showPermissionBanner() {
    if (document.body) buildPermissionBanner();
    else document.addEventListener('DOMContentLoaded', buildPermissionBanner);
  }
  function hidePermissionBanner() {
    var b = document.getElementById('cnc-permission-banner');
    if (b) b.remove();
  }
  // Decide whether to show on first load
  if (!isPrimedPersisted()) {
    showPermissionBanner();
  }

  // ─── Acknowledge modal ──────────────────────────────────────────────────
  function buildModal() {
    if (document.getElementById('cnc-bell-modal')) return;
    var wrap = document.createElement('div');
    wrap.id = 'cnc-bell-modal';
    wrap.innerHTML =
      '<div class="cnc-card">' +
        '<div class="cnc-icon">🔔</div>' +
        '<h2>New order</h2>' +
        '<div class="cnc-count">+1</div>' +
        '<p class="cnc-sub">The bell is ringing. Tap below to silence it and go to your orders.</p>' +
        '<button class="cnc-ack" data-action="ack">✓ Acknowledge</button>' +
        '<div class="cnc-blocked">⚠️ Sound is blocked by your browser. Click anywhere first to unlock audio, then the bell will ring next time. The visual alert (this box) still works either way.</div>' +
        '<div class="cnc-footer">Orders list not updating? <a href="#" data-action="force-update">Force update PWA</a></div>' +
      '</div>';
    document.body.appendChild(wrap);
    wrap.addEventListener('click', function (ev) {
      var t = ev.target;
      var a = t.dataset && t.dataset.action;
      if (a === 'ack') acknowledge();
      else if (a === 'force-update') { ev.preventDefault(); forceUpdatePWA(); }
    });
    // Click outside the card also acknowledges (any user gesture qualifies)
    wrap.addEventListener('click', function (ev) {
      if (ev.target.id === 'cnc-bell-modal') acknowledge();
    });
  }
  function showModal(count) {
    buildModal();
    var m = document.getElementById('cnc-bell-modal');
    m.querySelector('.cnc-count').textContent = '+' + count;
    m.querySelector('h2').textContent = count === 1 ? 'New order' : count + ' new orders';
    m.classList.add('cnc-show');
  }
  function hideModal() {
    var m = document.getElementById('cnc-bell-modal');
    if (m) m.classList.remove('cnc-show');
    var hint = document.querySelector('#cnc-bell-modal .cnc-blocked');
    if (hint) hint.classList.remove('cnc-on');
  }
  function acknowledge() {
    stopRinging();
    hideModal();
    pendingCount = 0;
  }

  // ─── Always-visible "Update PWA" button + Sound status pill ─────────────
  function ensureUpdateButton() {
    if (document.getElementById('cnc-pwa-update-btn')) return;
    var btn = document.createElement('button');
    btn.id = 'cnc-pwa-update-btn';
    btn.type = 'button';
    btn.title = 'Reload PWA and clear cache — use if orders list looks stuck';
    btn.innerHTML = '<span style="font-size:14px">↻</span><span>Update</span>';
    btn.addEventListener('click', function (ev) {
      ev.preventDefault();
      if (confirm('Force-refresh the PWA?\n\nThis clears the cached app and reloads. Use this if the orders list looks stuck.')) {
        forceUpdatePWA();
      }
    });
    document.body.appendChild(btn);
  }
  function ensureSoundStatusPill() {
    if (document.getElementById('cnc-sound-status')) return;
    var p = document.createElement('div');
    p.id = 'cnc-sound-status';
    p.setAttribute('role', 'button');
    p.setAttribute('tabindex', '0');
    p.title = 'Tap to enable / test sound';
    document.body.appendChild(p);
    var handle = function (ev) {
      ev.preventDefault();
      // Click on this pill is a strong user gesture — prime + verify, regardless.
      soundEnabled = true;
      primeAudio(function (ok) {
        if (ok) {
          markPrimedPersisted();
          hidePermissionBanner();
          updateSoundStatusUI();
          toast('🔔 Sound enabled', '', 2200);
        } else {
          soundEnabled = false;
          clearPrimedPersisted();
          updateSoundStatusUI();
          showPermissionBanner();
        }
      });
    };
    p.addEventListener('click', handle);
    p.addEventListener('keydown', function (ev) { if (ev.key === 'Enter' || ev.key === ' ') handle(ev); });
    updateSoundStatusUI();
  }
  function updateSoundStatusUI() {
    var p = document.getElementById('cnc-sound-status');
    if (!p) return;
    var on = isPrimedPersisted() && soundEnabled && !soundBlocked;
    if (on) {
      p.className = 'cnc-on';
      p.innerHTML = '<span style="font-size:13px">🔔</span><span>Sound ON</span>';
      p.title = 'Sound is enabled — bell will ring on new orders';
    } else {
      p.className = 'cnc-off';
      p.innerHTML = '<span style="font-size:13px">🔕</span><span>Sound OFF</span>';
      p.title = 'Sound is disabled — tap to enable';
    }
  }
  function mountTopUI() {
    ensureUpdateButton();
    ensureSoundStatusPill();
  }
  if (document.body) mountTopUI();
  else document.addEventListener('DOMContentLoaded', mountTopUI);

  // ─── PWA force update ───────────────────────────────────────────────────
  function forceUpdatePWA() {
    toast('🔄 Clearing PWA cache + reloading…', 'cnc-stuck', 4000);
    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.getRegistrations().then(function (regs) {
        regs.forEach(function (reg) {
          if (reg.active) reg.active.postMessage({ type: 'CNC_CLEAR_CACHES' });
        });
        navigator.serviceWorker.addEventListener('message', function (ev) {
          if (ev.data && ev.data.type === 'CNC_RELOAD_NOW') window.location.reload();
        });
        setTimeout(function () { window.location.reload(); }, 2000);
      });
    } else {
      window.location.reload();
    }
  }

  // ─── Stuck-list banner ──────────────────────────────────────────────────
  function showStuckBanner() {
    if (stuckBannerShown) return;
    stuckBannerShown = true;
    toast(
      '<strong>⚠️ Orders list looks stuck</strong><br>' +
      '<span style="font-size:12px;opacity:.8">Tap to force-refresh the PWA</span>',
      'cnc-stuck', 0, forceUpdatePWA
    );
  }

  // ─── Polling ────────────────────────────────────────────────────────────
  function getCsrfToken() {
    var m = document.querySelector('meta[name="YII_CSRF_TOKEN"]');
    return m ? m.getAttribute('content') : '';
  }
  function pollOrders() {
    var body = new URLSearchParams();
    body.set('filter_by', 'all');
    body.set('limit', '10');
    var csrf = getCsrfToken();
    if (csrf) body.set('YII_CSRF_TOKEN', csrf);

    fetch(API_URL, {
      method: 'POST',
      credentials: 'same-origin',
      headers: {
        'X-Requested-With': 'XMLHttpRequest',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: body.toString(),
      cache: 'no-store',
    })
    .then(function (r) {
      if (r.status === 401 || r.status === 403) { authFailed = true; throw new Error('auth'); }
      return r.json();
    })
    .then(function (j) {
      authFailed = false;
      if (!j || j.code !== 1) return;
      // j.details IS the orders array when there are orders; an object {image_url} when empty
      var orders = [];
      if (Array.isArray(j.details)) orders = j.details;
      else if (j.details && Array.isArray(j.details.data)) orders = j.details.data;
      else if (j.details && Array.isArray(j.details.orders)) orders = j.details.orders;

      if (orders.length > 0) {
        lastNonEmptyAt = Date.now();
        if (stuckBannerShown) {
          var t = document.querySelector('.cnc-toast.cnc-stuck');
          if (t) t.remove();
          stuckBannerShown = false;
        }
        var maxId = 0, newCount = 0;
        orders.forEach(function (o) {
          // Karenderia controller overwrites order_id with "Order #N" string,
          // so parseInt(o.order_id) returns NaN. Extract the number from it.
          var raw = o.order_id == null ? '' : String(o.order_id);
          var m = raw.match(/(\d+)/);
          var id = m ? parseInt(m[1], 10) : parseInt(o.id || 0, 10);
          if (id > maxId) maxId = id;
          if (lastSeenOrderId !== null && id > lastSeenOrderId) newCount++;
        });
        if (lastSeenOrderId === null) {
          lastSeenOrderId = maxId;  // baseline; don't ring on first poll
        } else if (maxId > lastSeenOrderId) {
          pendingCount += newCount;
          showModal(pendingCount);
          startRinging();
          lastSeenOrderId = maxId;
        }
      } else {
        if (Date.now() - lastNonEmptyAt > STUCK_THRESHOLD_MS) showStuckBanner();
      }
    })
    .catch(function (err) {
      if (authFailed) return;
      console.warn('[CNC bell] poll failed', err);
    });
  }

  setTimeout(pollOrders, 2000);
  setInterval(pollOrders, POLL_INTERVAL_MS);

  // ─── Debug API ─────────────────────────────────────────────────────────
  window.__cncBell = {
    test: function () { initSound(); if (sound) { sound.loop = false; sound.currentTime = 0; sound.play(); } },
    ring: function (n) { pendingCount += (n || 1); showModal(pendingCount); startRinging(); },
    stop: acknowledge,
    forceUpdate: forceUpdatePWA,
    state: function () {
      return {
        lastSeenOrderId: lastSeenOrderId,
        lastNonEmptyAt: new Date(lastNonEmptyAt).toISOString(),
        ringingNow: ringingNow,
        pendingCount: pendingCount,
        soundEnabled: soundEnabled,
        soundBlocked: soundBlocked,
        authFailed: authFailed,
        stuckBannerShown: stuckBannerShown,
      };
    },
  };

  console.log('[CNC bell] initialised — ring-until-ack mode, poll every ' + POLL_INTERVAL_MS + 'ms');
})();
