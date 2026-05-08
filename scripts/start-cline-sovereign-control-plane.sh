#!/usr/bin/env bash
set -euo pipefail

ROOT="/home/lorenzomccray/Cline"
cd "$ROOT"

echo "Cline Sovereign Control Plane launcher"
echo "Root: $ROOT"
echo
echo "Running doctor first..."
bash scripts/control-plane-doctor.sh
echo

cat <<'MSG'
LAUNCH BLOCKED BY DESIGN.

The launcher exists, but runtime startup is not implemented yet.

Current safe behavior:
- no Cline Duo start
- no Kanban start
- no MCP start
- no Gateway start
- no CDP start
- no Quantum/LOAI service start
MSG
