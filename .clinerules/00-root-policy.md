# Root Policy

## Canonical local root
- /home/lorenzomccray/Cline

## Local control-plane rule
This repository is the local control plane for the Cline setup on this machine.

## Active repo-owned surfaces
- .clinerules/
- .clinerules/hooks/
- .clinerules/workflows/
- .cline/skills/
- .claude/settings.json
- .vscode/settings.json
- docs/operations/
- docs/prompts/
- .cortex/

## Runtime-only surfaces
- ~/.cline

## Core rules
1. Prefer repo-owned control-plane files over legacy top-level folders.
2. Do not claim capability without local proof.
3. Keep runtime state separate from repo doctrine.
4. Keep Google Drive as the cloud document layer, not the live runtime layer.
5. Do not store secrets in repo docs or Drive docs.
6. Require narrow, reversible changes whenever possible.
7. Treat old top-level Hooks/, Rules/, and Workflows/ as legacy unless explicitly reactivated.

## Approval rules
- High-risk tool use should be blocked or require approval.
- Destructive git actions require approval.
- Browser, MCP, and command access should not be treated as safe by default.

## Current priority
1. Finish local stabilization
2. Normalize docs and rules
3. Retire legacy active surfaces
4. Mirror stable doctrine, prompts, and reports into Drive
