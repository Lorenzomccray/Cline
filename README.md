# Cline Root

This directory is the canonical personal project root for the local Cline stack.

## Top-level structure

- `browser-wrapper/`
  Chrome unpacked extension shell for the local browser control panel.

- `MCP/`
  MCP-related servers, adapters, and protocol work.

- `Hooks/`
  Hook definitions and hook-related helper files.

- `Rules/`
  Project rules, guardrails, and behavioral controls.

- `Workflows/`
  Reusable task flows, execution patterns, and process docs.

- `.cortex/`
  Internal project control/state area.

- `.cortex/.hooks/`
  Hook output/log drop location.

- `docs/`
  Human-readable project maps and internal documentation.

## Notes

- `~/.cline` remains the actual runtime/config/state location and is intentionally not merged into this directory.
- The Chrome unpacked extension path should point to `browser-wrapper/`, not the root of this project.
