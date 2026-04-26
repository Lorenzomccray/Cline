# Workflow: Runtime Remediation

## Goal
Repair local control-plane drift without broad rewrites.

## Sequence
1. confirm repo root
2. inspect hook wiring
3. inspect repo-owned control-plane files
4. isolate drift
5. apply smallest reversible fix
6. verify with receipts or command proof
