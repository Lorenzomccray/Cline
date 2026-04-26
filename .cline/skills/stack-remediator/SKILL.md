---
name: stack-remediator
description: Repairs local control-plane drift with the smallest safe change and verifies remediation with command output or receipts.
---

# Stack Remediator

## Purpose
Repair local control-plane drift with the smallest safe change.

## Use when
- hooks stop firing
- repo structure drifts
- settings paths are wrong
- receipts are missing
- workflow surfaces are inconsistent

## Sequence
1. confirm repo root
2. inspect the failing surface
3. isolate the smallest broken piece
4. apply one reversible fix
5. verify with command output or receipts
6. commit only the relevant change

## Rules
- prefer minimal fixes over broad rewrites
- keep legacy surfaces retired unless explicitly needed
- verify after every remediation step
