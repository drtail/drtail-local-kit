#!/usr/bin/env bash
# Fails when the served skill (https://local.drtail.us/skill.md) differs from skill/SKILL.md.
# skill/SKILL.md is the source; the site serves a copy of it.
set -euo pipefail

URL="${SKILL_URL:-https://local.drtail.us/skill.md}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SERVED="$(mktemp)"
trap 'rm -f "$SERVED"' EXIT

curl -fsSL --retry 3 "$URL" -o "$SERVED"

if diff -u "$ROOT/skill/SKILL.md" "$SERVED"; then
  echo "In sync: $URL matches skill/SKILL.md ($(git -C "$ROOT" rev-parse --short HEAD 2>/dev/null || echo 'no git'))"
else
  echo "Out of sync: $URL differs from skill/SKILL.md (diff above)." >&2
  exit 1
fi
