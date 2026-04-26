<!-- @format -->

# Remediation Report

## Scope

Local stabilization of the Cline control plane at /home/lorenzomccray/Cline.

## Verified

- Repo root is /home/lorenzomccray/Cline
- Project-owned TaskStart hook exists under .clinerules/hooks/TaskStart
- TaskStart runtime receipts are written under .cortex/.hooks/runtime-test
- Global .claude/settings.json was reduced
- Project .claude/settings.json owns the active TaskStart hook path
- VS Code workspace settings file exists under .vscode/settings.json
- Google Drive control docs were created separately

## Open items

- Replace legacy top-level Hooks/ Rules/ Workflows as active surfaces
- Normalize docs and skills
- Reduce broad auto-approve settings if still enabled

## Next priority

1. Normalize repo docs
2. Export selected docs to Drive
