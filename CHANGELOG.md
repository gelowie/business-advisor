# Changelog

## Stabilization pass — V1/V2 separation, verification, and V3-readiness

Context: prior to this pass, V1 and V2 worked correctly but the separation between them existed only as a packaging-time exercise — producing a clean V1 build required manually stripping v2 references out of 20 template files, `tools/`, and `references/index.md` each time, verified by ad hoc `grep`. This pass makes the separation structural and the verification mechanical, and closes several documented gaps in routing and selection.

### V1/V2 separation
- Removed the "Deepened by (v2)" section from all 20 v1 template files. This information was already fully captured in `assets/routing.md`'s lookup table — the sections were redundant duplication that also created the coupling. No information was lost.
- Rewrote `tools/index.md` and all 9 `tools/**/*.md` files to be version-agnostic ("template or methodology," "deeper layer, where installed") — they now serve both V1-only and V1+V2 packages unmodified, with zero forking needed.
- Rewrote `references/index.md` to be v1-only; the v1↔v2 domain mapping it used to carry now lives solely in `routing.md`, its canonical home.
- Result: only `SKILL.md`, `assets/templates/base-layer.md`, `assets/routing.md`, and `assets/selection.md` may mention v2 by name — because these four *are* the router. Every other v1-side file is now v2-free at the source, not just after a packaging strip.

### Mechanical verification (new)
- Added `scripts/verify-v1-v2-separation.sh` — scans every `.md` file outside an explicit allowlist for any "v2" token or "templates2" reference; reports `PASS` or `FAIL` with file/line detail. Documented: what it checks, what counts as a violation, how to run it, what pass/fail mean.
- Added `scripts/verify-links.sh` — resolves every relative markdown link in the project against the actual filesystem; reports `PASS` or `FAIL` with the broken link and its source file.
- Running the separation script against the newly-cleaned project caught three genuine leftover v2 mentions that a manual review had missed (`references/index.md`, `tools/index.md`, `tools/pdf/View.md`) — since fixed. This is the exact failure mode Decision 10 exists to prevent going forward.

## Follow-up — closing a real gap in the separation check itself

A second look (prompted by a direct "is this actually done?" check rather than a rubber-stamp) found that the separation script's `v2`/`templates2` token pattern had a real blind spot: when a markdown link to a v2 methodology gets de-hyperlinked, the regex used earlier keeps the visible link *text* and only strips the `href` — so a v2-only methodology name can survive as ordinary prose the token pattern never sees. Found and fixed three instances this let through:
- `tools/presentations/Presentations.md` still named "Financial Statements and Planning" (v2-only) in prose.
- `tools/spreadsheets/Spreadsheets.md` still named "Variance Analysis" (v2-only) in prose.
- `tools/pdf/Fill Form.md` had an unrelated doubled-phrase artifact from an earlier edit ("...once the content is agreed) or a deliverable.").

`scripts/verify-v1-v2-separation.sh` was strengthened to close the actual gap, not just the three instances: it now dynamically diffs `assets/templates2/` file basenames against `assets/templates/` file basenames and flags any v2-only name found as plain text outside the allowlist, in addition to the original token check. Both scripts re-run clean after the fix; both zip packages were rebuilt and redelivered with it included.

### Routing and selection fixes
- Fixed a real inconsistency: `selection.md` referred to "routing.md's Case A / B / C" but `routing.md` never actually defined those labels. Added the Case A/B/C definitions to `routing.md`'s "Decision rule, restated plainly," so the cross-reference is now accurate rather than a dead pointer.
- Added the "When the user names a template" rule (previously undocumented): an explicitly requested template is a strong preference, not an absolute override — a clear mismatch gets a brief, non-argumentative re-route, not silent compliance or a lecture. Wired into `selection.md`, `base-layer.md`, and `moderate-layer.md`.
- Added a unified "full pipeline, end to end" section to `selection.md` tying together the main-problem-first step, `routing.md`'s complexity/version gate, and the 7-level selection hierarchy into one ordered sequence.
- Added one worked example per selection level (1 through 7, plus the wrong-explicit-template case) to `selection.md` — previously only two examples existed, both effectively level-1/2.
- Softened the hardcoded "Finance and Fundraising has exactly four files" claim into an explicitly-labeled current-build description with a pointer to verify against `templates2/index.md`, so it can't silently go stale.
- Added an explicit "Coverage gaps are real, not routing failures" section to `selection.md`, stating plainly that HR and Culture (and most of Legal and Compliance) have no v2 methodology yet, and that this must never be papered over by implying one exists.

### Documentation added
- `DECISIONS.md` (new) — the architectural decision record.
- `TESTS.md` (new) — 8 routing/selection test cases with expected outcomes, traced against the current documentation.
- This `CHANGELOG.md`.

### Explicitly not done (per scope)
- No V3, Multi-Hands, or Multi-Brains work of any kind.
- No template methodology content was rewritten.
- No files were renamed, merged, or deleted (only "Deepened by (v2)" sections and one documentation column were removed, both fully preserved elsewhere).
