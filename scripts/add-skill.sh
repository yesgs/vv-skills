#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <skill-name> <description>" >&2
  echo "Example: $0 repo-review-workflow \"Use this skill to review a repository before coding.\"" >&2
  exit 1
fi

SKILL_NAME="$1"
SKILL_DESCRIPTION="$2"

if [[ ! "$SKILL_NAME" =~ ^[a-z0-9][a-z0-9-]*[a-z0-9]$ ]]; then
  echo "Invalid skill name: $SKILL_NAME" >&2
  echo "Use lowercase letters, numbers, and hyphens only, for example: my-new-skill" >&2
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$ROOT_DIR/skills/$SKILL_NAME"

if [[ -e "$TARGET_DIR" ]]; then
  echo "Skill already exists: $TARGET_DIR" >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"

sed \
  -e "s/__SKILL_NAME__/$SKILL_NAME/g" \
  -e "s/__SKILL_DESCRIPTION__/$SKILL_DESCRIPTION/g" \
  "$ROOT_DIR/skill-template/SKILL.md.template" > "$TARGET_DIR/SKILL.md"

sed \
  -e "s/__SKILL_NAME__/$SKILL_NAME/g" \
  -e "s/__SKILL_DESCRIPTION__/$SKILL_DESCRIPTION/g" \
  "$ROOT_DIR/skill-template/README.md.template" > "$TARGET_DIR/README.md"

cat <<MSG
Created skill: $TARGET_DIR

Next steps:
1. Edit $TARGET_DIR/SKILL.md
2. Edit $TARGET_DIR/README.md
3. Add the skill name to skills.sh.json groupings if you want it grouped on skills.sh
4. Test with:
   npx skills add ./ --list
MSG
