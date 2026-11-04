# Release History

Version-by-version history of **Business Advisor**, newest first. Format based on [Keep a Changelog](https://keepachangelog.com); versions follow [Semantic Versioning](https://semver.org). Dates are approximate and taken from file timestamps. [`CHANGELOG.md`](CHANGELOG.md) holds the project's own development log.

## Overview

| Version | Date | Summary |
| :--- | :--- | :--- |
| [3.6.0](#360---2026-10-02---post-freeze-audit-fixes) | 2026-10-02 | Post-freeze audit fixes |
| [3.5.0](#350---2026-10-02---validation-record) | 2026-10-02 | Validation record |
| [3.4.0](#340---2026-09-24---coordination-layer) | 2026-09-24 | Coordination layer |
| [3.3.0](#330---2026-09-24---wiring-and-reachability-fixes) | 2026-09-24 | Wiring and reachability fixes |
| [3.2.0](#320---2026-09-21---integrated-build) | 2026-09-21 | Integrated build |
| [3.1.0](#310---2026-09-21---complex-problem-framework) | 2026-09-21 | Complex-problem framework |
| [3.0.0](#300---2026-09-10-approx---early-v3-draft) | 2026-09-10 (approx.) | Early v3 draft |
| [2.3.0](#230---2026-09-17---separation-script-and-wording-fixes) | 2026-09-17 | Separation script and wording fixes |
| [2.2.0](#220---2026-09-17---stabilization-pass) | 2026-09-17 | Stabilization pass |
| [2.1.0](#210---2026-09-14---structured-second-tier) | 2026-09-14 | Structured second tier |
| [2.0.0](#200---2026-09-approx---first-second-tier-build) | 2026-09 (approx.) | First second-tier build |
| [1.3.0](#130---2026-09-17---wording-fix) | 2026-09-17 | Wording fix |
| [1.2.0](#120---2026-09-17---version-agnostic-tools-and-references) | 2026-09-17 | Version-agnostic tools and references |
| [1.1.0](#110---2026-09-14---base-layer-and-tools) | 2026-09-14 | Base layer and tools |
| [1.0.0](#100---2026-09-approx---first-release) | 2026-09 (approx.) | First release |

---

## [3.6.0] - 2026-10-02 - Post-freeze audit fixes

### Fixed
- `moderate-layer.md`: a stale sentence said the complex-problem layer does not exist; it now states that it exists and points to the third rule in `routing.md`.
- State ownership is now consistent for every route. The single-resource path through Core Advisor determines the resource set, and Stage 3 of the pipeline is the single writer of the Domains and Methodologies fields in all cases (`state-management.md`, `v3-pipeline.md`, `core-advisor.md`).
- `domain-coordination.md` no longer lists a closed set of eight domains. Domain identity is derived from the actual resource folders in the package.

### Added
- DECISIONS.md: decision 18 (Stage 3 is the single state writer) and decision 19 (the Multi-Hands domain universe is structural, not an enumerated list), 19 decisions in total.

---

## [3.5.0] - 2026-10-02 - Validation record

### Added
- CHANGELOG.md, TESTS.md and DECISIONS.md record the three-part validation result: architecture verification (PASS), behavioral output verification (PASS) and internal resource-execution verification (UNVERIFIABLE, because a single model response cannot expose proof that resource selection preceded the answer).
- DECISIONS.md: decision 17, which records the three results as separate, non-collapsible categories (17 decisions in total).
- TESTS.md: a validation status table above the 10 recorded traces.

This release changes the project's records only. No skill instruction, template or methodology changes.

---

## [3.4.0] - 2026-09-24 - Coordination layer

### Changed
- assets/templates3/v3-pipeline.md rewritten: Stage 0 problem understanding, Stage 2 resource coordination (Multi-Hands and Multi-Brains evaluate the candidate resources right after selection, before decomposition), Stage 3 resource lock, and Stage 2a bounded resource re-evaluation.
- Multi-Hands and Multi-Brains now participate at candidate-comparison time, and their "Called by" sections describe the lock and re-evaluation relationship.
- dependency-impact.md and investigation-planning.md are named as the only sources that can trigger a re-evaluation; neither re-selects resources itself.
- state-management.md: the Domains and Methodologies fields are written once at the lock and reopened only through a re-evaluation. Known facts, hypotheses, evidence and decisions are preserved.
- final-consistency-check.md: a new checklist item confirms the final answer is one integrated solution, not fragmented per-domain or per-methodology output.

### Added
- TESTS.md: trace 09 (coordinated resource decision) and trace 10 (coordination integrity and resource re-evaluation), 10 traces in total.
- DECISIONS.md: decision 15 (resource coordination happens once and locks) and decision 16 (re-evaluation is bounded and distinct from escalation), 16 decisions in total.

---

## [3.3.0] - 2026-09-24 - Wiring and reachability fixes

### Fixed
- Reasoning Rules is now consulted at four defined points: hypothesis tagging, decision finalization, verification status recording and the final consistency check.
- Context Management is now consulted at two defined points: the problem-selection pre-handoff filter and the domain-coordination pre-specialist filter.
- The single-methodology path through Core Advisor is now invoked by the pipeline.
- A per-sub-problem routing table in the pipeline decides between Core Advisor, Multi-Brains, Multi-Hands, or Multi-Hands followed by Multi-Brains, driven by how many resource files were selected and how many domain folders they come from.
- The Multi-Hands trigger is mechanical: it activates when two or more sub-problems resolve to resources in different domain folders.
- Quality Control is scoped to three named checkpoints: after decomposition, after hypotheses and evidence, and after action sequencing.
- Four stale sentences in templates/base-layer.md corrected to match routing.md.

---

## [3.2.0] - 2026-09-21 - Integrated build

### Added
- 25 deeper single-problem methodologies in domain folders (Finance and Fundraising, Marketing and Growth, Sales and Business Development, Product Management, Strategy and Governance, Bio-Research, Design, Engineering), with a full index and moderate-layer.md, the operating contract for deep single-problem work.
- tools/: file and document operations for PDF, documents, spreadsheets, presentations, web documents and data files.
- references/index.md, connecting each domain reference to its templates.
- CHANGELOG.md (development log), DECISIONS.md (14 recorded decisions) and TESTS.md (8 routing and selection traces).
- scripts/verify-links.sh and the layer-separation script.

### Changed
- routing.md, selection.md, SKILL.md, templates/base-layer.md and templates/index.md rewritten to integrate the three tiers, including the handoff from single-problem work to the complex-problem framework.

---

## [3.1.0] - 2026-09-21 - Complex-problem framework

### Added
- assets/templates3/ (11 modules): the complex-problem process, from decomposition through the mandatory final consistency check, with v3-pipeline.md as the sequence.
- assets/brains/ (10 modules) and assets/multi-hands/domain-coordination.md: reasoning rules, state and context management, problem selection, decision making, and coordination across domains and methodologies.
- assets/routing.md and assets/selection.md: tier routing and resource selection with search-first lookup.
- assets/templates/base-layer.md, index.md and style.md, plus an index for the second-tier folder.

### Changed
- The 20 templates are Markdown (.md) files with Summary, Inputs, Deliverable, Requirements and Related templates sections.
- SKILL.md rewritten around three tiers: single questions, single-problem diagnosis and complex multi-problem cases.

### Removed
- The 30 specialist methodologies and orchestration.md in the second-tier folder.

---

## [3.0.0] - 2026-09-10 (approx.) - Early v3 draft

### Added
- First v3 draft: 31 methodology files in the second-tier folder, in plugin-style groups (bio-research, design, engineering, finance, learn, marketing, pdf-viewer, product-management, productivity, sales), plus orchestration.md.
- SKILL.md section on specialist methodologies for complex requests.

### Changed
- The 20 templates are plain text (.txt) again.

### Removed
- Not carried into this draft: routing.md, selection.md, the template base layer, index and style files, references/index.md, tools/, scripts/, and the CHANGELOG.md, DECISIONS.md and TESTS.md files.

---

## [2.3.0] - 2026-09-17 - Separation script and wording fixes

### Fixed
- The layer-separation script is stronger: it now compares the deeper methodology names against the template names and flags any name that appears only in the deeper layer when it shows up as plain text outside the allowlist.
- Three leftover mentions removed from tools/presentations/Presentations.md, tools/spreadsheets/Spreadsheets.md and tools/pdf/Fill Form.md.
- CHANGELOG.md (development log) updated with this fix.

---

## [2.2.0] - 2026-09-17 - Stabilization pass

### Added
- CHANGELOG.md (development log), DECISIONS.md (architecture decision record) and TESTS.md (8 routing and selection test cases).
- scripts/verify-links.sh and the layer-separation script.

### Changed
- The two layers are separated structurally: the "Deepened by" section is removed from all 20 templates, and tools/ and references/index.md are made version-agnostic.
- selection.md: Case A/B/C defined, a "when the user names a template" rule, an end-to-end pipeline section, a worked example for each selection level, and an explicit note that HR and most Legal methodologies do not exist yet.
- routing.md, base-layer.md and moderate-layer.md updated to match.

---

## [2.1.0] - 2026-09-14 - Structured second tier

### Added
- `assets/routing.md`, `assets/selection.md`, plus an index and `moderate-layer.md` in the second-tier folder.
- Second-tier methodologies in domain folders, including four new ones: cash flow crisis diagnosis, stalled growth diagnosis, draft-first strategy validation and strategic drift diagnosis.
- The template base layer, index and style files, `references/index.md` and `tools/` return.

### Changed
- The 20 templates are Markdown (`.md`) again.
- The plugin-style `assets/template2/` layout is replaced by a second-tier folder organized by domain.

### Removed
- `assets/template2/orchestration.md` and the `learn` and `brainstorm` groups.

---

## [2.0.0] - 2026-09 (approx.) - First second-tier build

### Added
- Specialist methodologies under `assets/template2/`: 29 files in plugin-style groups (bio-research, design, engineering, finance, learn, marketing, pdf-viewer, product-management, sales) plus `orchestration.md`, which describes the flow from request to specialist to assembled result.
- `SKILL.md` updated with a section on specialist methodologies for complex requests.

### Changed
- The 20 templates are plain text (`.txt`) again.

### Removed
- Not carried into this build: the template base layer, index and style files, `references/index.md`, `tools/` and `scripts/`.

---

## [1.3.0] - 2026-09-17 - Wording fix

### Fixed
- Three one-line corrections in `tools/pdf/Fill Form.md`, `tools/presentations/Presentations.md` and `tools/spreadsheets/Spreadsheets.md`.

---

## [1.2.0] - 2026-09-17 - Version-agnostic tools and references

### Added
- `scripts/verify-links.sh` to check that relative Markdown links resolve.

### Changed
- 12 files in `tools/` and `references/index.md` reworded so they work with this version alone or with a deeper layer installed.

---

## [1.1.0] - 2026-09-14 - Base layer and tools

### Added
- `assets/templates/base-layer.md` (operating contract), `index.md` (template map) and `style.md` (tone and formatting).
- `references/index.md` and `tools/` (PDF annotate, fill form, open and view; documents; presentations; spreadsheets; data files; web documents) with an index.

### Changed
- All 20 templates converted from `.txt` to `.md`.
- `SKILL.md` updated to point to the new layers.

---

## [1.0.0] - 2026-09 (approx.) - First release

### Added
- `SKILL.md` business advisor covering eight domains and four business types.
- Nine reference files (eight domains plus business types) and 20 fill-in templates in eight domain folders.
- MIT `LICENSE`.
