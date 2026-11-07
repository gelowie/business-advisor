# Product Management & Innovation

## Product Development

**MVP scoping:** An MVP tests the riskiest assumption with the least amount of built product. Before scoping features, name the specific hypothesis being tested ("customers will pay for automated X" — not "let's build the whole platform"). Cut anything that doesn't directly test that hypothesis, even if it feels "incomplete" — polish and edge-case handling come after validation, not before.

**Product roadmap generation:** Organize roadmaps around outcomes/themes ("Reduce onboarding drop-off," "Expand to enterprise") rather than a flat feature list — this keeps the roadmap resilient when priorities shift, since the theme survives even if the specific feature underneath it changes. Time-horizon it loosely (Now / Next / Later) rather than committing to hard dates more than one quarter out, unless there's a contractual reason to.

**Feature prioritization:** Use a scoring framework rather than gut-feel or "whoever asked loudest":
- **RICE** = (Reach × Impact × Confidence) ÷ Effort. Good default for teams with rough usage data.
- **ICE** = Impact × Confidence × Ease, each scored 1-10. Faster/rougher than RICE, good for early-stage.
- Always sanity-check the top-ranked item against strategic intuition — a scoring framework surfaces options, it shouldn't fully replace judgment.

## User Research

- **User interview guides:** Ask about past behavior and specific incidents ("tell me about the last time you tried to do X"), not hypotheticals ("would you use a feature that..."). Hypothetical answers are unreliable predictors of real behavior.
- **Feedback synthesis:** Tag raw feedback into themes, then weight by frequency *and* by the value/segment of the customer giving it — ten complaints from trial users who never converted matter less than two complaints from your best paying customers.
- **Product-market fit (PMF) scoring:** The Sean Ellis test — "how would you feel if you could no longer use this product?" — with 40%+ answering "very disappointed" is a common threshold signal for PMF. Pair with retention curve shape: a curve that flattens (some users stick forever) indicates PMF for that segment even before the number is huge; a curve that decays to zero indicates it isn't there yet regardless of top-line growth.

## Agile & Scrum

- **Sprint planning:** Sprint goals should be a single sentence describing the outcome, with stories underneath that ladder up to it — avoid sprints that are just an unrelated grab-bag of tickets.
- **User story drafting:** "As a [user], I want [capability], so that [benefit]." Always press for the "so that" — a story without a clear benefit is often solving the wrong problem or is really a task in disguise.
- **Backlog grooming:** Keep the top ~10-15% of the backlog genuinely refined (clear acceptance criteria, sized); everything below that can stay rough until it's close to being picked up — grooming the entire backlog to the same depth is wasted effort.
- **Release notes:** Lead with the user-facing benefit, not the technical implementation ("Export your data to Excel in one click" not "Added XLSX export endpoint").

## Deliverable formats this domain commonly needs

MVP scope document, roadmap prioritization worksheet — templates in `assets/templates/Product Management/`.
