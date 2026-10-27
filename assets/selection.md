# Automatic Resource Selection — how templates and files get chosen without being named

This is the shared reference for how both v1 (`templates/`) and v2 (`templates2/`) automatically identify which existing resource(s) actually apply to a request, without the user naming a template, file, or version. Neither layer owns this file; both defer to it for **selection** — which specific resource(s) answer the request — the same way both defer to `routing.md` for **ownership**: which layer leads. `routing.md` decides *who* answers; this file decides *what they use to answer*.

## The full pipeline, end to end

Selection never runs in isolation — it's the back half of one continuous decision that starts in `routing.md`. In order:

1. **Identify the main problem.** Before anything else, name the single objective the request actually serves — every later step stays anchored to this, per "One problem, one answer" below.
2. **Complexity gate + version selection** (`routing.md`) — is this basic, or does it need multiple solutions with deep analysis? Does the topic even exist on both sides, or only one? This decides v1, v2, or v2+v1 as the *owner*. Never pick a version just because it exists or because it sounds more sophisticated (routing.md's own rule).
3. **Exact match** — level 1 below.
4. **Strong related match** — level 2.
5. **Multi-file match** — level 3.
6. **Multi-folder match** — level 4.
7. **V1 + V2 combination** — level 5 (v2 only).
8. **General reasoning fallback** — level 6, when nothing meaningfully matches.
9. **Higher-layer escalation** — level 7, when the request is beyond what v1/v2 coordinate at all.

An explicitly named template (the user says "use the Pricing Strategy Builder") is handled *before* step 3, not as its own hierarchy level — see "When the user names a template" below.

## The governing principle

Selection follows what the problem actually needs solved, not the words used to describe it. A request never has to name a domain, template, or file for the right one to be found — and a request that happens to use a domain's vocabulary loosely doesn't automatically belong to that domain either. Read for meaning: what is actually being asked to be diagnosed, decided, or produced.

Two requests that would resolve to different resources despite the surface wording:
- *"Our sales are increasing every month, but we have less money available to pay our suppliers."* — never says "cash flow," but is one, and is a *why*, not a projection: `templates2/Finance and Fundraising/Cash Flow Crisis Diagnosis.md`, not v1's Cash Flow Forecast.
- *"People buy from us once but rarely come back."* — could be retention, product, pricing, or customer experience depending on what's actually driving it. Don't default to Marketing just because it sounds like a marketing sentence; find out what's actually driving the drop-off before picking a resource.

Keyword overlap is a weak signal at best, never the deciding one — a request can use a domain's vocabulary without belonging to it, and can belong to a domain without using its vocabulary at all.

Priority order when these ever pull in different directions: **problem relevance > correct version > methodology relevance > file relevance > cross-domain usefulness > convenience.** Never select a resource because its filename contains a keyword, because it's the first or newest file in a folder, or because it's simply available — select it because it contributes to solving the actual problem.

## When the user names a template

A user can name a template directly ("use the Pricing Strategy Builder," "run this through Cash Flow Forecast"). Treat the name as a strong preference, not an absolute override:

1. Identify what they asked for.
2. Compare it against what the problem actually is.
3. If it's a genuine match (or a defensible one), use it — a named request that fits doesn't need second-guessing.
4. If it's clearly mismatched — the stated problem and the named template solve different things — don't force it. Re-route to the resource the problem actually calls for, and say so briefly and non-argumentatively: name the mismatch in one sentence, then proceed with the better fit. Don't lecture, don't ask permission first, don't silently swap it without a word either.

Example: *"Use the Pricing Strategy Builder — my company is actually running out of cash."* → the pricing template doesn't address a cash shortfall; say something like "the pricing template isn't the strongest fit for a cash-flow issue, so I'll approach this as cash flow instead," then proceed with the Finance resources that actually fit.

## Selection hierarchy

Work down this list; stop at the first level that genuinely resolves the request. Never skip ahead to "load everything" — at whichever level resolves it, use only the resources that materially contribute. Prefer the smallest resource set that's actually sufficient (two genuinely relevant files beat fifteen loosely relevant ones) — but if a problem genuinely needs fifteen, use fifteen; minimal is a byproduct of relevance, never a cap enforced for its own sake.

1. **Exact match.** An existing template's `## Summary` (v1) or methodology file's stated problem type (v2, see each file's opening description) directly matches what's being asked. Use it.
2. **Strong related match.** No exact topic exists, but an existing template or methodology clearly supplies the needed capability (e.g. no template is literally named "fundraising strategy," but Pitch Deck Outline plus the Finance reference framework covers it). Use it.
3. **Multi-file match.** One file inside a domain folder isn't enough on its own; more than one file in the *same* folder is genuinely needed. See "Selecting files inside a multi-file domain" below.
4. **Multi-folder match.** The problem draws on more than one domain (e.g. Finance and Operations) but is still one problem being worked through together, not several being coordinated separately. Use the relevant files from each folder, synthesized into one answer — see "One problem, one answer" below.
5. **V1 + V2 combination (v2 only).** See "V2 using V1 resources" below.
6. **No meaningful resource match.** Nothing in either library genuinely applies. Reason through it directly, the way each layer already does for unmatched requests. Absence of a matching resource is never a reason to force an unrelated one onto the request, and never a reason to say the request can't be handled.
7. **Beyond the complexity boundary.** The request is actually several interacting problems needing coordination, not depth on one. This isn't a selection failure to fix by combining more resources — follow `base-layer.md`'s "When this layer isn't enough" or `moderate-layer.md`'s "Recognizing a genuine limit" instead of forcing levels 1–5 to cover it.

## Selecting files inside a multi-file domain

Some domain folders group more than one resource under a single domain heading — as of this build, `templates2/Finance and Fundraising/` is the clearest example, with four distinct methodology files. (This is a description of the current build, not a fixed number — check `templates2/index.md` for the actual current file list in any domain rather than assuming a count.) A domain match is not a file match: after identifying the domain, still determine which specific file(s) inside it the problem actually calls for.

- Judge each candidate by its own stated purpose (its opening description, or the one-line summary in `templates2/index.md` / `templates/index.md`) rather than by filename alone.
- Select every file that materially contributes — not one by default, and not all of them reflexively. A late-payment cash crunch calls for a different file (or combination) than a request for full projected statements or a variance explanation.
- When more than one file is genuinely needed, let them inform each other — a number or conclusion reached via one should carry into the next rather than be re-derived, the same carry-forward principle `base-layer.md`'s "Combining related templates" already applies within v1.

## V2 using V1 resources

v2 is not confined to `templates2/`. `moderate-layer.md`'s "Connection to v1 templates" already covers using a v1 template as the *shape of the final deliverable*; the same judgment extends to using a v1 template's framework *during* the diagnosis itself, as supporting structure, not only as the closing document. This is judgment applied per request, not a default:

- **v2 alone** — its own methodology fully covers the problem; no v1 template adds anything (routing.md's Case A).
- **v2 + a v1 template** — the v1 resource genuinely improves the answer, either mid-reasoning or as the final deliverable's shape (routing.md's Case B).
- **v1 alone** — the problem is simple enough that invoking v2's depth at all would be forcing depth the request doesn't need (routing.md's Case C; see also `moderate-layer.md`'s "No forced depth").

Never use a v1 template and a v2 methodology to redo the same work twice — each is used only for the specific capability it supplies that the other doesn't.

The dependency direction only ever runs one way: **v2 may use v1; v1 never depends on v2.** v1 must stay fully answerable with `templates2/` absent entirely — that's why the relationship data lives here and in `routing.md`, never inside a v1 template's own content (see `routing.md`'s note on this).

## Coverage gaps are real, not routing failures

Not every domain has a v2 methodology yet — as of this build, HR and Culture has none, and Legal and Compliance has one narrow connection (SOW Builder ↔ Pipeline Review) but no dedicated methodology otherwise. This is `routing.md`'s "topic coverage overrides complexity" rule in practice: when only v1 covers a topic, v1 answers it regardless of how deep the question feels, up to the point where real diagnostic depth surfaces — at which point it's flagged per `base-layer.md`'s "When this layer isn't enough," not silently forced through a v2 methodology that doesn't exist. Never invent or imply a v2 methodology file that isn't actually in `templates2/`.

## One problem, one answer

When resources from more than one file or folder are used together, the output stays one coherent answer organized around the user's actual main objective — never a sequence of separate domain answers stitched together (a "Finance says X, Operations says Y, Marketing says Z" list). Identify the single objective the request actually serves, and let every resource used feed that objective. If the problem genuinely can't be synthesized into one coherent answer because it's actually several separate problems, that's the signal for level 7 above, not a reason to present a list of disconnected findings.

## Keeping selection invisible

Which resource(s) were used stays internal by default — answer the way a consultant would, without narrating "I selected the X template" or "I used file Y." Only explain the selection process if the user directly asks how the answer was put together. This is the same rule `style.md` states for tone generally — selection follows it, not a separate standard.

## Worked examples, one per level

- **Level 1 — exact match:** *"I need an NDA for a contractor."* → `templates/Legal and Compliance/NDA Builder.md`, directly.
- **Level 2 — strong related match:** *"How do I plan what to charge for my new service?"* — no template is literally titled this, but `templates/Finance and Fundraising/Pricing Strategy Builder.md` covers it. Use it.
- **Level 3 — multi-file match:** *"Our invoices are getting paid later and later, and I need to know why and what it's doing to our numbers."* — needs both `Cash Flow Crisis Diagnosis.md` (the why) and `Financial Statements and Planning.md` (the numbers) from the same v2 domain folder, used together.
- **Level 4 — multi-folder match:** *"My restaurant has good sales but keeps losing money."* — genuinely spans Finance (margins), Operations (staffing/waste), and only Marketing/Pricing if the diagnosis actually points there — synthesized into one profitability answer, not three separate write-ups.
- **Level 5 — V1 + V2 combination:** a cash-flow crisis diagnosis (v2) that concludes with a recommended plan, delivered *as* a filled-in Cash Flow Forecast (v1) — the v1 template supplies the shape, v2 supplied the diagnosis.
- **Level 6 — no meaningful match:** *"What's a normal profit margin for a coffee shop?"* — a factual question with no document to fill and no diagnosis to run. Answer directly; no template forced.
- **Level 7 — beyond the complexity boundary:** the Urban Bowl restaurant case (segmentation + product-mix pricing + staffing + inventory + a one-time investment decision, all interacting) — state plainly this needs multi-problem coordination neither v1 nor v2 does, per `base-layer.md`/`moderate-layer.md`.
- **Explicitly named, wrong template:** *"Use the Pricing Strategy Builder — my company is actually running out of cash."* → acknowledge the mismatch in one sentence, then answer as a cash-flow problem with the Finance resources that actually fit.
