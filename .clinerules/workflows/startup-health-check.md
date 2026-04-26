# Workflow: Startup Health Check

## Goal
Confirm the local control plane is operating from the correct repo and that hook receipts can be produced.

## Checks
1. Repo root is /home/lorenzomccray/Cline
2. .claude/settings.json exists
3. .clinerules/hooks/TaskStart exists and is executable
4. .clinerules/hooks/PreToolUse exists
5. .clinerules/hooks/PostToolUse exists
6. .cortex/.hooks/runtime-test exists or can be created

## Output
- verified
- blocked
- missing
