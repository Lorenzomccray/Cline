<!-- @format -->

# Canonicalization

## Canonical local root

- /home/lorenzomccray/Cline

## Active local control-plane surfaces

- .clinerules/
- .clinerules/hooks/
- .clinerules/workflows/
- .cline/skills/
- .claude/settings.json
- .vscode/settings.json
- .cortex/

## Runtime-only surfaces

- ~/.cline

## Legacy surfaces

These may still exist but should not be treated as the active source of truth:

- Hooks/
- Rules/
- Workflows/

## Hook inventory

Cline supports five hook types. The first three are implemented; the last two are available but not yet active.

| Hook type    | File                             | Status    |
| ------------ | -------------------------------- | --------- |
| TaskStart    | `.clinerules/hooks/TaskStart`    | Active    |
| PreToolUse   | `.clinerules/hooks/PreToolUse`   | Active    |
| PostToolUse  | `.clinerules/hooks/PostToolUse`  | Active    |
| Notification | `.clinerules/hooks/Notification` | Available |
| Stop         | `.clinerules/hooks/Stop`         | Available |

Runtime receipts for active hooks are written under `.cortex/.hooks/`.

## Rules

1. Prefer the repo-owned control-plane files over legacy top-level folders.
2. Keep runtime state local.
3. Use Google Drive as the cloud document layer, not the live runtime layer.
4. Mirror durable doctrine, prompts, reports, and receipts into Drive after local stabilization.
