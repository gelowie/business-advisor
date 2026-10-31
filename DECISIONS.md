# Architectural Decisions

Durable decisions about how V1 and V2 relate. Add to this file when a new decision is made; don't delete superseded ones — mark them superseded and say why.

### Decision 1 — V1 must remain independently usable
`assets/templates/`, `references/`, and `tools/` must be fully answerable with `assets/templates2/` deleted entirely. Enforced mechanically by `scripts/verify-v1-v2-separation.sh`.

### Decision 2 — V2 may reuse V1; V1 must never depend on V2
The dependency direction only ever runs one way: `v2 → v1` is allowed and encouraged (`selection.md`'s "V2 using V1 resources"); `v1 → v2` is prohibited. A v1 template may never name, link to, or assume the existence of a v2 methodology.

### Decision 3 — Cross-version relationships live in `routing.md` and `selection.md`, never inside a v1 template
Individual v1 template files describe only v1 functionality. The full v1↔v2 map is `routing.md`'s lookup table; the two exceptions permitted to discuss v2 by name are `SKILL.md` and `assets/templates/base-layer.md`, because they *are* the router — deciding whether v2 should take a request is their job, not a leak. Every other v1-side file (the 20 templates, `references/`, `tools/`) stays version-agnostic.

### Decision 4 — Complexity and version are decided before any specific resource is selected
`routing.md` settles *who* answers (v1, v2, or v2+v1) before `selection.md` decides *what specific file(s)* that owner uses. Never pick a version because it exists or sounds more sophisticated; never pick a resource before the version question is settled.

### Decision 5 — The actual problem outranks an explicitly named but mismatched template
If a user names a template that doesn't fit their stated problem, the mismatch is corrected — briefly, non-argumentatively, without silently ignoring what they asked for either. See `selection.md`'s "When the user names a template."

### Decision 6 — No meaningful match means normal reasoning, never a forced template
Absence of a matching resource is never grounds to force an unrelated one through, and never grounds to say the request can't be handled. See `selection.md` level 6.

### Decision 7 — Multi-file and multi-folder coordination is allowed only when genuinely necessary
Minimal-but-sufficient is the standard: use the smallest resource set that actually solves the problem, but don't cap it artificially if the problem genuinely needs more. Never "load everything" as a fallback strategy.

### Decision 8 — Every resource used must serve one identified main problem
When more than one file or folder is used, the result is one synthesized answer around the user's actual objective — never a stitched-together list of separate per-domain answers. See `selection.md`'s "One problem, one answer."

### Decision 9 — V3 introduces coordination; it is not pulled early into V1/V2
Multi-problem coordination (several interacting issues, not depth on one) is explicitly out of scope for both v1 and v2 today. When a request is genuinely that shape, the correct behavior is to say so plainly and do what can honestly be done — not to manufacture a coordination process that doesn't exist. This boundary is what V3 (Multi-Hands / Multi-Brains) is for.

### Decision 10 — V1/V2 separation is mechanically verified, not asserted
Manually grepping for "v2" and asserting the result is correct has already produced a wrong answer once in this project's history — a review pass declared V1 "fully self-contained" while 20 template files still carried live "Deepened by (v2)" sections. `scripts/verify-v1-v2-separation.sh` exists so this claim is checked the same way every time, not re-derived from memory. Run it after any edit to a v1-side file, and before packaging V1 for delivery.

### Decision 11 — `tools/` and `references/` are version-agnostic by construction, not by packaging step
Earlier, producing a clean V1 package required stripping v2-specific mentions out of `tools/*.md` and `references/index.md` by hand at packaging time. Those files have since been rewritten to never name v1 or v2 specifically in the first place (generic "template or methodology," "deeper layer, where installed" language) — the same files now serve both packages unmodified. This removes a whole category of packaging-time work and the drift risk that came with redoing it by hand each time.

### Decision 12 — A token-only separation check isn't sufficient; check for methodology names too
Checking only for the literal strings "v2" and "templates2" missed a real leak: a v2-only methodology's *name* can survive as plain prose after a link to it is de-hyperlinked, with no "v2" token anywhere nearby. `scripts/verify-v1-v2-separation.sh` now also dynamically diffs v2-only file basenames against v1's and flags any found in plain text outside the allowlist. The lesson generalizes: a mechanical check is only as good as its pattern, and the pattern itself needs revisiting when a new way of leaking content is found — not just the instances it happened to catch.

### Decision 13 — V3 realizes Decision 9; consultation runs one direction only
Decision 9 anticipated V3 as the destination for multi-problem coordination without building it. V3 is now built (`assets/templates3/`, `assets/brains/`, `assets/multi-hands/`) as a layer that CONTAINS v1 and v2 as consultable resources rather than treating them as fully external — but the dependency direction from Decision 2 (`v2 → v1` allowed, `v1 → v2` prohibited) extends unchanged: `v3 → v2 → v1` is allowed; neither v1 nor v2 ever calls into v3. No file under `assets/templates/` or `assets/templates2/` names `templates3/`, `brains/`, or `multi-hands/` — that absence is the enforcement, not a runtime check. This also means no cycle-detection logic is needed anywhere in the routing/selection/pipeline chain: the arrow never reverses.

### Decision 14 — Multi-Brains and Multi-Hands are existing-responsibility homes, not new generic files
Multi-Brains was not built as a new standalone file; it IS `assets/brains/brain-coordination.md`, sitting on top of the other 9 brains/ files (each keeping its own distinct responsibility — core-advisor, brainstorm, decision-making, problem-selection, reasoning-rules, context-management, state-management, conflict-resolution, quality-control) rather than duplicating them. Multi-Hands is `assets/multi-hands/domain-coordination.md`, kept structurally separate: Multi-Hands decides WHICH domains participate, Multi-Brains decides HOW differing methodologies are reconciled once they have. They cooperate but are never interchangeable, and neither absorbs the other's job even when both are invoked on the same problem.
