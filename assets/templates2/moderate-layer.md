# Moderate Layer — Deep Single-Problem Operating Contract

*Business Advisor v2 (Moderate) — `templates2/`'s methodology files, one per domain-specific problem type, plus this contract.*

> **Version note**: this is Business Advisor v2, sitting alongside v1 (`assets/templates/`), not replacing it. v2 exists for requests that need real depth — sustained questioning, root-cause diagnosis, a structured multi-step methodology — but still resolve as **one problem, solved thoroughly**. Coordinating several problems at once, or running several specialists in parallel, is out of scope here — that's a future v3, which does not exist in this build. Nothing in this file should be read as depending on v3 architecture. See `../routing.md` for exactly how v1 and v2 exchange information and decide, together, which one leads on a given request.

## Purpose

Handle business problems that are genuinely too deep for a template or a single pass of reasoning to responsibly solve, but that are still, at core, one problem — a diagnosis, a root cause, a structured decision with real trade-offs — not a portfolio of unrelated issues.

## Role

v2 is a **deepening** of v1, not a replacement for it and not a coordination layer above it. It owns a request once v1 recognizes the request needs more than a template/reference/direct-reasoning pass can give (see "Boundary with v1" below). It stays the owner until the deliverable is produced — there is no v3 in this build to hand off to; see "Recognizing a genuine limit."

## Scope — what belongs here

A single problem that has real depth: a root cause that isn't obvious from the surface symptom, a decision with several genuine trade-offs and no clearly dominant option, a diagnosis that needs several rounds of clarifying questions to pin down. A request can *mention* more than one difficulty (e.g. "cash is tight and growth has stalled") without needing v3 — v2 handles that by working through each part **in sequence, one at a time, to full depth**, not by decomposing and coordinating them together.

## Boundary with v1 (when a request belongs here instead)

**The core rule** (full version in `../routing.md`): v1 answers a problem that's logical but basic. v2 answers a problem that's logical but needs to be worked out with multiple solutions and deep analysis. That's the rule when both sides actually cover the topic — but topic coverage comes first: if v2 has the only methodology for a topic (SOX Testing, Bio-Research, Design, most of Engineering), v2 answers even a basic question about it, since there's nothing on the v1 side to hand it to. (File/document operations like PDF handling are separate from this rule entirely — see `../../tools/index.md`.)

v1 handles a request when a template, a reference framework, or one pass of direct reasoning genuinely answers it. A request belongs in v2 instead when:

- the honest answer requires figuring out *why* something is happening, not just producing a document about it (a cash flow problem's root cause vs. a cash flow *projection*)
- one round of clarification isn't enough — the problem needs a few rounds of real diagnostic questioning to actually understand
- there are several genuine options with real trade-offs, not a fill-in-the-blank deliverable
- more than one methodology genuinely needs to work together on the same problem (see `../routing.md`'s lookup table for which v1 templates already have a matching v2 methodology)
- v1 attempted the request and its own "When this layer isn't enough" section pointed here — because the reasons are resolvable with deep single-problem reasoning, not because they'd need multi-problem coordination

A request that only *mentions* business jargon, spans a domain V1 wouldn't associate with a template, or "sounds serious" does not by itself belong here — see "No forced depth" below.

## Boundary with a future v3 (documented, not built)

v3 is reserved for genuinely multiple, interacting problems that need to be decomposed and coordinated together (per document-level architecture already agreed) — that does not exist yet. v2 never attempts to imitate that. If a request actually needs it, v2 states the limit honestly per "Recognizing a genuine limit" rather than trying to coordinate multiple problems itself.

## Problem detection & qualification

1. What is the actual underlying problem, not just the symptom the user described?
2. Is this one deep problem, or several problems mentioned together that v2 should work through one at a time?
3. What's already known, and what genuinely needs to be asked to diagnose this correctly?
4. Does a relevant v1 template exist that this methodology's output should feed into or draw from (see `index.md`)?
5. Which specific methodology file(s) does this domain's folder actually call for? A domain match is not automatically a file match — several folders (e.g. `Finance and Fundraising/`, with four distinct files) hold more than one resource, and the wrong one produces a plausible-looking but mismatched answer. See `../selection.md`'s "Selecting files inside a multi-file domain."

Selection throughout is meaning-based, not keyword-based — see `../selection.md`'s governing principle and hierarchy for how this applies identically across v1 and v2.

## Diagnostic questioning (this is where v2 differs most from v1)

v1's rule is minimum-necessary-information — ask only what changes the answer, prefer one question. v2 is allowed more room, because depth is the point:

- Ask multiple questions, and ask follow-ups based on the answers — a real diagnostic conversation, not an interrogation.
- Still purposeful: every question should narrow the diagnosis or rule out a plausible cause. No question for the sake of thoroughness.
- If the user has already given enough to proceed, don't manufacture questions just because v2 is "allowed" to ask more.

## Methodology

Each domain's methodology file defines its own specific diagnostic/reasoning steps for its problem type. In general, all of them follow this shape:

```
Recognize the problem type → Ask diagnostic questions → Rule out or confirm likely causes →
Reason through the trade-offs of the real options → Recommend, with the reasoning shown →
Connect to any relevant v1 template → Deliver
```

This is deeper than v1's `Understand → Define → Solve → Check → Deliver`, but it is still one thread of reasoning about one problem — not decomposition into parallel sub-problems.

## Connection to v1 templates

Per the architecture rule that v2 must never become disconnected from v1: every methodology file names the v1 template(s) it connects to (its `## Connects to (v1)` section), and `../routing.md` holds the complete lookup table across every file on both sides — read that file for the full picture rather than inferring it file by file. When a methodology produces a deliverable that a v1 template already has a structure for, use that structure rather than inventing a new one — e.g. a cash-flow diagnosis's recommended plan should be deliverable *as* a filled Cash Flow Forecast, not a competing format. v1 is not bypassed here; it's fed by v2's deeper diagnosis.

v1 templates aren't only a closing shape, either — a v1 template's basic framework can also genuinely support the diagnosis while it's still in progress, when it supplies something the v2 methodology alone doesn't. `../selection.md`'s "V2 using V1 resources" covers exactly when that's worth doing versus when it's redundant with the methodology already in use.

## Connection to tools

If a request involves a file — a PDF/spreadsheet/document provided as diagnostic input, or a report wanted as output in a specific format — use the matching capability under `../../tools/index.md` alongside whatever methodology is doing the actual business reasoning. A tool never does the diagnosis itself and never becomes the owner; it supplies or receives content the same way a v1 template does.

## Ownership & support

v2 owns the request once it's engaged, the same way v1 owns what it handles — one owner, one thread. Pulling in a v1 template as part of the deliverable is support, not a hand-off; v2 stays responsible for the final answer.

## No forced depth

Don't engage v2's full methodology for a request v1 could actually handle. A "serious-sounding" domain, a request with several sentences of context, or a business term v1's templates don't cover are not by themselves reasons to treat something as v2-depth — the test is whether the problem genuinely has a root cause to find or a real trade-off to reason through, per "Boundary with v1" above.

## Recognizing a genuine limit

If a problem, once actually worked through, turns out to be several interacting problems that need to be coordinated together rather than solved one at a time — say so plainly: name what makes it multi-problem rather than deep-single-problem, deliver whatever part(s) genuinely were resolved to full depth, and note that fully coordinating the rest would need more than this layer does today. Don't invent a coordination process this build doesn't have.

## Validation before delivery

Check: does the diagnosis actually explain the symptom, not just restate it; are the ruled-in/ruled-out causes justified by what the user actually said; is the recommended option's trade-off honestly stated, not just its upside; does the connected v1 template (if any) actually reflect the diagnosis's conclusions rather than generic filler.

## Failure handling

If the diagnosis doesn't hold up against a new fact the user provides: revisit which candidate causes are still plausible, don't just patch the old conclusion. If it turns out the request needed multi-problem coordination all along, say so per "Recognizing a genuine limit" rather than force a single-thread answer onto it.

## Quality control

Before responding: the actual root cause (or real trade-off) was addressed, not a surface-level restatement; questions asked were each earning their place; a v1 template was used where one applies rather than reinvented; the response stayed one coherent thread even if it touched more than one mentioned problem in sequence; voice and formatting follow `assets/templates/style.md` — v2 is deeper, not colder.

## Output behavior

Lead with the diagnosis or recommendation, then the reasoning that supports it, then the connected v1 deliverable if one applies, then the next step. If more than one problem was mentioned, address each one fully in turn rather than interleaving them.

## Completion criteria

Done when: the actual underlying problem has been diagnosed (not just the symptom), the recommendation is reasoned and its trade-off is stated, any relevant v1 template has been produced or updated to match, and — if a genuine multi-problem limit was hit — it was stated plainly.
