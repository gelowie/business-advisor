# Release history

Version-by-version history of Business Advisor, newest first. Format based on Keep a Changelog; versions follow Semantic Versioning.
Dates are approximate and taken from file timestamps. The file CHANGELOG.md holds the project's own development log.

## [2.2.0] - 2026-09-17 - Stabilization pass

### Added
- CHANGELOG.md (development log), DECISIONS.md (architecture decision record) and TESTS.md (8 routing and selection test cases).
- scripts/verify-links.sh and scripts/verify-v1-v2-separation.sh.

### Changed
- The two layers are separated structurally: the "Deepened by (v2)" section is removed from all 20 templates, and tools/ and references/index.md are made version-agnostic.
- selection.md: Case A/B/C defined, a "when the user names a template" rule, an end-to-end pipeline section, a worked example for each selection level, and an explicit note that HR and most Legal methodologies do not exist yet.
- routing.md, base-layer.md and moderate-layer.md updated to match.

## [2.1.0] - 2026-09-14 - Structured v2 layer

### Added
- `assets/routing.md`, `assets/selection.md`, `assets/templates2/index.md` and `assets/templates2/moderate-layer.md`.
- v2 methodologies in domain folders under `assets/templates2/`, including four new ones: Cash Flow Crisis Diagnosis, Stalled Growth Diagnosis, Draft-First Strategy Validation and Strategic Drift Diagnosis.
- The template base layer, index and style files, `references/index.md` and `tools/` return.

### Changed
- The 20 templates are Markdown (`.md`) again.
- The plugin-style `assets/template2/` layout is replaced by `assets/templates2/`, organized by domain.

### Removed
- `assets/template2/orchestration.md` and the `learn` and `brainstorm` groups.

## [2.0.0] - 2026-09 (approx.) - First v2 build

### Added
- Specialist methodologies under `assets/template2/`: 29 files in plugin-style groups (bio-research, design, engineering, finance, learn, marketing, pdf-viewer, product-management, sales) plus `orchestration.md`, which describes the flow from request to specialist to assembled result.
- `SKILL.md` updated with a section on specialist methodologies for complex requests.

### Changed
- The 20 templates are plain text (`.txt`) again.

### Removed
- Not carried into this build: the template base layer, index and style files, `references/index.md`, `tools/` and `scripts/`.

## [1.3.0] - 2026-09-17 - Wording fix

### Fixed
- Three one-line corrections in `tools/pdf/Fill Form.md`, `tools/presentations/Presentations.md` and `tools/spreadsheets/Spreadsheets.md`.

## [1.2.0] - 2026-09-17 - Version-agnostic tools and references

### Added
- `scripts/verify-links.sh` to check that relative Markdown links resolve.

### Changed
- 12 files in `tools/` and `references/index.md` reworded so they work with this version alone or with a deeper layer installed.

## [1.1.0] - 2026-09-14 - Base layer and tools

### Added
- `assets/templates/base-layer.md` (operating contract), `index.md` (template map) and `style.md` (tone and formatting).
- `references/index.md` and `tools/` (PDF annotate, fill form, open and view; documents; presentations; spreadsheets; data files; web documents) with an index.

### Changed
- All 20 templates converted from `.txt` to `.md`.
- `SKILL.md` updated to point to the new layers.

## [1.0.0] - 2026-09 (approx.) - First release

### Added
- `SKILL.md` business advisor covering eight domains and four business types.
- Nine reference files (eight domains plus business types) and 20 fill-in templates in eight domain folders.
- MIT `LICENSE`.
