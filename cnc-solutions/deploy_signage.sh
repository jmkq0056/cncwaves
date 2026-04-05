#!/bin/bash
# Deploy CNC Signage to all screens — PARALLEL, zero prompts
APK="/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/signage-android/app/build/outputs/apk/release/app-release.apk"
BACKUP_DIR="/tmp/cnc_prefs_backup"
LOG_DIR="/tmp/cnc_deploy_logs"
PKG="com.cnc.signage"
mkdir -p "$BACKUP_DIR" "$LOG_DIR"

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
    > "$LOG"

    # 1) Check device reachable
    if ! adb -s "$DEV" shell "echo ok" >> "$LOG" 2>&1; then
        adb connect "$DEV" >> "$LOG" 2>&1
        sleep 1
        if ! adb -s "$DEV" shell "echo ok" >> "$LOG" 2>&1; then
            echo "  ??? ($IP) ... OFFLINE"
            return 1
        fi
    fi

    # 2) Backup prefs
    PREFS=$(adb -s "$DEV" shell "su 0 cat /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>/dev/null)
    SCREEN_NUM="?"
    if echo "$PREFS" | grep -q "screen_number"; then
        SCREEN_NUM=$(echo "$PREFS" | grep screen_number | sed 's/.*value="\([0-9]*\)".*/\1/')
        echo "$PREFS" | sed 's/name="playlist_hash">.*</name="playlist_hash"></' > "$BACKUP_DIR/$IP.xml"
    fi

    # 3) Kill app + dismiss stuck dialogs in one shot
    adb -s "$DEV" shell "am force-stop $PKG; input keyevent 4; input keyevent 4" 2>/dev/null

    # 4) Disable Play Protect + enable NTP time sync (burst sync depends on it)
    adb -s "$DEV" shell "settings put global verifier_verify_adb_installs 0; settings put global package_verifier_enable 0; settings put global auto_time 1; settings put global auto_time_zone 1" 2>/dev/null

    # 5) Uninstall + Install
    adb -s "$DEV" uninstall "$PKG" >> "$LOG" 2>&1
    if ! adb -s "$DEV" install "$APK" >> "$LOG" 2>&1; then
        echo "  Screen $SCREEN_NUM ($IP) ... INSTALL FAILED"
        return 1
    fi

    # 6) Grant ALL permissions silently — no prompts ever
    adb -s "$DEV" shell "\
      appops set $PKG SYSTEM_ALERT_WINDOW allow; \
      appops set $PKG REQUEST_INSTALL_PACKAGES allow; \
      dumpsys deviceidle whitelist +$PKG; \
      pm grant $PKG android.permission.POST_NOTIFICATIONS \
    " >> "$LOG" 2>&1

    # 7) Restore prefs
    if [ -f "$BACKUP_DIR/$IP.xml" ]; then
        adb -s "$DEV" push "$BACKUP_DIR/$IP.xml" /sdcard/cnc_prefs.xml >> "$LOG" 2>&1
        adb -s "$DEV" shell "su 0 sh -c '\
          mkdir -p /data/data/$PKG/shared_prefs && \
          cp /sdcard/cnc_prefs.xml /data/data/$PKG/shared_prefs/cnc_signage.xml && \
          chmod 660 /data/data/$PKG/shared_prefs/cnc_signage.xml && \
          OWNER=\$(stat -c %u /data/data/$PKG) && \
          chown \$OWNER:\$OWNER /data/data/$PKG/shared_prefs && \
          chown \$OWNER:\$OWNER /data/data/$PKG/shared_prefs/cnc_signage.xml \
        '" >> "$LOG" 2>&1
        adb -s "$DEV" shell "rm /sdcard/cnc_prefs.xml" 2>/dev/null
    fi

    # 8) Launch + verify
    adb -s "$DEV" shell "am start -n $PKG/.MainActivity" >> "$LOG" 2>&1
    sleep 2
    TOP=$(adb -s "$DEV" shell "dumpsys activity activities" 2>/dev/null | grep "mResumedActivity")
    if echo "$TOP" | grep -q "$PKG"; then
        echo "  Screen $SCREEN_NUM ($IP) ... OK"
    else
        # Retry launch
        adb -s "$DEV" shell "am force-stop $PKG" 2>/dev/null
        adb -s "$DEV" shell "am start -n $PKG/.MainActivity" >> "$LOG" 2>&1
        sleep 2
        TOP2=$(adb -s "$DEV" shell "dumpsys activity activities" 2>/dev/null | grep "mResumedActivity")
        if echo "$TOP2" | grep -q "$PKG"; then
            echo "  Screen $SCREEN_NUM ($IP) ... OK (retry)"
        else
            echo "  Screen $SCREEN_NUM ($IP) ... LAUNCHED but not foreground"
        fi
    fi
}

echo "=== Deploying to ${#IPS[@]} screens in parallel ==="
PIDS=()
for IP in "${IPS[@]}"; do
    deploy_one "$IP" &
    PIDS+=($!)
done

for PID in "${PIDS[@]}"; do
    wait "$PID"
done

echo ""
echo "=== Deploy complete ==="
