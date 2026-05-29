#!/usr/bin/env bash
set -euo pipefail

AGENT="${1:-codex}"
SCOPE_ARGS=()

if [[ "${2:-}" == "-g" || "${2:-}" == "--global" ]]; then
  SCOPE_ARGS=(-g)
fi

echo "Installing Superpowers skills for agent: $AGENT"
npx skills add obra/superpowers --skill '*' -a "$AGENT" "${SCOPE_ARGS[@]}" -y

echo "Installing planning-with-files for agent: $AGENT"
npx skills add mxyhi/ok-skills --skill planning-with-files -a "$AGENT" "${SCOPE_ARGS[@]}" -y

echo "Installing superpowers-planning-workflow for agent: $AGENT"
npx skills add yesgs/vv-skills --skill superpowers-planning-workflow -a "$AGENT" "${SCOPE_ARGS[@]}" -y

echo "Installed Superpowers, planning-with-files, and superpowers-planning-workflow."
