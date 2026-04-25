// Fake Android client — subscribes, does ping/pong clock sync, logs burst events.
const WebSocket = require("ws");

const URL = process.env.URL || "ws://127.0.0.1:3099/ws";
const SCREEN_ID = parseInt(process.env.SCREEN_ID || "1", 10);

const ws = new WebSocket(URL);
let offset = 0;
let bestRtt = Infinity;

function pingRound() {
  const t1 = Date.now();
  ws.send(JSON.stringify({ type: "ping", t1 }));
}

ws.on("open", () => {
  console.log(`[${SCREEN_ID}] open`);
  ws.send(JSON.stringify({ type: "hello", screen_id: SCREEN_ID }));
  // Burst of pings for clock sync
  for (let i = 0; i < 5; i++) setTimeout(pingRound, i * 200);
  // Periodic ping every 30s
  setInterval(pingRound, 30_000);
});

ws.on("message", (raw) => {
  const msg = JSON.parse(raw.toString());
  if (msg.type === "hello_ack") {
    console.log(`[${SCREEN_ID}] hello_ack, server_time=${msg.server_time}, burst=`, msg.config?.burst);
  } else if (msg.type === "pong") {
    const t4 = Date.now();
    const rtt = t4 - msg.t1 - (msg.t3 - msg.t2);
    const o = (msg.t2 - msg.t1 + (msg.t3 - t4)) / 2;
    if (rtt < bestRtt) {
      bestRtt = rtt;
      offset = o;
      console.log(`[${SCREEN_ID}] clock sync: rtt=${rtt}ms offset=${o.toFixed(1)}ms`);
    }
  } else if (msg.type === "burst") {
    const localNow = Date.now();
    const correctedNow = localNow + offset;
    const fireIn = msg.fire_at - correctedNow;
    console.log(
      `[${SCREEN_ID}] BURST fire_at=${msg.fire_at} (in ${fireIn.toFixed(0)}ms) dur=${msg.duration_ms}ms url=${msg.image_url}`
    );
  } else if (msg.type === "config") {
    console.log(`[${SCREEN_ID}] config`, msg.burst);
  }
});

ws.on("close", () => console.log(`[${SCREEN_ID}] close`));
ws.on("error", (e) => console.log(`[${SCREEN_ID}] error`, e.message));
