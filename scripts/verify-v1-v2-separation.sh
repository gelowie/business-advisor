#!/usr/bin/env bash
# V1/V2 Separation Check
#
# WHAT THIS VERIFIES
#   That v1's actual content (assets/templates/, references/, tools/) contains
#   no dependency on v2 (assets/templates2/) — no file path references, no
#   "Deepened by (v2)" sections, no bare mentions of "v2" as a concept.
#
# WHAT COUNTS AS A VIOLATION
#   Any occurrence, inside a file NOT on the allowlist below, of either:
#     (a) the token "v2" or the string "templates2", or
#     (b) the exact name of a v2-only methodology file (one that exists under
#         assets/templates2/ but has no same-named file anywhere under
#         assets/templates/) — this catches a v2 methodology surviving as
#         plain text after a link to it is stripped, which (a) alone misses.
#   v1 must remain fully answerable with assets/templates2/ deleted entirely;
#   a match outside the allowlist means some piece of v1's actual content
#   silently assumes v2 exists.
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
#   - assets/templates3/**              (v3's own reasoning modules; v3
#                                         legitimately consults v2 and v1)
#   - assets/brains/**                  (v3's methodology-coordination layer)
#   - assets/multi-hands/**             (v3's domain-coordination layer)
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
  [[ "$f" == ./assets/templates3/* ]] && return 0
  [[ "$f" == ./assets/brains/* ]] && return 0
  [[ "$f" == ./assets/multi-hands/* ]] && return 0
  return 1
}

PATTERN='(^|[^A-Za-z0-9_])[Vv]2([^A-Za-z0-9_]|$)|[Tt]emplates2'
VIOLATIONS=0
REPORT=""

# Build the list of v2-only methodology names: basenames under assets/templates2/
# that have no same-named file anywhere under assets/templates/. A name on this
# list is unambiguously v2-specific — its plain-text appearance outside the
# allowlist is a real leak even though it contains neither "v2" nor "templates2".
V2_ONLY_NAMES_FILE=$(mktemp)
if [[ -d assets/templates2 ]]; then
  find assets/templates2 -type f -name "*.md" ! -name "index.md" ! -name "moderate-layer.md" -exec basename {} .md \; | sort -u > /tmp/_t2_names.$$
  find assets/templates -type f -name "*.md" -exec basename {} .md \; | sort -u > /tmp/_t1_names.$$
  comm -23 /tmp/_t2_names.$$ /tmp/_t1_names.$$ > "$V2_ONLY_NAMES_FILE"
  rm -f /tmp/_t2_names.$$ /tmp/_t1_names.$$
fi

while IFS= read -r -d '' file; do
  is_allowlisted "$file" && continue
  matches=$(grep -nE "$PATTERN" "$file" 2>/dev/null || true)
  if [[ -s "$V2_ONLY_NAMES_FILE" ]]; then
    while IFS= read -r name; do
      [[ -z "$name" ]] && continue
      name_matches=$(grep -nF "$name" "$file" 2>/dev/null || true)
      [[ -n "$name_matches" ]] && matches+=$'\n'"$name_matches"
    done < "$V2_ONLY_NAMES_FILE"
  fi
  if [[ -n "$matches" ]]; then
    VIOLATIONS=$((VIOLATIONS + 1))
    REPORT+=$'\n'"--- $file ---"$'\n'"$matches"$'\n'
  fi
done < <(find . -type f -name "*.md" -print0)
rm -f "$V2_ONLY_NAMES_FILE"

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
