#!/bin/bash
# Auto-discover and connect all rk3288 screens on the network
# No router access needed — scans port 5555 directly

echo "Scanning network for screens on port 5555..."

TMPFILE=$(mktemp)

for ip in $(seq 1 254); do
  # Quick check if port 5555 is open (0.3s timeout)
  (echo >/dev/tcp/192.168.0.$ip/5555) 2>/dev/null && {
    echo "192.168.0.$ip" >> "$TMPFILE"
  } &
done
wait

FOUND=$(wc -l < "$TMPFILE" | tr -d ' ')

while read -r ip; do
  echo "Connecting $ip:5555 ..."
  adb connect "$ip:5555"
done < "$TMPFILE"

rm -f "$TMPFILE"

echo ""
echo "=== Found $FOUND screen(s) ==="
echo ""
adb devices -l
