# Startup Health Spec

## Goal
On task start, Cline should verify that the local control plane is operating from the correct repo and that hook receipts can be produced.

## Minimum checks
1. Repo root resolves to /home/lorenzomccray/Cline
2. Project .claude/settings.json exists
3. .clinerules/hooks/TaskStart exists and is executable
4. .cortex/.hooks/runtime-test exists or can be created
5. TaskStart produces a receipt pair when triggered

## Follow-up checks
- PreToolUse present
- PostToolUse present
- Active rules under .clinerules/
- Skills under .cline/skills/
