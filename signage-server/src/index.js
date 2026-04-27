const http = require("http");
const { WebSocketServer } = require("ws");
const { MongoClient } = require("mongodb");

const PORT = parseInt(process.env.PORT || "3001", 10);
const MONGO_URI = process.env.MONGO_URI;
const DB_NAME = process.env.MONGO_DB || "CNCtest";
// Fire-ahead window: server schedules a burst this far in the future so
// every client has time to receive the event and arm its local timer
// before the wall-clock fire instant. 2s > any realistic internet RTT.
const FIRE_AHEAD_MS = 2000;
// Wave effect: each screen fires (screen_id - 1) * this_ms after the base
// fire instant, so the burst visibly ripples 1 -> 2 -> ... -> 9 across the
// video wall. Set 0 to fire all screens simultaneously.
const BURST_WAVE_OFFSET_MS = parseInt(process.env.BURST_WAVE_OFFSET_MS || "150", 10);

if (!MONGO_URI) {
  console.error("MONGO_URI env var required");
  process.exit(1);
}

const mongo = new MongoClient(MONGO_URI);
let screensCol;

// screenId -> { name, burstEnabled, burstImageUrl, burstInterval, burstDuration, ... }
const screenCache = new Map();
// screenId -> Set<WebSocket>
const screenSubscribers = new Map();

function now() {
  return Date.now();
}

function log(...args) {
  console.log(new Date().toISOString(), ...args);
}

async function loadScreens() {
  const docs = await screensCol.find({}).toArray();
  screenCache.clear();
  for (const doc of docs) {
    screenCache.set(doc._id, doc);
  }
  log(`Loaded ${docs.length} screens`);
}

function broadcastToScreen(screenId, payload) {
  const subs = screenSubscribers.get(screenId);
  if (!subs) return 0;
  const msg = JSON.stringify(payload);
  let sent = 0;
  for (const ws of subs) {
    if (ws.readyState === ws.OPEN) {
      ws.send(msg);
      sent++;
    }
  }
  return sent;
}

function broadcastToAll(payload) {
  const msg = JSON.stringify(payload);
  let sent = 0;
  for (const subs of screenSubscribers.values()) {
    for (const ws of subs) {
      if (ws.readyState === ws.OPEN) {
        ws.send(msg);
        sent++;
      }
    }
  }
  return sent;
}

// Burst scheduler: ticks every 500ms, looks at every burst-enabled (screen,
// burst) pair, and if its next due time is <= FIRE_AHEAD_MS away AND hasn't
// been announced yet, announces it with the exact UTC fire_at.
//
// Due time formula: next multiple of (intervalMin * 60000) after epoch.
// Matches the legacy `minute % interval == 0` behavior so wall-clock alignment
// of bursts is preserved across the WS migration.
//
// Announcement key is `${screenId}:${burstId}:${due}` so two bursts on the
// same screen don't suppress each other.
const announcedFireAt = new Map(); // key -> due

function effectiveBursts(screen) {
  // Prefer the new bursts[] array. Each entry must have id + imageUrl + be
  // enabled. If empty (legacy doc), synthesize a single burst from the old
  // burstEnabled / burstImageUrl / burstInterval / burstDuration fields so
  // un-migrated screens keep firing exactly as before.
  const fromArray = (screen.bursts || [])
    .filter((b) => b && b.enabled && b.imageUrl)
    .sort((a, b) => (a.id || 0) - (b.id || 0));
  if (fromArray.length > 0) {
    return fromArray.map((b) => ({
      id: b.id,
      imageUrl: b.imageUrl,
      durationS: b.durationS || 10,
      animation: b.animation === "center-out" ? "center-out" : "wave",
    }));
  }
  if (screen.burstEnabled && screen.burstImageUrl) {
    return [
      {
        id: 1,
        imageUrl: screen.burstImageUrl,
        durationS: screen.burstDuration || 10,
        animation: "wave",
      },
    ];
  }
  return [];
}

// Session interval: how often *some* burst fires on this screen. The active
// burst at each tick is bursts[slot % bursts.length], so all enabled bursts
// rotate through in id-order. Backfills from the legacy `burstInterval` for
// screens that haven't been re-saved through the multi-burst admin yet.
function sessionIntervalMin(screen) {
  const v = Number(screen.burstSessionIntervalMin);
  if (Number.isFinite(v) && v >= 1) return v;
  const legacy = Number(screen.burstInterval);
  if (Number.isFinite(legacy) && legacy >= 1) return legacy;
  return 2;
}

// Map a screen id (1..9) to its animation step index for a given mode.
// Step index times BURST_WAVE_OFFSET_MS = the screen's offset from the base
// fire instant. The 1..9 layout assumes the physical wall is left-to-right
// 1, 2, 3, ..., 9.
//
//   wave:        screen 1=0, 2=1, 3=2, ..., 9=8           (linear ripple L->R)
//   center-out:  screen 5=0, 4&6=1, 3&7=2, 2&8=3, 1&9=4   (radial outward)
function animationStep(animation, screenId) {
  if (animation === "center-out") {
    return Math.abs((screenId || 1) - 5);
  }
  return Math.max(1, screenId || 1) - 1;
}

function scheduleTick() {
  const t = now();
  for (const screen of screenCache.values()) {
    if (!screen.published) continue;
    const bursts = effectiveBursts(screen);
    if (bursts.length === 0) continue;

    // Session model: ONE burst per slot, round-robin across bursts[] in
    // id-order. Slot index is global (epoch-aligned) so all 9 screens agree
    // on which burst is "current" without needing any coordination.
    const intervalMs = sessionIntervalMin(screen) * 60_000;
    const due = Math.ceil(t / intervalMs) * intervalMs;
    const timeUntil = due - t;
    if (timeUntil > FIRE_AHEAD_MS) continue;

    const slot = Math.floor(due / intervalMs);
    const burst = bursts[slot % bursts.length];

    const key = `${screen._id}:${due}`;
    if (announcedFireAt.has(key)) continue;
    announcedFireAt.set(key, due);

    const step = animationStep(burst.animation, screen._id);
    const waveOffset = step * BURST_WAVE_OFFSET_MS;
    const fireAt = due + waveOffset;
    // image_url + duration_ms kept top-level for v1.3-APK backward compat
    // (it ignores burst_id and treats each event as a single burst).
    const sent = broadcastToScreen(screen._id, {
      type: "burst",
      burst_id: burst.id,
      fire_at: fireAt,
      duration_ms: burst.durationS * 1000,
      image_url: burst.imageUrl,
    });
    log(
      `burst screen=${screen._id} burst=${burst.id} (slot ${slot % bursts.length}/${bursts.length}) fire_at=${fireAt} (+${waveOffset}ms ${burst.animation}) in ${timeUntil + waveOffset}ms -> ${sent} clients`
    );
  }

  // Garbage-collect old announcement keys so the map doesn't grow forever.
  // Keep at most one cycle of slack (10 minutes) past the announcement.
  const cutoff = t - 10 * 60_000;
  for (const [k, due] of announcedFireAt) {
    if (due < cutoff) announcedFireAt.delete(k);
  }
}

function burstConfigPayload(screen) {
  // Sent on hello_ack and on every config change. Includes both the new
  // bursts[] array (for v1.4+) and the legacy burst{} object (for v1.3) so
  // the same broadcast satisfies both client versions.
  const session = sessionIntervalMin(screen);
  const bursts = effectiveBursts(screen).map((b) => ({
    id: b.id,
    enabled: true,
    image_url: b.imageUrl,
    duration_s: b.durationS,
    animation: b.animation,
  }));
  const legacyFirst = bursts[0] || {
    enabled: false,
    image_url: "",
    duration_s: 10,
  };
  return {
    bursts,
    session_interval_min: session,
    burst: {
      enabled: !!legacyFirst.enabled,
      image_url: legacyFirst.image_url || "",
      interval_min: session,
      duration_s: legacyFirst.duration_s || 10,
    },
  };
}

function burstSignature(screen) {
  // Fast equality check for "did the burst configuration on this screen
  // change?" Compares both new array, the session interval, and legacy fields.
  const bursts = (screen.bursts || []).map((b) => [
    b.id, b.enabled, b.imageUrl, b.durationS, b.animation,
  ]);
  return JSON.stringify({
    bursts,
    session: screen.burstSessionIntervalMin,
    legacy: [
      screen.burstEnabled,
      screen.burstImageUrl,
      screen.burstInterval,
      screen.burstDuration,
    ],
  });
}

async function watchChanges() {
  // MongoDB change stream — push config updates to clients live
  const stream = screensCol.watch([], { fullDocument: "updateLookup" });
  stream.on("change", (change) => {
    const doc = change.fullDocument;
    if (!doc) return;
    const prev = screenCache.get(doc._id);
    screenCache.set(doc._id, doc);
    if (!prev || burstSignature(prev) !== burstSignature(doc)) {
      const cfg = burstConfigPayload(doc);
      broadcastToScreen(doc._id, { type: "config", ...cfg });
      // Drop stale announcements so next tick re-announces with new config
      for (const k of announcedFireAt.keys()) {
        if (k.startsWith(`${doc._id}:`)) announcedFireAt.delete(k);
      }
      log(`config change screen=${doc._id} (bursts=${cfg.bursts.length})`);
    }
  });
  stream.on("error", (err) => {
    log("change stream error:", err.message);
    // Restart after a delay
    setTimeout(watchChanges, 5000);
  });
}

function handleMessage(ws, raw) {
  let msg;
  try {
    msg = JSON.parse(raw.toString());
  } catch {
    return;
  }
  if (msg.type === "hello") {
    const screenId = parseInt(msg.screen_id, 10);
    if (isNaN(screenId) || screenId < 1 || screenId > 20) {
      ws.send(JSON.stringify({ type: "error", error: "invalid screen_id" }));
      return;
    }
    ws.screenId = screenId;
    if (!screenSubscribers.has(screenId)) {
      screenSubscribers.set(screenId, new Set());
    }
    screenSubscribers.get(screenId).add(ws);
    const screen = screenCache.get(screenId);
    ws.send(
      JSON.stringify({
        type: "hello_ack",
        server_time: now(),
        config: screen ? burstConfigPayload(screen) : null,
      })
    );
    log(`subscribe screen=${screenId} total=${screenSubscribers.get(screenId).size}`);
  } else if (msg.type === "ping") {
    // NTP-style time sync. Client sends { type:"ping", t1 }. We reply with
    // our receive and send timestamps; client computes offset from four points.
    const t2 = now();
    ws.send(
      JSON.stringify({
        type: "pong",
        t1: msg.t1,
        t2,
        t3: now(),
      })
    );
  }
}

function heartbeat(wss) {
  // Kick dead connections. Every 30s mark as stale; if still stale 30s later, close.
  setInterval(() => {
    for (const ws of wss.clients) {
      if (ws.isAlive === false) {
        try {
          ws.terminate();
        } catch {}
        continue;
      }
      ws.isAlive = false;
      try {
        ws.ping();
      } catch {}
    }
  }, 30_000);
}

async function main() {
  await mongo.connect();
  const db = mongo.db(DB_NAME);
  screensCol = db.collection("screens");
  await loadScreens();
  watchChanges();

  const server = http.createServer((req, res) => {
    if (req.url === "/health") {
      res.writeHead(200, { "Content-Type": "application/json" });
      const subsByScreen = {};
      for (const [id, s] of screenSubscribers) subsByScreen[id] = s.size;
      res.end(
        JSON.stringify({
          ok: true,
          server_time: now(),
          screens: screenCache.size,
          subscribers: subsByScreen,
        })
      );
      return;
    }
    res.writeHead(404);
    res.end();
  });

  const wss = new WebSocketServer({ server, path: "/ws" });
  wss.on("connection", (ws, req) => {
    ws.isAlive = true;
    ws.on("pong", () => (ws.isAlive = true));
    ws.on("message", (raw) => handleMessage(ws, raw));
    ws.on("close", () => {
      if (ws.screenId && screenSubscribers.has(ws.screenId)) {
        screenSubscribers.get(ws.screenId).delete(ws);
      }
    });
    ws.on("error", () => {});
    log(`connect from ${req.socket.remoteAddress}`);
  });
  heartbeat(wss);

  setInterval(scheduleTick, 500);

  server.listen(PORT, "0.0.0.0", () => {
    log(`signage-server listening on :${PORT}`);
  });
}

main().catch((e) => {
  console.error("fatal:", e);
  process.exit(1);
});

process.on("SIGTERM", () => {
  log("SIGTERM, closing");
  mongo.close().finally(() => process.exit(0));
});
