# Changelog

## V3 integration — Multi-Brains, Multi-Hands, and the v1/v2 → v3 handoff

Context: V1 and V2 were stabilized and V3-ready per the prior pass, but V3 itself did not physically exist — `moderate-layer.md` stated "there is no v3 in this build to hand off to." This pass builds V3's core architecture inside the same package (`assets/templates3/`, `assets/brains/`, `assets/multi-hands/`) and wires the actual handoff, without touching v1/v2 methodology content.

### V3 core added
- `assets/templates3/` — 11 files: `v3-pipeline.md` (orchestration/sequencing only, no methodology of its own) plus `decomposition.md`, `hypothesis-evidence.md`, `investigation-planning.md` (kept separate from hypothesis-evidence: what we believe vs. what we still need to find out), `dependency-impact.md`, `tradeoff-comparison.md`, `action-sequencing.md`, `verification-loop.md`, `contingency-planning.md` (reuses `references/strategy-governance.md`'s risk content rather than duplicating it), `escalation-conditions.md`, `final-consistency-check.md`.
- `assets/brains/` — 10 files, all originally-scoped responsibilities preserved and kept distinct: `core-advisor.md`, `brainstorm.md`, `decision-making.md`, `problem-selection.md`, `reasoning-rules.md`, `context-management.md`, `state-management.md`, `conflict-resolution.md`, `quality-control.md`, `brain-coordination.md`. `brain-coordination.md` **is** Multi-Brains — implemented as this existing responsibility, not a separate duplicate file.
- `assets/multi-hands/domain-coordination.md` — Multi-Hands. Explicitly distinct from Multi-Brains: Multi-Hands decides which domains participate, Multi-Brains reconciles differing methodologies once they have.

### Handoff wired (not rebuilt)
- `SKILL.md` — added a "v3" section paralleling the existing v1/v2 sections, pointing to `v3-pipeline.md` rather than restating its methodology.
- `assets/templates2/moderate-layer.md` — updated three passages that stated v3 didn't exist ("no v3 in this build," "Boundary with a future v3 (documented, not built)," "don't invent a coordination process this build doesn't have") to state the actual handoff now that v3 exists. No other content in this file touched.
- `assets/routing.md` — added "The third rule: when neither v1 nor v2 can own it alone," defining v3's entry condition as downstream of v1/v2's own negotiation, not a shortcut around it. Confirms the consultation direction is v3 → v2 → v1 only, never reversed.
- `assets/selection.md` — level 7 ("Beyond the complexity boundary") now names `templates3/v3-pipeline.md` as the actual handoff target instead of stopping at "this isn't a selection failure."
- `scripts/verify-v1-v2-separation.sh` — allowlist extended to include `assets/templates3/**`, `assets/brains/**`, `assets/multi-hands/**`, since these legitimately consult v1/v2 by design (the same reason `routing.md`/`selection.md` are allowlisted) and would otherwise false-flag as leaks. Both verification scripts re-run clean (PASS) after all edits.

### Explicitly not done in this pass
- No new test cases added to `TESTS.md` for v3 behavior — the 8 required V3 validation cases from the build plan (including the engineering root-cause scenario) are not yet run against this integration.
- No per-domain specialist files inside `assets/multi-hands/` beyond the single coordination file.
- No acceptance-criteria testing (AC-01 through AC-22) performed against this build.

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
