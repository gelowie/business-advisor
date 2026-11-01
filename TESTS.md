# Routing & Selection Test Cases

**Honest framing first:** this skill is a set of instructions interpreted by an LLM at request time, not executable code — there is no test runner that can invoke it and assert an output the way `scripts/verify-*.sh` can mechanically check files. What follows is a **documented reasoning trace**: each case worked through by hand against the current `routing.md` / `selection.md` / `base-layer.md` / `moderate-layer.md` text, to confirm the *documentation* actually produces the expected routing decision when followed — not a guarantee that every future run will follow it identically. Re-run this trace by hand after any change to those four files.

---

### TEST 01 — Simple Finance
**Input:** "How do I build a cash flow forecast for the next 6 months?"
**Trace:** Topic exists on both sides (Finance and Fundraising). Is it basic (a document to fill in) or diagnostic (a "why")? It's a projection request with no root cause to find → `routing.md`'s "basic" definition applies.
**Expected:** V1 (`Cash Flow Forecast`)
**Result:** PASS

### TEST 02 — Moderate Finance
**Input:** "Our revenue is increasing, but we're constantly running out of cash because customers are paying late."
**Trace:** Never says "cash flow" — meaning-based match per `selection.md`'s governing principle. It's a "why," not a projection → `routing.md`'s v2 trigger.
**Expected:** V2 (`Cash Flow Crisis Diagnosis`)
**Result:** PASS

### TEST 03 — V2 + V1
**Input:** "I need to understand why our cash keeps running short, and come away with an actual forecast I can act on."
**Trace:** Root cause requested (v2 territory) *and* a concrete v1-shaped deliverable requested in the same ask. `routing.md`'s Case B applies: v2 leads the diagnosis, delivers the conclusion as a filled `Cash Flow Forecast` (v1).
**Expected:** V2 + V1 combination
**Result:** PASS

### TEST 04 — No Exact Template, Multi-File Fallback
**Input:** "Our invoices are getting paid later and later, and I need to know why and what it's doing to our numbers."
**Trace:** No single file covers both "why" and "quantified impact." `templates2/Finance and Fundraising/` holds both `Cash Flow Crisis Diagnosis.md` (the why) and `Financial Statements and Planning.md` (the numbers) — `selection.md` level 3 applies, both used together with carry-forward.
**Expected:** Multi-file fallback within one v2 domain folder
**Result:** PASS

### TEST 05 — Multi-Domain Problem
**Input:** "My restaurant has strong sales but keeps losing money because of high food costs and inefficient staffing."
**Trace:** Two domains (Finance: margins; Operations: staffing/waste) genuinely contribute to one objective (restaurant profitability) — not several unrelated problems. `selection.md` level 4 applies: use relevant resources from both folders, synthesized into one profitability answer, not two separate write-ups.
**Expected:** Multi-folder coordination, one synthesized answer
**Result:** PASS

### TEST 06 — Wrong Explicit Template
**Input:** "Use the Pricing Strategy Builder — my company is actually running out of cash."
**Trace:** `selection.md`'s "When the user names a template" applies directly — this is its own worked example. The named template doesn't address a cash shortfall; state the mismatch in one sentence, then answer as a cash-flow problem instead.
**Expected:** Override/re-route, stated briefly and non-argumentatively
**Result:** PASS

### TEST 07 — Highly Interconnected Problem (boundary)
**Input:** The "Urban Bowl" restaurant case — customer segmentation, per-channel product pricing, staffing schedule, inventory forecasting, and a one-time ₱100,000 investment decision, all genuinely interacting.
**Trace:** This is not one problem needing depth; it's several interacting problems needing coordination — `selection.md` level 7, `base-layer.md`'s "When this layer isn't enough," `moderate-layer.md`'s "Recognizing a genuine limit." **This case was actually run earlier in this project's history** (not merely traced on paper): the limitation was correctly recognized and stated plainly rather than forced through as an ordinary single-problem answer.
**Expected:** Boundary recognized; escalation language used, not a forced template
**Result:** PASS (confirmed against an actual prior run, not just a paper trace)

### TEST 08 — Simple Problem, No Relevant Template
**Input:** "What's a normal profit margin for a coffee shop?"
**Trace:** Factual/benchmarking question; no document to fill in, no root cause to diagnose. `selection.md` level 6 applies — reason through it directly.
**Expected:** Normal reasoning, no template forced
**Result:** PASS

---

## Summary

8/8 traces resolve to their expected outcome against the current documentation. This confirms internal consistency (the rules don't contradict each other for these cases) — it does not confirm that every real invocation of this skill will reason through a given request identically, since that depends on the model actually reading and following these instructions at request time, which this document can't mechanically enforce the way the shell scripts do.

## Known gap in this test suite

All 8 cases live in Finance and Fundraising, Operations, or Marketing — the best-documented, most cross-linked domains. No case here exercises HR and Culture or Legal and Compliance, where V2 coverage is thin or absent (see `selection.md`'s "Coverage gaps are real, not routing failures"). Worth adding before V3: a test case that confirms the system falls back to V1 cleanly in a coverage-gap domain rather than pretending a V2 methodology exists.
