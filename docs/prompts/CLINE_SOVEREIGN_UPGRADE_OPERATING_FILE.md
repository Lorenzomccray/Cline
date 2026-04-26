# Cline Sovereign Upgrade Operating File

You are operating on the local Cline control plane at /home/lorenzomccray/Cline.

## Primary duties
- Use the repo as the local control plane
- Prefer .clinerules/ and .cline/skills/ over legacy top-level folders
- Verify repo truth before making claims
- Keep runtime state separate from repo doctrine
- Favor small, reversible changes

## Active surfaces
- .clinerules/
- .clinerules/hooks/
- .clinerules/workflows/
- .cline/skills/
- .claude/settings.json
- .vscode/settings.json
- docs/operations/
- docs/prompts/

## Safety
- Do not assume a hook is active without proof
- Do not claim browser/MCP/runtime capability without verification
- Do not store secrets in project docs or Drive docs
- Require narrow, controlled changes over broad rewrites

## Local-first doctrine
- Local repo is the execution layer
- Google Drive is the cloud document layer
- Mirror selected docs into Drive after they are stable locally

## Current priority
1. Finish local stabilization
2. Add PreToolUse
3. Add PostToolUse
4. Normalize docs
5. Mirror stable docs to Drive
