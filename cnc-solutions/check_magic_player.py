#!/usr/bin/env python3
"""
Check which CNC screens have the Magic Player (cn.huidu.lcd.player) installed.
Uses already-connected ADB devices — run discover_screens.py first if needed.
"""

from __future__ import annotations

import subprocess
import sys

PACKAGE = "cn.huidu.lcd.player"
PORT = 5555


def get_connected_devices() -> list[str]:
    """Get list of connected ADB devices on port 5555."""
    result = subprocess.run(["adb", "devices"], capture_output=True, text=True)
    devices = []
    for line in result.stdout.splitlines():
        if f":{PORT}" in line and "device" in line:
            devices.append(line.split()[0])
    devices.sort(key=lambda d: int(d.split(".")[3].split(":")[0]))
    return devices


def has_package(device: str, package: str) -> bool:
    """Check if a package is installed on a device."""
    try:
        result = subprocess.run(
            ["adb", "-s", device, "shell", "pm", "list", "packages", package],
            capture_output=True, text=True, timeout=10,
        )
        return f"package:{package}" in result.stdout
    except Exception:
        return False


def main():
    # Load screen-to-IP mapping from discover_screens (ordered by screen ID)
    from pymongo import MongoClient
    MONGO_URI = "mongodb+srv://jawa0056:4yuc4PVaUKPh9cHx@cluster0.54zxry3.mongodb.net/CNCtest?retryWrites=true&w=majority"
    client = MongoClient(MONGO_URI)
    db = client["CNCtest"]
    screens = {s["deviceIp"]: s["_id"] for s in db["screens"].find({"deviceIp": {"$ne": ""}}) }
    client.close()

    devices = get_connected_devices()
    if not devices:
        print("No ADB devices connected. Run discover_screens.py first.")
        sys.exit(1)

    print(f"\nChecking {len(devices)} screen(s) for Magic Player ({PACKAGE})")
    print("=" * 55)

    has_it = []
    missing = []

    for device in devices:
        ip = device.replace(f":{PORT}", "")
        screen_id = screens.get(ip, "?")
        installed = has_package(device, PACKAGE)

        status = "INSTALLED" if installed else "NOT FOUND"
        color = "\033[92m" if installed else "\033[91m"
        reset = "\033[0m"

        print(f"  Screen {screen_id:>2}  {ip:<16} {color}{status}{reset}")

        if installed:
            has_it.append(screen_id)
        else:
            missing.append(screen_id)

    print("=" * 55)
    print(f"\n  INSTALLED on {len(has_it)} screen(s): {has_it}")
    print(f"  MISSING on  {len(missing)} screen(s): {missing}\n")


if __name__ == "__main__":
    main()
