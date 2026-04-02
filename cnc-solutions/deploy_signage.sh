#!/bin/bash
# Deploy CNC Signage v1.2 to all 11 screens
# Backs up SharedPreferences, uninstalls, installs new APK,
# restores config, grants battery exemption, launches app.

APK="/Users/jawadmehmoodkhanqayyum/Documents/GitHub/cncwaves/signage-android/app/build/outputs/apk/release/app-release.apk"
BACKUP_DIR="/tmp/cnc_prefs_backup"
PKG="com.cnc.signage"
mkdir -p "$BACKUP_DIR"

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

echo "=== Step 1: Backing up SharedPreferences ==="
for IP in "${IPS[@]}"; do
    DEV="$IP:5555"
    printf "  %-18s ... " "$DEV"
    PREFS=$(adb -s "$DEV" shell "su 0 cat /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>&1)
    if echo "$PREFS" | grep -q "screen_number"; then
        SCREEN_NUM=$(echo "$PREFS" | grep screen_number | sed 's/.*value="\([0-9]*\)".*/\1/')
        echo "$PREFS" > "$BACKUP_DIR/$IP.xml"
        echo "OK (Screen $SCREEN_NUM)"
    else
        echo "WARN: no prefs found"
    fi
done

echo ""
echo "=== Step 2: Uninstall → Install → Restore → Configure ==="
for IP in "${IPS[@]}"; do
    DEV="$IP:5555"
    SCREEN_NUM="?"
    if [ -f "$BACKUP_DIR/$IP.xml" ]; then
        SCREEN_NUM=$(grep screen_number "$BACKUP_DIR/$IP.xml" | sed 's/.*value="\([0-9]*\)".*/\1/')
    fi
    printf "  Screen %2s (%s) ... " "$SCREEN_NUM" "$IP"

    # Uninstall old
    adb -s "$DEV" uninstall "$PKG" > /dev/null 2>&1

    # Install new
    INSTALL_RESULT=$(adb -s "$DEV" install "$APK" 2>&1)
    if ! echo "$INSTALL_RESULT" | grep -q "Success"; then
        echo "INSTALL FAILED: $INSTALL_RESULT"
        continue
    fi

    # Grant battery optimization exemption via ADB (no dialog needed)
    adb -s "$DEV" shell "dumpsys deviceidle whitelist +$PKG" > /dev/null 2>&1

    # Restore prefs
    if [ -f "$BACKUP_DIR/$IP.xml" ]; then
        adb -s "$DEV" shell "su 0 mkdir -p /data/data/$PKG/shared_prefs" 2>/dev/null
        adb -s "$DEV" push "$BACKUP_DIR/$IP.xml" /sdcard/cnc_prefs.xml > /dev/null 2>&1
        adb -s "$DEV" shell "su 0 cp /sdcard/cnc_prefs.xml /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>/dev/null
        adb -s "$DEV" shell "su 0 chmod 660 /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>/dev/null
        APP_UID=$(adb -s "$DEV" shell "su 0 stat -c '%u' /data/data/$PKG" 2>/dev/null | tr -d '\r\n')
        if [ -n "$APP_UID" ]; then
            adb -s "$DEV" shell "su 0 chown $APP_UID:$APP_UID /data/data/$PKG/shared_prefs/cnc_signage.xml" 2>/dev/null
            adb -s "$DEV" shell "su 0 chown $APP_UID:$APP_UID /data/data/$PKG/shared_prefs" 2>/dev/null
        fi
        adb -s "$DEV" shell "rm /sdcard/cnc_prefs.xml" 2>/dev/null
    fi

    # Force stop, launch, dismiss any system dialogs
    adb -s "$DEV" shell "am force-stop $PKG" 2>/dev/null
    adb -s "$DEV" shell "am start -n $PKG/.MainActivity" > /dev/null 2>&1
    # Press Enter/OK to dismiss any "allow background?" dialogs
    sleep 1
    adb -s "$DEV" shell "input keyevent 66" > /dev/null 2>&1

    echo "OK"
done

echo ""
echo "=== Done: CNC Signage v1.2 deployed ==="
