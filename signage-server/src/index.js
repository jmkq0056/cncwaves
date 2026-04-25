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

// Burst scheduler: ticks every 500ms, looks at every burst-enabled screen,
// and if its next due time is <= FIRE_AHEAD_MS away AND hasn't been announced
// yet, announce it with the exact UTC fire_at so clients can align.
//
// Due time formula: next multiple of (burstInterval * 60000) after epoch,
// matching the existing Android logic (`minute % interval == 0`) so the
// transition from polling to WS doesn't shift the wall-clock burst schedule.
const announcedFireAt = new Map(); // screenId -> lastFireAt

function nextDueFor(screen, nowMs) {
  const intervalMs = Math.max(1, screen.burstInterval || 3) * 60_000;
  return Math.ceil(nowMs / intervalMs) * intervalMs;
}

function scheduleTick() {
  const t = now();
  for (const screen of screenCache.values()) {
    if (!screen.burstEnabled) continue;
    if (!screen.burstImageUrl) continue;
    if (!screen.published) continue;
    const due = nextDueFor(screen, t);
    const timeUntil = due - t;
    if (timeUntil > FIRE_AHEAD_MS) continue;
    if (announcedFireAt.get(screen._id) === due) continue;
    announcedFireAt.set(screen._id, due);
    // Wave: screen N fires (N-1) * offset after the shared base instant.
    // Clients still receive the event well ahead of their per-screen fire_at
    // because we announce within FIRE_AHEAD_MS of the base, which gives the
    // last screen ~FIRE_AHEAD_MS + (N-1)*offset of lead time.
    const waveOffset = (Math.max(1, screen._id) - 1) * BURST_WAVE_OFFSET_MS;
    const fireAt = due + waveOffset;
    const sent = broadcastToScreen(screen._id, {
      type: "burst",
      fire_at: fireAt,
      duration_ms: (screen.burstDuration || 10) * 1000,
      image_url: screen.burstImageUrl,
    });
    log(`burst screen=${screen._id} fire_at=${fireAt} (+${waveOffset}ms wave) in ${timeUntil + waveOffset}ms -> ${sent} clients`);
  }
}

async function watchChanges() {
  // MongoDB change stream — push config updates to clients live
  const stream = screensCol.watch([], { fullDocument: "updateLookup" });
  stream.on("change", (change) => {
    const doc = change.fullDocument;
    if (!doc) return;
    const prev = screenCache.get(doc._id);
    screenCache.set(doc._id, doc);
    // If burst config changed, push fresh config (clients re-prefetch image)
    const burstChanged =
      !prev ||
      prev.burstEnabled !== doc.burstEnabled ||
      prev.burstImageUrl !== doc.burstImageUrl ||
      prev.burstInterval !== doc.burstInterval ||
      prev.burstDuration !== doc.burstDuration;
    if (burstChanged) {
      broadcastToScreen(doc._id, {
        type: "config",
        burst: {
          enabled: !!doc.burstEnabled,
          image_url: doc.burstImageUrl || "",
          interval_min: doc.burstInterval || 3,
          duration_s: doc.burstDuration || 10,
        },
      });
      // Reset announcement so next tick re-fires if needed
      announcedFireAt.delete(doc._id);
      log(`config change screen=${doc._id}`);
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
        config: screen
          ? {
              burst: {
                enabled: !!screen.burstEnabled,
                image_url: screen.burstImageUrl || "",
                interval_min: screen.burstInterval || 3,
                duration_s: screen.burstDuration || 10,
              },
            }
          : null,
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
