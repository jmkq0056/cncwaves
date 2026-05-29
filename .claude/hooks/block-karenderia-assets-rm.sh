#!/bin/bash
# PreToolUse hook for Bash. Blocks any command that would destroy the live
# Karenderia public asset directory at /var/www/html/assets (in-container)
# or the bind-mounted host path /opt/cncwaves/.../install/assets, or the
# local repo equivalent. Two prior incidents (2026-05-08, 2026-05-25)
# wiped this dir while clearing "caches" — every storefront script 404'd.

input=$(cat)
cmd=$(printf '%s' "$input" | /usr/bin/jq -r '.tool_input.command // ""')

# Patterns that delete/clear the assets dir (rm -rf, find -delete, mv away,
# truncate, > redirect to a file inside it, rsync --delete with assets/ as dest).
# Whitelist: targeting a specific hex-named Yii subdir like assets/a1b2c3d4 is OK.
risky_re='(rm[[:space:]]+[^|;&]*(-r|-f|-rf|-fr)[^|;&]*|find[[:space:]]+[^|;&]*-delete|rsync[[:space:]]+[^|;&]*--delete[^|;&]*)'
target_re='(/var/www/html/assets|/install/assets|cnc-restaurent-system/[^[:space:]]*install/assets|(^|[[:space:]])install/assets)'

if printf '%s' "$cmd" | grep -qE "$risky_re" && printf '%s' "$cmd" | grep -qE "$target_re"; then
  # Allow if the target is a specific 8-hex Yii-published subdir
  if printf '%s' "$cmd" | grep -qE '/assets/[a-f0-9]{8}(/|[[:space:]]|$)'; then
    exit 0
  fi
  cat <<'EOF' >&2
BLOCKED: command targets the Karenderia /assets directory (live public asset root: vendor JS/CSS, Vue bundle, FA webfonts, front.bundle.js).

This has been wiped twice by accident while clearing "caches". Per saved
feedback: clear protected/runtime/cache/*, reset OPcache, and bust HTTP
cache — but NEVER touch /assets. Only Yii-published hash subdirs
(/assets/<8-hex>/) are safe to delete, and only when named explicitly.

If you genuinely need this, re-run with the literal hash subdir, or remove
the .claude/hooks entry.
EOF
  exit 2
fi

exit 0
