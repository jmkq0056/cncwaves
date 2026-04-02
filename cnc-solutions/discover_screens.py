#!/usr/bin/env python3
"""
Discover all CNC screens on the local network (port 5555).
Stores found IPs in MongoDB screen documents — does NOT open anything.
Safe to run while the menu/signage app is active.
"""

from __future__ import annotations

import socket
import subprocess
import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
from typing import Optional

# ── Config ──────────────────────────────────────────────────────────────
SUBNET = "192.168.0"
PORT = 5555
TIMEOUT = 0.4  # seconds per port check
MONGO_URI = "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority"
DB_NAME = "CNCtest"
COLLECTION = "screens"

# ── Network scan ────────────────────────────────────────────────────────

def check_port(ip: str, port: int) -> str | None:
    """Return ip if port is open, else None."""
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.settimeout(TIMEOUT)
            if s.connect_ex((ip, port)) == 0:
                return ip
    except OSError:
        pass
    return None


def scan_network() -> list[str]:
    """Scan subnet for devices with port 5555 open."""
    print(f"\n[1/3] Scanning {SUBNET}.0/24 on port {PORT}...")
    found = []
    with ThreadPoolExecutor(max_workers=50) as pool:
        futures = {
            pool.submit(check_port, f"{SUBNET}.{i}", PORT): i
            for i in range(1, 255)
        }
        for f in as_completed(futures):
            ip = f.result()
            if ip:
                found.append(ip)
    # Sort by last octet for consistent ordering
    found.sort(key=lambda ip: int(ip.split(".")[-1]))
    print(f"  Found {len(found)} device(s)")
    return found


# ── ADB connect (without opening anything) ─────────────────────────────

def adb_connect(ip: str) -> bool:
    """Connect adb to device — does NOT launch any activity."""
    try:
        result = subprocess.run(
            ["adb", "connect", f"{ip}:{PORT}"],
            capture_output=True, text=True, timeout=5,
        )
        return "connected" in result.stdout.lower()
    except Exception:
        return False


def adb_get_model(ip: str) -> str:
    """Get device model name via adb."""
    try:
        result = subprocess.run(
            ["adb", "-s", f"{ip}:{PORT}", "shell", "getprop", "ro.product.model"],
            capture_output=True, text=True, timeout=5,
        )
        return result.stdout.strip() or "unknown"
    except Exception:
        return "unknown"


# ── MongoDB update ──────────────────────────────────────────────────────

def store_in_db(devices: list[dict]):
    """Update screen documents with discovered IPs."""
    from pymongo import MongoClient

    print(f"\n[3/3] Storing in MongoDB ({DB_NAME}.{COLLECTION})...")
    client = MongoClient(MONGO_URI)
    db = client[DB_NAME]
    col = db[COLLECTION]
    now = datetime.now(timezone.utc)

    # Clear old deviceIp values first so stale IPs don't linger
    col.update_many({}, {"$set": {"deviceIp": "", "lastSeenAt": None}})

    for i, dev in enumerate(devices):
        screen_id = i + 1  # screens are _id: 1..20
        col.update_one(
            {"_id": screen_id},
            {"$set": {
                "deviceIp": dev["ip"],
                "lastSeenAt": now,
            }},
        )
        print(f"  Screen {screen_id:>2} -> {dev['ip']} ({dev['model']})")

    client.close()
    print(f"\n  Updated {len(devices)} screen(s) in DB")


# ── Main ────────────────────────────────────────────────────────────────

def main():
    ips = scan_network()
    if not ips:
        print("\n  No screens found on the network.")
        sys.exit(0)

    print(f"\n[2/3] Connecting via ADB (not opening anything)...")
    devices = []
    for ip in ips:
        ok = adb_connect(ip)
        model = adb_get_model(ip) if ok else "unreachable"
        status = "OK" if ok else "FAILED"
        print(f"  {ip}:{PORT}  {status}  ({model})")
        if ok:
            devices.append({"ip": ip, "model": model})

    if not devices:
        print("\n  No devices connected successfully.")
        sys.exit(0)

    store_in_db(devices)

    print("\n============================================")
    print(f"  Done — {len(devices)} screen(s) saved to DB")
    print("============================================\n")


if __name__ == "__main__":
    main()
