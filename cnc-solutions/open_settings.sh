#!/bin/bash
# Auto-discover all rk3288 screens and open Settings on each
# Caches found IPs so repeat runs are instant. Use --scan to force rescan.

CACHE_FILE="$HOME/.cnc_screens"

echo ""
echo "============================================"
echo "  CNC Screen Finder + Settings Opener"
echo "============================================"
echo ""

# Use cache unless --scan flag or cache doesn't exist
if [ "$1" = "--scan" ] || [ ! -f "$CACHE_FILE" ]; then
  echo "[1/3] Scanning 192.168.0.0/24 on port 5555..."

  TMPFILE=$(mktemp)

  for ip in $(seq 1 254); do
    (echo >/dev/tcp/192.168.0.$ip/5555) 2>/dev/null && {
      echo "192.168.0.$ip" >> "$TMPFILE"
    } &
  done
  wait

  FOUND=$(wc -l < "$TMPFILE" | tr -d ' ')

  if [ "$FOUND" -eq 0 ]; then
    echo "  No screens found on the network."
    rm -f "$TMPFILE"
    exit 0
  fi

  # Save to cache
  cp "$TMPFILE" "$CACHE_FILE"
  rm -f "$TMPFILE"
  echo "  Found $FOUND device(s) — saved to cache"
else
  FOUND=$(wc -l < "$CACHE_FILE" | tr -d ' ')
  echo "[1/3] Using cached screens ($FOUND device(s)) — run with --scan to rescan"
fi

echo ""
echo "[2/3] Connecting..."

i=1
while read -r ip; do
  printf "  Screen %d: %s ... " "$i" "$ip"
  result=$(adb connect "$ip:5555" 2>&1)
  if echo "$result" | grep -q "connected"; then
    echo "OK"
  else
    echo "FAILED — removing from cache"
    sed -i '' "/$ip/d" "$CACHE_FILE"
  fi
  i=$((i + 1))
done < "$CACHE_FILE"

echo ""
echo "[3/3] Opening Settings..."

i=1
for device in $(adb devices | grep ':5555' | awk '{print $1}'); do
  printf "  Screen %d: %s ... " "$i" "$device"
  adb -s "$device" shell am force-stop com.cnc.signage 2>/dev/null
  result=$(adb -s "$device" shell am start -n com.android.settings/.Settings 2>&1)
  if echo "$result" | grep -q "Error"; then
    echo "FAILED"
    echo "    $result"
  else
    echo "OK"
  fi
  i=$((i + 1))
done

CONNECTED=$(adb devices | grep -c ':5555')
echo ""
echo "============================================"
echo "  All done — $CONNECTED screen(s) ready"
echo "============================================"
echo ""
