#!/usr/bin/env bash
# Stamp the Foundry method into a new or existing product repo.
# Usage: ./new-project.sh /path/to/repo

set -e

TARGET="$1"
FOUNDRY="$(cd "$(dirname "$0")" && pwd)"

if [ -z "$TARGET" ]; then
  echo "Usage: ./new-project.sh /path/to/repo"
  exit 1
fi

mkdir -p "$TARGET/docs" "$TARGET/.claude/skills"

copy_if_absent() {
  if [ -e "$2" ]; then
    echo "skip (exists): $2"
  else
    cp -r "$1" "$2"
    echo "added: $2"
  fi
}

copy_if_absent "$FOUNDRY/templates/CLAUDE.md"      "$TARGET/CLAUDE.md"
copy_if_absent "$FOUNDRY/templates/PRODUCT.md"     "$TARGET/docs/PRODUCT.md"
copy_if_absent "$FOUNDRY/templates/DECISIONS.md"   "$TARGET/docs/DECISIONS.md"
copy_if_absent "$FOUNDRY/templates/STATE.md"       "$TARGET/docs/STATE.md"

for skill in "$FOUNDRY"/templates/skills/*/; do
  name=$(basename "$skill")
  copy_if_absent "$skill" "$TARGET/.claude/skills/$name"
done

echo ""
echo "Done. Next:"
echo "  1. Fill in docs/PRODUCT.md"
echo "  2. Fill in the Stack section of CLAUDE.md"
echo "  3. Commit and push"
echo "  4. Create a claude.ai project, mirror PRODUCT.md, fetch STATE.md by raw URL"
