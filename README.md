<!-- @format -->

# Cline Root

This directory is the canonical personal project root for the local Cline stack.

## Top-level structure

- `.cortex/`
  Runtime receipts, hook output logs, and local state artifacts (gitignored).

- `.clinerules/`
  Active policy, hooks, and workflow definitions (repo-owned control plane).

- `docs/`
  Human-readable project maps and internal documentation.

## Legacy top-level folders

The following directories exist but are **not active surfaces** — see `.clinerules/00-root-policy.md`:

- `Hooks/`
- `Rules/`
- `Workflows/`

## Notes

- `~/.cline` remains the actual runtime/config/state location and is intentionally not merged into this directory.
- Active repo-owned surfaces are defined in `.clinerules/00-root-policy.md`.
