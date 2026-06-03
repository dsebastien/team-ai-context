# Triggering and evaluation

The `description` is how a skill gets chosen. Everything downstream is wasted if the skill never fires, or fires on the wrong prompt. Treat the description as code and test it.

## Write the description to trigger

- Cover both the *what* and the *when*, in third person.
- Be a touch pushy. Models under-trigger, so name the intent broadly: "Use when the user mentions dashboards, metrics, charts, or wants to display data — even if they don't say 'dashboard'." beats a narrow literal phrasing.
- Put concrete trigger keywords near the end, including the phrasings, abbreviations, and file types real users use.
- Stay within the character cap by cutting filler, not trigger phrases.

## Generate trigger eval queries

Write a dozen-plus realistic prompts, split between should-trigger and should-NOT-trigger. The valuable ones are the near-misses: prompts that share keywords with this skill but actually need a different one. Use realistic detail — file paths, abbreviations, the kind of context a user actually types — not toy phrases like "do the thing."

## Test triggering

Run each query in a fresh context with the skill available and record the outcome: triggered, didn't trigger, or the wrong skill triggered. Then adjust:

- **False negative** (should have fired, didn't): add the missing intent or keyword.
- **False positive** (fired when it shouldn't): tighten the scope.
- **Wrong skill fired**: differentiate this description from the competing one so each owns its lane.

Retest after each change. Precision beats exhaustiveness within the cap.

## Test behavior: with-skill versus baseline

Triggering is necessary but not sufficient — the skill also has to *improve* the outcome. For two or three realistic prompts, run the task once with the skill loaded and once without, and compare.

- Verifiable assertions ("a file is created at the expected path", "output contains the required column") tell you whether the skill did the job.
- The side-by-side tells you whether the skill actually helped versus the model's default behavior. If the baseline is already as good, the skill is carrying dead weight — cut it or sharpen it.
- Read the transcript, not just the final output: wasted exploration, a helper script re-derived each run (bundle it into `scripts/`), or an instruction that led the model astray (rewrite it for clarity rather than adding another constraint).

## Iterate without overfitting

When you fix a failing case, ask whether the change also helps prompts you haven't seen. Generalize the instruction; don't patch the one transcript at the cost of the general rule. Re-run the eval queries after each change until triggering and behavior both hold.
