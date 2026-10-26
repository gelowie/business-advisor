#!/usr/bin/env bash
# V1/V2 Separation Check
#
# WHAT THIS VERIFIES
#   That v1's actual content (assets/templates/, references/, tools/) contains
#   no dependency on v2 (assets/templates2/) — no file path references, no
#   "Deepened by (v2)" sections, no bare mentions of "v2" as a concept.
#
# WHAT COUNTS AS A VIOLATION
#   Any occurrence of the token "v2" or the string "templates2" inside a file
#   that is NOT on the allowlist below. v1 must remain fully answerable with
#   assets/templates2/ deleted entirely; a match outside the allowlist means
#   some piece of v1's actual content silently assumes v2 exists.
#
# THE ALLOWLIST (files allowed to mention v2 — these ARE the router, not v1 content)
#   - SKILL.md                          (top-level entry point; decides v1 vs v2)
#   - assets/templates/base-layer.md    (v1's own operating contract; names its
#                                         escalation path to v2 by design)
#   - assets/routing.md                 (the v1<->v2 negotiation, by definition)
#   - assets/selection.md               (the shared v1+v2 resource-selection logic)
#   - DECISIONS.md, CHANGELOG.md, TESTS.md (meta-documentation ABOUT the
#                                         architecture, not v1 content itself)
#   - assets/templates2/**              (v2 itself)
#   - scripts/**                        (this script and its docs)
#
# HOW TO RUN
#   bash scripts/verify-v1-v2-separation.sh
#   (run from the business-advisor project root, or pass the root as $1)
#
# WHAT A PASS MEANS
#   assets/templates/*.md (excluding base-layer.md), assets/templates/index.md,
#   assets/templates/style.md, references/**, and tools/** are all free of any
#   v2 dependency — a V1-only package can be produced from them with zero edits.
#
# WHAT A FAIL MEANS
#   At least one non-allowlisted file mentions v2/templates2. The offending
#   file(s) and line(s) are printed. Fix by moving the cross-version fact into
#   routing.md or selection.md and removing it from the offending file.
#
# RUN THIS AGAIN whenever a v1 template, a tools/ file, or references/index.md
# is edited, and whenever a new v2 methodology is added and cross-linked.

set -uo pipefail
ROOT="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
cd "$ROOT" || { echo "Cannot cd to $ROOT"; exit 2; }

ALLOWLIST=(
  "./SKILL.md"
  "./assets/templates/base-layer.md"
  "./assets/routing.md"
  "./assets/selection.md"
  "./DECISIONS.md"
  "./CHANGELOG.md"
  "./TESTS.md"
)

is_allowlisted() {
  local f="$1"
  for a in "${ALLOWLIST[@]}"; do
    [[ "$f" == "$a" ]] && return 0
  done
  [[ "$f" == ./assets/templates2/* ]] && return 0
  [[ "$f" == ./scripts/* ]] && return 0
  return 1
}

PATTERN='(^|[^A-Za-z0-9_])[Vv]2([^A-Za-z0-9_]|$)|[Tt]emplates2'
VIOLATIONS=0
REPORT=""

while IFS= read -r -d '' file; do
  is_allowlisted "$file" && continue
  matches=$(grep -nE "$PATTERN" "$file" 2>/dev/null || true)
  if [[ -n "$matches" ]]; then
    VIOLATIONS=$((VIOLATIONS + 1))
    REPORT+=$'\n'"--- $file ---"$'\n'"$matches"$'\n'
  fi
done < <(find . -type f -name "*.md" -print0)

echo "=== V1/V2 Separation Check ==="
echo "Scanned: assets/templates/ (excl. base-layer.md), assets/templates/index.md,"
echo "         assets/templates/style.md, references/**, tools/**, and any other"
echo "         .md file not on the allowlist."
echo

if [[ "$VIOLATIONS" -eq 0 ]]; then
  echo "V1/V2 Separation Check: PASS"
  echo "No v2/templates2 dependency found outside the allowlisted router files."
  exit 0
else
  echo "V1/V2 Separation Check: FAIL"
  echo "$VIOLATIONS file(s) with a v2 dependency found:"
  echo "$REPORT"
  exit 1
fi
