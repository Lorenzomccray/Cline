#!/usr/bin/env bash
set -u

ROOT="/home/lorenzomccray/Cline"
HEALTH="$ROOT/.cortex/health"
HISTORY="$HEALTH/history"
STAMP="$(date +%Y%m%d-%H%M%S)"
mkdir -p "$HEALTH" "$HISTORY"

MD="$HEALTH/latest.md"
JSON="$HEALTH/latest.json"
STATUS="PASS"

cd "$ROOT" || exit 1

{
  echo "# Cline Control Plane Doctor"
  echo
  echo "Generated: $(date -Iseconds)"
  echo "Root: $ROOT"
  echo
  echo "## Git status"
  echo '```text'
  git status --short || true
  echo '```'
  echo
  echo "## Required folders"
  echo '```text'
  for d in .clinerules .clinerules/hooks .clinerules/workflows .cline/skills docs/operations scripts .cortex; do
    if [ -d "$d" ]; then
      echo "PASS $d"
    else
      echo "FAIL missing $d"
      STATUS="FAIL"
    fi
  done
  echo '```'
  echo
  echo "## Required hooks"
  echo '```text'
  for h in TaskStart PreToolUse PostToolUse; do
    p=".clinerules/hooks/$h"
    if [ -x "$p" ]; then
      echo "PASS executable $p"
    elif [ -f "$p" ]; then
      echo "WARN not executable $p"
      [ "$STATUS" = "PASS" ] && STATUS="WARN"
    else
      echo "FAIL missing $p"
      STATUS="FAIL"
    fi
  done
  echo '```'
  echo
  echo "## Runtime processes"
  echo '```text'
  ps -eo pid,ppid,stat,etime,%cpu,%mem,cmd | grep -Ei 'cline-duo|cline|kanban|loai|mcp|quantum|codex|gateway' | grep -v grep || true
  echo '```'
  echo
  echo "## Failed user services"
  echo '```text'
  systemctl --user --failed || true
  echo '```'
  echo
  echo "## AI services"
  echo '```text'
  systemctl --user list-units --type=service --all | grep -Ei 'cline|kanban|loai|mcp|quantum|codex|gateway|env-audit' || true
  echo '```'
  echo
  echo "## AI timers"
  echo '```text'
  systemctl --user list-timers --all | grep -Ei 'cline|kanban|loai|mcp|quantum|codex|gateway|env-audit' || true
  echo '```'
  echo
  echo "## Status"
  echo "$STATUS"
} | tee "$MD" > "$HISTORY/control-plane-doctor-$STAMP.md"

python3 -c "import json,datetime,pathlib; pathlib.Path('$JSON').write_text(json.dumps({'generated_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),'root':'$ROOT','status':'$STATUS','policy':'no runtime launch without explicit owner approval'}, indent=2)+'\n')"

echo "Doctor wrote:"
echo "$MD"
echo "$JSON"
echo "$HISTORY/control-plane-doctor-$STAMP.md"

[ "$STATUS" = "FAIL" ] && exit 1 || exit 0
