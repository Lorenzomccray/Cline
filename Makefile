.PHONY: doctor health status launch

doctor:
	bash scripts/control-plane-doctor.sh

health: doctor

status:
	git status --short
	systemctl --user --failed || true
	systemctl --user list-units --type=service --all | grep -Ei 'cline|kanban|loai|mcp|quantum|codex|gateway|env-audit' || true

launch:
	bash scripts/start-cline-sovereign-control-plane.sh
