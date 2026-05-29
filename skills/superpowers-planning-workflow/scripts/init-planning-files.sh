#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-.}"
SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TASK_DIR="$TARGET_DIR/.task"

mkdir -p "$TASK_DIR"

copy_if_missing() {
  local src="$1"
  local dest="$2"
  if [[ -f "$dest" ]]; then
    echo "exists: $dest"
  else
    cp "$src" "$dest"
    echo "created: $dest"
  fi
}

copy_if_missing "$SKILL_DIR/templates/task_plan.md" "$TASK_DIR/task_plan.md"
copy_if_missing "$SKILL_DIR/templates/findings.md" "$TASK_DIR/findings.md"
copy_if_missing "$SKILL_DIR/templates/progress.md" "$TASK_DIR/progress.md"

echo "planning files ready under $TASK_DIR"
