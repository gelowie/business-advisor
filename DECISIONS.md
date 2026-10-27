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
