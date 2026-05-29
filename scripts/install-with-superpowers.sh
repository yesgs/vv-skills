#!/usr/bin/env bash
set -euo pipefail

AGENT="${1:-codex}"
SCOPE_FLAG=""

if [[ "${2:-}" == "-g" || "${2:-}" == "--global" ]]; then
  SCOPE_FLAG="-g"
fi

echo "Installing Superpowers skills for agent: $AGENT"
npx skills add obra/superpowers --skill '*' -a "$AGENT" $SCOPE_FLAG -y

echo "Installing superpowers-planning-workflow for agent: $AGENT"
npx skills add yesgs/vv-skills --skill superpowers-planning-workflow -a "$AGENT" $SCOPE_FLAG -y

echo "Installed Superpowers and superpowers-planning-workflow."
