# Companion skills — optional, never required

Business Advisor Pro works completely on its own. This file only records that one companion skill exists, so that when it is present or mentioned, this skill uses it well instead of ignoring it or depending on it.

## business-advisor-visual-prompt

A separate skill that turns rough notes, a vague description or an existing prompt into a **structured prompt** for this skill. It does not solve the business problem; this skill does. It is a prompt builder and repairer, not a source of business knowledge.

Two things to know about it:

1. **It may be the source of what you receive.** Recognize its output (below) and use it precisely.
2. **It may help a user who cannot explain their problem.** Mention it once, lightly (below). Never require it.

### Recognizing its prompts

Match by structure, not by exact wording; users edit prompts. Typical signs: a snapshot headed *Business Visual Prompt* (Topic, Problem, Task, Template, Target), followed by a prompt body with some of these labeled sections: *In my words*, *Business*, *Known (please don't re-ask)*, *Not provided yet*, *Assumptions to verify (not confirmed)*, *Research context*, *My own suspicion*, *Redaction note*, *My format requests*, *Outcome I want*. A prompt with only a few of these sections is still that style. A prompt with none of them is an ordinary prompt and is handled exactly as before.

### What each section means for this skill

| Section in the prompt | What this skill does with it |
|---|---|
| **In my words** | The user's own statement of the objective. Carry it as written (see `routing.md`, "Information that travels with the request"). |
| **Business** (type, industry, stage, jurisdiction) | Satisfies `SKILL.md` Step 1: do not ask for the business type again. A stated jurisdiction is used as given (`references/jurisdiction.md`). If law, tax, employment, privacy or fundraising is involved and no jurisdiction is stated, the usual rule applies: say which jurisdiction is assumed. |
| **Known (please don't re-ask)** | Established facts, passed along as given. Never re-ask them. They still go through the integrity and math checks (`precision-gate.md` §2); if a Known figure contradicts another, flag it instead of silently choosing one. |
| **Money / figures block** (currency, period, basis, cash, revenue, expenses) | The essential inputs for `precision-gate.md` §1 and §2. Often removes the question round entirely. |
| **Not provided yet** | Items the user did not give. Apply `precision-gate.md` §1: if an item is essential, ask once in one short batch or work from a clearly labeled range; if not essential, assume sensibly and say so. Never treat "not provided" as a reason to refuse, and never invent the figure. |
| **Assumptions to verify (not confirmed)** | Unconfirmed. They enter the assumption ledger (`precision-gate.md` §3) as "I assumed" with what happens if wrong. They are never treated as the user's facts or as Computed. |
| **Research context** | Treat sourced items as **Benchmark** and unsourced patterns as **Unverified** (`precision-gate.md` §4). Volatile facts in it are re-verified or marked unverified (§5), not repeated as fact. |
| **My own suspicion** / suspected links | The user's hypothesis, to be tested, not a finding. Interaction between problems is still decided by this skill's own routing (`routing.md` Rule 3). |
| **Redaction note** | Markers such as *Person A*, *Company A* or *[REDACTED EMAIL]* are intentional. Do not ask for the real names and do not count them as missing data. |
| **My format requests** | The user's own instructions about how to answer. Honor them unless they conflict with the precision gate or the legal, tax and financial caution in `SKILL.md`. |
| **Outcome I want** | The deliverable or decision requested. |

### Labels do not decide the tier

The snapshot's *Template* and *Target* lines (for example "T8 Complex" or "business-advisor") describe the prompt builder's own view. They are hints about the problem type, not routing instructions. Which tier owns the request is still decided only by `routing.md`, and which resources are used by `selection.md`. A prompt labeled complex can still be a single v2 problem, and the reverse.

### Several prompts at once

A response from the prompt builder may contain "Prompt 1 of N". Each prompt is one independent problem, listed with the user's priority first. Work the first one the user pastes or names; treat the others as separate requests, not as one merged problem, unless the user connects them.

### Mentioning the companion skill

Offer it only when it would genuinely save the user effort: they say they cannot explain the problem, paste a pile of messy notes, or ask how to word a prompt well. Then:

- Say it in one line, once: that a companion skill, business-advisor-visual-prompt, can turn the notes into a structured prompt if they want one.
- **Never** make the answer wait for it, never ask the user to install it, and never mention it when the user already gave clear facts or sent a structured prompt.
- If it is not available in the session, do not pretend it is. Answer normally, and use the usual one short batch of questions for any essential missing inputs.
- If the skill is available and the user accepts, hand over to it; it builds the prompt and this skill then answers from that prompt.

### Boundaries

- Nothing in this skill depends on the companion skill being installed. Removing this file changes no other behavior.
- This file adds no business knowledge. All advice still comes from `references/` and `assets/`.
- The companion skill does not edit this skill, and this skill does not edit its prompts.
