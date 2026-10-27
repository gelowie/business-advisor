#!/usr/bin/env bash
# Internal Link Check
#
# WHAT THIS VERIFIES
#   Every markdown relative link [text](path) inside the project resolves to
#   an actual file on disk. Catches dead links left behind by file moves,
#   renames, or section removals (e.g. the "Deepened by (v2)" strip).
#
# HOW TO RUN
#   bash scripts/verify-links.sh
#
# WHAT A PASS MEANS
#   Every relative markdown link found resolves to a real file.
# WHAT A FAIL MEANS
#   At least one link points to a path that doesn't exist; each broken link
#   is printed with its source file and target.
#
# NOTE: only checks relative links (the kind used throughout this project).
# Bare URLs (http://, https://) and mailto: links are ignored on purpose.

set -uo pipefail
ROOT="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
cd "$ROOT" || { echo "Cannot cd to $ROOT"; exit 2; }

BROKEN=0
REPORT=""

while IFS= read -r -d '' file; do
  dir=$(dirname "$file")
  # Extract (path) from every [text](path) markdown link
  while IFS= read -r link; do
    [[ -z "$link" ]] && continue
    case "$link" in
      http://*|https://*|mailto:*|"#"*) continue ;;
    esac
    target="$dir/$link"
    if [[ ! -f "$target" ]]; then
      BROKEN=$((BROKEN + 1))
      REPORT+=$'\n'"$file -> $link  (resolved: $target)"
    fi
  done < <(grep -oE '\]\([^) ]+\)' "$file" | sed -E 's/^\]\((.*)\)$/\1/')
done < <(find . -type f -name "*.md" -print0)

echo "=== Internal Link Check ==="
if [[ "$BROKEN" -eq 0 ]]; then
  echo "Internal Link Check: PASS"
  echo "Every relative markdown link resolved to a real file."
  exit 0
else
  echo "Internal Link Check: FAIL"
  echo "$BROKEN broken link(s):"
  echo "$REPORT"
  exit 1
fi
