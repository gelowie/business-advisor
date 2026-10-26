# Automatic Resource Selection — how templates and files get chosen without being named

This is the shared reference for how both v1 (`templates/`) and v2 (`templates2/`) automatically identify which existing resource(s) actually apply to a request, without the user naming a template, file, or version. Neither layer owns this file; both defer to it for **selection** — which specific resource(s) answer the request — the same way both defer to `routing.md` for **ownership**: which layer leads. Routing.md decides *who* answers; this file decides *what they use to answer*.

## The governing principle

Selection follows what the problem actually needs solved, not the words used to describe it. A request never has to name a domain, template, or file for the right one to be found — and a request that happens to use a domain's vocabulary loosely doesn't automatically belong to that domain either. Read for meaning: what is actually being asked to be diagnosed, decided, or produced.

Two requests that would resolve to different resources despite the surface wording:
- *"Our sales are increasing every month, but we have less money available to pay our suppliers."* — never says "cash flow," but is one, and is a *why*, not a projection: `templates2/Finance and Fundraising/Cash Flow Crisis Diagnosis.md`, not v1's Cash Flow Forecast.
- *"People buy from us once but rarely come back."* — could be retention, product, pricing, or customer experience depending on what's actually driving it. Don't default to Marketing just because it sounds like a marketing sentence; find out what's actually driving the drop-off before picking a resource.

Keyword overlap is a weak signal at best, never the deciding one — a request can use a domain's vocabulary without belonging to it, and can belong to a domain without using its vocabulary at all.

## Selection hierarchy

Work down this list; stop at the first level that genuinely resolves the request. Never skip ahead to "load everything" — at whichever level resolves it, use only the resources that materially contribute.

1. **Exact match.** An existing template's `## Summary` (v1) or methodology file's stated problem type (v2, see each file's opening description) directly matches what's being asked. Use it.
2. **Strong related match.** No exact topic exists, but an existing template or methodology clearly supplies the needed capability (e.g. no template is literally named "fundraising strategy," but Pitch Deck Outline plus the Finance reference framework covers it). Use it.
3. **Multi-file match.** One file inside a domain folder isn't enough on its own; more than one file in the *same* folder is genuinely needed. See "Selecting files inside a multi-file domain" below.
4. **Multi-folder match.** The problem draws on more than one domain (e.g. Finance and Operations) but is still one problem being worked through together, not several being coordinated separately. Use the relevant files from each folder, synthesized into one answer — see "One problem, one answer" below.
5. **V1 + V2 combination (v2 only).** See "V2 using V1 resources" below.
6. **No meaningful resource match.** Nothing in either library genuinely applies. Reason through it directly, the way each layer already does for unmatched requests. Absence of a matching resource is never a reason to force an unrelated one onto the request, and never a reason to say the request can't be handled.
7. **Beyond the complexity boundary.** The request is actually several interacting problems needing coordination, not depth on one. This isn't a selection failure to fix by combining more resources — follow `base-layer.md`'s "When this layer isn't enough" or `moderate-layer.md`'s "Recognizing a genuine limit" instead of forcing levels 1–5 to cover it.

## Selecting files inside a multi-file domain

Several domain folders — most notably `templates2/Finance and Fundraising/`, which holds four distinct methodology files — group more than one resource under a single domain heading. A domain match is not a file match: after identifying the domain, still determine which specific file(s) inside it the problem actually calls for.

- Judge each candidate by its own stated purpose (its opening description, or the one-line summary in `templates2/index.md` / `templates/index.md`) rather than by filename alone.
- Select every file that materially contributes — not one by default, and not all of them reflexively. A late-payment cash crunch calls for a different file (or combination) than a request for full projected statements or a variance explanation.
- When more than one file is genuinely needed, let them inform each other — a number or conclusion reached via one should carry into the next rather than be re-derived, the same carry-forward principle `base-layer.md`'s "Combining related templates" already applies within v1.

## V2 using V1 resources

v2 is not confined to `templates2/`. `moderate-layer.md`'s "Connection to v1 templates" already covers using a v1 template as the *shape of the final deliverable*; the same judgment extends to using a v1 template's framework *during* the diagnosis itself, as supporting structure, not only as the closing document. This is judgment applied per request, not a default:

- **v2 alone** — its own methodology fully covers the problem; no v1 template adds anything (routing.md's Case A).
- **v2 + a v1 template** — the v1 resource genuinely improves the answer, either mid-reasoning or as the final deliverable's shape (routing.md's Case B).
- **v1 alone** — the problem is simple enough that invoking v2's depth at all would be forcing depth the request doesn't need (routing.md's Case C; see also `moderate-layer.md`'s "No forced depth").

Never use a v1 template and a v2 methodology to redo the same work twice — each is used only for the specific capability it supplies that the other doesn't.

## One problem, one answer

When resources from more than one file or folder are used together, the output stays one coherent answer organized around the user's actual main objective — never a sequence of separate domain answers stitched together (a "Finance says X, Operations says Y, Marketing says Z" list). Identify the single objective the request actually serves, and let every resource used feed that objective. If the problem genuinely can't be synthesized into one coherent answer because it's actually several separate problems, that's the signal for level 7 above, not a reason to present a list of disconnected findings.

## Keeping selection invisible

Which resource(s) were used stays internal by default — answer the way a consultant would, without narrating "I selected the X template" or "I used file Y." Only explain the selection process if the user directly asks how the answer was put together.
