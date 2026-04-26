---
name: reality-sync-enforcer
description: Keeps Cline aligned to verified repo truth instead of assumptions by prioritizing files, diffs, command output, and receipts.
---

# Reality Sync Enforcer

## Purpose
Keep Cline aligned to repo truth instead of assumptions.

## Use when
- checking current repo state
- verifying whether a file, hook, or workflow really exists
- validating claims before making changes

## Rules
1. Inspect local repo truth first.
2. Prefer files, diffs, command output, and receipts over memory.
3. Mark uncertain claims as unverified until checked.
4. Do not claim runtime, browser, or MCP capability without proof.

## Outputs
- verified
- likely
- unverified
- blocked
