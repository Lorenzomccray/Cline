---
name: universal-context-mapper
description: Maps the current task to the correct project surface, source of truth, and next file to inspect across local repo, runtime state, and Drive.
---

# Universal Context Mapper

## Purpose
Map the current task to the correct project surfaces.

## Use when
- deciding where a task belongs
- choosing between local repo, Drive docs, runtime state, or reports
- determining which files are the source of truth

## Mapping rules
- local execution and behavior -> /home/lorenzomccray/Cline
- repo doctrine and prompts -> docs/ and .clinerules/
- runtime state -> ~/.cline and .cortex/
- cloud document layer -> Google Drive AI-OS folders

## Outputs
- target surface
- source of truth
- next file to inspect
