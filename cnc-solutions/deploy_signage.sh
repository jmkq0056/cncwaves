#!/bin/bash
# Deploy CNC Signage to all screens — ULTRA parallel.
#
# Speed wins vs earlier versions:
#   * `adb install -r -g` replaces the app in-place instead of the old
#     uninstall->install two-step (-g grants every manifest permission at
#     install time, skipping the appops/pm grant round-trips).
#   * No force-stop / keyevent preamble (install -r handles a running app).
#   * No dex AOT pass (was ~30-120s per box on rk3288 for nothing).
#   * All per-device `adb shell` calls coalesced into single invocations.
#   * Launch verification dropped to 1s (the app renders in <500ms on rk3288).
#   * Every IP runs fully concurrently; results stream in as they finish.
#
# Prefs survive: the shared_prefs file (screen_number, server_url, burst
# config, burst_ws_url, etc.) is dumped before install and restored after,
# keyed by device IP. Only `playlist_hash` is scrubbed so content re-syncs.

set -u

APK="/Users/jmkq/Documents/GitHub/cncwaves/signage-android/app/build/outputs/apk/release/app-release.apk"
BACKUP_DIR="/tmp/cnc_prefs_backup"
LOG_DIR="/tmp/cnc_deploy_logs"
PKG="com.cnc.signage"
mkdir -p "$BACKUP_DIR" "$LOG_DIR"

if [ ! -f "$APK" ]; then
  echo "APK not found: $APK" >&2
  exit 1
fi

IPS=(
  192.168.0.19
  192.168.0.22
  192.168.0.21
  192.168.0.158
  192.168.0.150
  192.168.0.225
  192.168.0.238
  192.168.0.224
  192.168.0.221
  192.168.0.173
  192.168.0.155
)

deploy_one() {
    local IP="$1"
    local DEV="$IP:5555"
    local LOG="$LOG_DIR/$IP.log"
    local T0=$(date +%s)
    > "$LOG"

    # 1) Reach device. adb connect is idempotent and fast on a warm TCP socket.
    if ! adb -s "$DEV" shell "echo ok" >> "$LOG" 2>&1; then
        adb connect "$DEV" >> "$LOG" 2>&1
        if ! adb -s "$DEV" shell "echo ok" >> "$LOG" 2>&1; then
            echo "  ??? ($IP) ... OFFLINE"
            return 1
        fi
    fi

    # 2) Backup prefs (includes screen_number — this is why tablets don't
    # need reconfiguring after every deploy). Strip playlist_hash so the new
    # build re-syncs content from the server. Root is required.
    local PREFS
    PREFS=$(adb -s "$DEV" shell "su 0 cat /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>/dev/null)
    local SCREEN_NUM="?"
    if echo "$PREFS" | grep -q "screen_number"; then
        SCREEN_NUM=$(echo "$PREFS" | grep screen_number | sed 's/.*value="\([0-9]*\)".*/\1/')
        echo "$PREFS" | sed 's/name="playlist_hash">.*</name="playlist_hash"></' > "$BACKUP_DIR/$IP.xml"
    fi

    # 3) One-shot device prep — disable Play Protect + force NTP on.
    # Bundled with the install we already grant permissions via install -g,
    # so no separate appops/pm grant round-trips are needed.
    adb -s "$DEV" shell "
      settings put global verifier_verify_adb_installs 0;
      settings put global package_verifier_enable 0;
      settings put global auto_time 1;
      settings put global auto_time_zone 1;
      dumpsys deviceidle whitelist +$PKG;
    " >> "$LOG" 2>&1

    # 4) Install replace + grant-all. -r keeps the data dir intact (which we
    # overwrite with our backup anyway), -g grants every manifest permission,
    # -d tolerates downgrades during iteration. Single round-trip.
    if ! adb -s "$DEV" install -r -g -d "$APK" >> "$LOG" 2>&1; then
        # Fallback: some rk3288 ROMs reject -r when the signing cert changed.
        # Do the slower uninstall+install as a last resort.
        adb -s "$DEV" uninstall "$PKG" >> "$LOG" 2>&1
        if ! adb -s "$DEV" install -g "$APK" >> "$LOG" 2>&1; then
            echo "  Screen $SCREEN_NUM ($IP) ... INSTALL FAILED"
            return 1
        fi
    fi

    # 5) Lock in as default HOME launcher, whitelist overlay + install perms.
    # All coalesced into a single adb shell call.
    adb -s "$DEV" shell "
      appops set $PKG SYSTEM_ALERT_WINDOW allow;
      appops set $PKG REQUEST_INSTALL_PACKAGES allow;
      (cmd package set-home-activity $PKG/.MainActivity 2>/dev/null || pm set-home-activity $PKG/.MainActivity 2>/dev/null || su 0 cmd package set-home-activity $PKG/.MainActivity 2>/dev/null) || true;
    " >> "$LOG" 2>&1

    # 6) Restore prefs. Push file, copy into app's shared_prefs dir as root,
    # fix ownership to the app UID (otherwise app can't read its own prefs).
    if [ -f "$BACKUP_DIR/$IP.xml" ]; then
        adb -s "$DEV" push "$BACKUP_DIR/$IP.xml" /sdcard/cnc_prefs.xml >> "$LOG" 2>&1
        adb -s "$DEV" shell "su 0 sh -c '
          mkdir -p /data/data/$PKG/shared_prefs &&
          cp /sdcard/cnc_prefs.xml /data/data/$PKG/shared_prefs/cnc_signage.xml &&
          chmod 660 /data/data/$PKG/shared_prefs/cnc_signage.xml &&
          OWNER=\$(stat -c %u /data/data/$PKG) &&
          chown \$OWNER:\$OWNER /data/data/$PKG/shared_prefs &&
          chown \$OWNER:\$OWNER /data/data/$PKG/shared_prefs/cnc_signage.xml &&
          rm /sdcard/cnc_prefs.xml
        '" >> "$LOG" 2>&1
    fi

    # 7) Launch + verify with a tight retry. The app usually becomes
    # foreground in under a second on rk3288.
    adb -s "$DEV" shell "am start -n $PKG/.MainActivity" >> "$LOG" 2>&1
    sleep 1
    local TOP
    TOP=$(adb -s "$DEV" shell "dumpsys activity activities 2>/dev/null | grep mResumedActivity")
    local T1=$(date +%s)
    local ELAPSED=$((T1 - T0))
    if echo "$TOP" | grep -q "$PKG"; then
        echo "  Screen $SCREEN_NUM ($IP) ... OK (${ELAPSED}s)"
        return 0
    fi
    adb -s "$DEV" shell "am force-stop $PKG; am start -n $PKG/.MainActivity" >> "$LOG" 2>&1
    sleep 1
    TOP=$(adb -s "$DEV" shell "dumpsys activity activities 2>/dev/null | grep mResumedActivity")
    T1=$(date +%s)
    ELAPSED=$((T1 - T0))
    if echo "$TOP" | grep -q "$PKG"; then
        echo "  Screen $SCREEN_NUM ($IP) ... OK retry (${ELAPSED}s)"
    else
        echo "  Screen $SCREEN_NUM ($IP) ... LAUNCHED but not foreground (${ELAPSED}s)"
    fi
}

echo "=== Deploying to ${#IPS[@]} screens in parallel ==="
T_START=$(date +%s)
for IP in "${IPS[@]}"; do
    deploy_one "$IP" &
done
wait
T_END=$(date +%s)
echo ""
echo "=== Deploy complete in $((T_END - T_START))s ==="
