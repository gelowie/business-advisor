# Changelog

## Final consistency cleanup — documentation wording only, no behavior changes

Context: a second external audit of the post-freeze package found remaining wording that implied Multi-Hands/Multi-Brains write shared state directly, or that blurred what `templates3/` is. All confirmed real by grep before editing. No architecture changed; this applies Decision 18 (Stage 3 is the single state writer; coordinators only determine) and Decision 19 consistently across the active source.

### Fixed
- `assets/multi-hands/domain-coordination.md` — "integrating them into the shared V3 state (via state-management.md's Domains field)" and the example flow's "integrates findings into state" both implied Multi-Hands writes state. Now: Multi-Hands determines the Domains value and reports it to `v3-pipeline.md`; Stage 3 commits it.
- `assets/multi-hands/domain-coordination.md` — the file said domain resources could come from `templates/`, `templates2/`, or `templates3/`. `templates3/` is the V3 reasoning/process layer, not a domain-methodology repository. Multi-Hands now draws domain resources from `templates2/` and `templates/` only; `templates3/` stays in the overall resource ecosystem, applied by the pipeline.
- `assets/brains/brain-coordination.md` — "Return a single integrated reasoning result to v3-pipeline.md / state-management.md" could be read as Multi-Brains writing state. Now: it returns the result to `v3-pipeline.md` only; the pipeline determines how it is committed (Stage 3, single writer); Multi-Brains does not write to `state-management.md` directly. Multi-Brains' responsibility (methodology coordination and reconciliation) is unchanged.
- `DECISIONS.md` Decision 17 and the "V3 validated and frozen" entry below — "permanently unverifiable" / "permanent" corrected to "unverifiable within the current single-model-response environment." External instrumentation could theoretically add evidence later; the architecture is still not to be expanded to manufacture observability.

### Verified
Internal Link Check PASS, V1/V2 Separation Check PASS, stale-contradiction scan clean, and a state-ownership scan of all active source finds no statement implying Multi-Hands or Multi-Brains write shared state directly — every mention is either "does not write," "Stage 3 commits," or a read-only context slice.

V3 remains validated and frozen; reopening requires a real behavioral defect from actual use.

## Post-freeze audit — three real issues found and fixed in the frozen package

Context: an external audit of the delivered `business-advisor-v3-validated-frozen.zip` found three genuine issues the prior validation rounds missed. All three confirmed real by direct file inspection before any edit (per this project's standing "audit before implementing" principle) and fixed without new files or architecture changes.

### Fixed
- `assets/templates2/moderate-layer.md` — the file's own version note (line 5) still said "that's a future v3, which does not exist in this build" — a fourth stale contradiction distinct from the three fixed in an earlier pass, missed because it's prose text rather than a dedicated boundary section. Updated to state v3 exists and point to `routing.md`'s "third rule." Full active-source re-scan confirms no remaining stale phrases anywhere outside CHANGELOG/DECISIONS/TESTS (where historical mentions are correctly left alone).
- `assets/brains/state-management.md` + `assets/templates3/v3-pipeline.md` + `assets/brains/core-advisor.md` — the Domains/Methodologies ownership rule named only `domain-coordination.md`/`brain-coordination.md` as writers, but the routing table's single-resource/single-domain path correctly bypasses both of them via `core-advisor.md` — leaving that path with no documented way to populate shared state at all. Fixed by separating DETERMINATION (core-advisor.md for the trivial case, Multi-Hands/Multi-Brains for the coordinated cases) from COMMITMENT (always Stage 3, a single writer in all cases). No second state writer was created; core-advisor.md does not get its own state copy.
- `assets/multi-hands/domain-coordination.md` — the file described its domain universe as a closed 8-name list (Strategy, Finance, Product, Marketing, Sales, Operations, HR, Legal), inconsistent with Engineering already being used as a Multi-Hands domain in this project's own test traces, and with `templates2/` genuinely containing Bio-Research, Design, and Engineering folders. Redefined domain identity as derived from the package's actual resource folder structure rather than a fixed list — the mechanical trigger logic itself already worked this way (it checks folder paths, not names), so this was a documentation/description fix, not a behavior change.

Both verification scripts re-run and PASS. Full 10-case V3 behavioral regression re-traced against the fixes; all 10 confirmed PASS with no role bleed between Multi-Hands/Multi-Brains/core-advisor introduced by the state-ownership clarification.

## V3 validated and frozen — final three-part validation result

Context: following the coordination-layer changes (next entry below), V3 went through three independent rounds of validation, each testing something the others couldn't: a mechanical file-reference trace, a live behavioral test generating real answers to real prompts, and a final internal-execution check specifically probing whether resource selection is genuinely problem-driven rather than decided-then-rationalized.

### Final result (recorded, not re-derived — see TESTS.md for the full live/execution traces)
- **Architecture Verification: PASS** — file-reference trace (10/10 structural tests): no orphaned files, no cross-file contradictions, both `verify-v1-v2-separation.sh` and `verify-links.sh` pass, every component reachable through the actual pipeline sequence.
- **Behavioral Output Verification: PASS** — live-generated-answer trace (10/10 behavioral tests): real prompts, no pre-told resource/brain, correct V1/V2/V3 tier boundary held in every case, Multi-Hands/Multi-Brains activated only on genuine triggers and never on the other's job, hypothesis/evidence discipline held under direct user pressure (Test 7), a real methodology conflict was reconciled rather than silently resolved (Test 9), resource re-evaluation correctly added a domain mid-case while preserving prior state (Test 8), no answer fragmented into per-domain/per-brain sections.
- **Internal Resource-Execution Verification: UNVERIFIABLE** — stated as a structural observability limit, not a defect: a single model response cannot expose a hidden causal trace proving resource selection happened *before*, and independently of, the answer it accompanies, because both are produced by the same generation process. What was confirmed instead, across 7 cases: internal consistency between a declared resource search and the subsequent answer, including multiple genuine within-folder candidate rejections and one confirmed real structural fact (no `templates2/Operations and Supply Chain/` folder exists) correctly triggering fallthrough to the V1 equivalent. This is real evidence of consistency; it is explicitly not claimed as proof of causal execution order. This category is not to be forced to PASS, and no file was added or changed to try to make it disappear.

### Status: VALIDATED AND FROZEN
Per explicit instruction, the V3 architecture and coordination system (this entry and the "V3 coordination layer" entry below) are now treated as the validated baseline. No further architectural changes are planned absent a real-world test exposing an actual behavioral defect — not absent further scrutiny of the observability limitation above, which is a limit of the current single-model-response environment (external instrumentation could theoretically add evidence later) and not a defect to fix. Future work is directed at using and testing V3 against new real problems, not rebuilding it without evidence of a fault.

## V3 coordination layer — resource decisions become genuinely coordinated, not sequential

Context: the fixed V3 build (previous entry) passed its full authorized test, but a follow-up review found the components behaved as independently-triggered files rather than a coordinated advisory system — Multi-Hands/Multi-Brains only reacted after Decomposition had already run, nothing prevented resource churn mid-analysis, and there was no controlled way to update the resource set when new evidence warranted it without a full restart.

### Changed (no new files)
- `assets/templates3/v3-pipeline.md` — rewritten to add: Stage 0 (Problem Understanding, preceding Routing), Stage 2 (Resource Coordination — Multi-Hands/Multi-Brains now evaluate CANDIDATE resources right after Selection, before Decomposition, instead of reacting after sub-problems already exist), Stage 3 (Lock — the resource set is written to state and treated as settled), Stage 2a (bounded Resource Re-evaluation — the only sanctioned way the locked set changes, preserving all prior Hypotheses/Evidence/Decisions per `state-management.md`'s preservation rule, explicitly distinct from `escalation-conditions.md` and from verification's reassessment loop). Added an explicit "one coherent answer" output principle extending `selection.md`'s existing v1/v2 rule of the same name into V3.
- `assets/multi-hands/domain-coordination.md` and `assets/brains/brain-coordination.md` — "Called by" sections updated to reflect the earlier (Stage 2) participation point and the lock/re-evaluation relationship, without changing either file's core responsibility.
- `assets/templates3/dependency-impact.md` and `assets/templates3/investigation-planning.md` — each now explicitly named as a Stage 2a trigger source (they flag insufficiency back to `v3-pipeline.md`; neither re-selects resources itself).
- `assets/brains/state-management.md` — Domains/Methodologies field ownership rules updated to state they're written once at Stage 3 and only reopened via Stage 2a, never edited informally mid-reasoning.
- `assets/templates3/final-consistency-check.md` — added an explicit checklist item verifying the final answer is one integrated solution, not fragmented per-domain/per-brain output.
- `TESTS.md` — added TEST 09 (Coordinated Resource Decision) and TEST 10 (Coordination Integrity / Resource Re-evaluation), both traced against the rewritten pipeline.

Both verification scripts re-run and PASS. All four previously-fixed findings (reasoning-rules.md, context-management.md, core-advisor.md, quality-control.md reachability) re-confirmed intact — none were touched by this change.

## V3 fixes — wiring, contradiction, and reachability corrections

Context: a full authorized test of the integrated V3 build found five real issues by mechanically tracing file cross-references rather than assuming reachability: `reasoning-rules.md` and `context-management.md` were completely unreferenced by any other file; `quality-control.md` was only reachable via `final-consistency-check.md`, not the per-stage checks it described; `core-advisor.md`'s single-methodology path was never actually invoked by `v3-pipeline.md`; Multi-Hands' activation trigger was judgment-based, not reproducible; and `base-layer.md` contained stale sentences claiming v3 doesn't exist, contradicting `routing.md`.

### Fixed (no new files, no architecture redesign)
- `assets/templates/base-layer.md` — corrected 4 stale sentences (version note, two "reaches beyond" passages, and the "no other layer to hand off to" line) to match `routing.md`'s reality that v3 exists.
- `assets/brains/reasoning-rules.md` — wired into 4 real consultation points: `hypothesis-evidence.md`'s tagging step, `decision-making.md`'s finalization step, `verification-loop.md`'s status recording, `final-consistency-check.md`'s checklist. Each host file now names it explicitly, and the file states what it does not duplicate (quality-control.md, state-management.md).
- `assets/brains/context-management.md` — wired into 2 real points: `problem-selection.md`'s pre-handoff filter, `multi-hands/domain-coordination.md`'s pre-specialist filter. States what it does not duplicate (state-management.md).
- `assets/multi-hands/domain-coordination.md` — trigger made mechanical: activates only when 2+ sub-problems resolve to resources under different domain folders, per `selection.md`'s own matching — not informal judgment.
- `assets/templates3/v3-pipeline.md` — added an explicit per-sub-problem routing table so `core-advisor.md` (single resource/one domain) and `brain-coordination.md` (multi-resource/one domain) triggers are mechanical, tied to `selection.md`'s actual match count and domain folder.
- `assets/brains/quality-control.md` — scoped to exactly 3 named checkpoints (after decomposition, after hypothesis-evidence, after action-sequencing), matching what actually calls it, avoiding exhaustive per-stage overhead.
- `scripts/verify-v1-v2-separation.sh` allowlist and both verification scripts re-run and confirmed PASS after every edit round.

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
