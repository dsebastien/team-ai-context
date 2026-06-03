---
name: ai-skill-creator
description: Create or improve Agent Skills (SKILL.md files) that follow the agentskills.io specification and stay portable across AI assistants. Use when defining a new skill, restructuring or auditing an existing one, tightening a trigger description, deciding whether a behavior should be a new skill or a mode of an existing one, organizing scripts/references/assets, or validating SKILL.md format and naming. Triggers on create skill, new skill, write skill, improve skill, scaffold skill, fix skill triggering, SKILL.md.
---

# AI Skill Creator

Create robust, reusable Agent Skills that follow the open `SKILL.md` standard and run unchanged under any spec-compliant assistant.

## Before you create: the gate

A skill is a near-permanent change to how the assistant behaves — it loads in every future session, and the cost of a duplicate or ill-scoped skill is paid forever. Run this gate before writing anything. Refusing to create a bad skill helps the user more than creating it does, so push back rather than be polite about sprawl.

- **Fold or create?** Scan the skills already present (here, under `.agents/skills/`). If one already does roughly this job — the same kind of subject, the same kind of request — the new behavior is a **mode or option of that skill**, not a sibling. Two skills competing for the same trigger confuse routing; one skill that branches on intent wins. Prefer folding; sprawl is harder to undo than a slightly larger skill.
- **Specific?** The skill resolves to a verb plus a concrete artifact, and its trigger phrases are things people actually say. "Manage productivity" is not a skill.
- **Testable?** You can name a concrete invocation and predict the output. If nothing observable can be checked, the scope is still too vague.
- **Bounded?** It touches one workflow and one kind of output. A skill that sprawls across everything is several skills, or none.
- **Reversible?** Outputs land in known locations; it does not silently overwrite source-of-truth files without a backup or a confirmation step.

State the outcome — fold, create, or push back — and why, before writing code. If the user knowingly accepts an overlap ("yes, keep it separate, because…"), record that reason in the body under a short `## Why this skill exists` note so a later audit can find it.

## Specification guardrails

A skill is a folder named exactly as its `name`, containing a `SKILL.md`. `scripts/`, `references/`, and `assets/` are optional and added only when they earn their place.

`SKILL.md` is YAML frontmatter between `---` markers, then Markdown instructions. Only two fields are required, and they are the whole portable contract:

- `name` — 1-64 chars, lowercase letters/numbers/hyphens only, no leading/trailing or consecutive hyphens, and must match the folder name.
- `description` — 1-1024 chars, third person, stating both what the skill does and when to use it, with concrete trigger phrases. This is the routing surface; see `references/triggering-and-evals.md`.

Optional spec fields (`license`, `compatibility`, `metadata`, `allowed-tools`) go in only when they add concrete value. Assistant-specific extensions (a particular tool's `model`, `argument-hint`, etc.) are not part of the portable spec — keep them out of the core unless you are deliberately targeting one assistant, and never let the skill *depend* on them to function.

## Progressive disclosure

Context is the budget. Spend it in tiers:

- The `description` carries everything needed to *trigger* the skill — nothing more.
- The `SKILL.md` body carries the decision rules and workflow — the parts read every time.
- `references/` holds large or lookup-heavy detail loaded only when a step needs it.
- `scripts/` holds deterministic, repeatable logic better executed than re-derived.
- `assets/` holds templates and static output resources.

This skill practices the pattern: the heavier material lives in `references/` and is pulled in when the relevant step is reached.

## Structure hygiene

- Keep the body modest — roughly under 500 lines and 2000 words. Past that, the detail belongs in `references/`.
- References sit one level deep from `SKILL.md`; don't chain reference-to-reference. Give a long reference a short table of contents, and for a very large one, put grep patterns in the body so a step can jump straight to the relevant part.
- Don't duplicate content between the body and references — each fact lives in exactly one place.
- Ship only files the agent needs to run. No `README.md`, `CHANGELOG.md`, or guide files; descriptive filenames (not `doc2.md`); forward slashes in every path.
- A script handles its own errors and exits with clear codes rather than punting failures back to the model. Document its required inputs and any dependency in a header comment, and make execution intent explicit ("run this" versus "read this for reference").

## Portability and multi-assistant wiring

A skill should run on a stranger's machine under whatever assistant they use, not just the author's setup.

- No hardcoded absolute paths (`/home/...`, `/Users/...`). Resolve paths relative to the repo or the skill folder.
- Prefer POSIX-portable shell. Anything beyond it (a specific runtime, an optional CLI) must be detected at runtime and degrade gracefully when absent — document the expectation in the body.
- Watch cross-platform shell gotchas: `sed -i` differs between GNU and BSD (write to a temp file and `mv` instead); `date -d`, `readlink -f`, `grep -P`, and `stat --format` aren't universal; bash-only idioms (`[[ ]]`, `<()`, arrays) break under `#!/bin/sh`. Commit to `#!/usr/bin/env bash` or stay POSIX, and avoid Linux-only utilities (`xdg-open`, `xclip`, `apt`, `notify-send`).
- Keep the capability in the `SKILL.md`. When the same skill must be reachable from several assistants, the portable pattern is one authoritative `SKILL.md` plus thin per-assistant wrappers that do nothing but point to it. This repo already uses that shape: a `.claude/commands/<name>.md` and a `.github/prompts/<name>.prompt.md` that each say "read `.agents/skills/<name>/SKILL.md` and follow it." Mirror that when a skill needs command/prompt entry points; never duplicate the logic into the wrapper.

## Workflow

Follow this order unless there is a clear reason not to.

1. **Define the target behavior.** Collect concrete example requests the skill must handle. Pin down the outcomes it must produce, what should trigger it versus a neighboring skill, and any constraints (tools, environment, conventions). Also settle who invokes it (the user explicitly, the assistant automatically, or both), which tools it actually needs, and whether it should run in the main conversation or an isolated subagent.
2. **Run the fold-or-create check** (above) against the skills already present. Decide and state the outcome.
3. **Plan reusable components.** For each example, decide what becomes a `scripts/` step, a `references/` lookup, or an `assets/` template. Add nothing that no example needs.
4. **Scaffold.** Create the folder named exactly as `name`, add `SKILL.md` with minimal compliant frontmatter, then grow it.
5. **Author the body.** Imperative voice, decision points and sequencing explicit, exact files named where they must be loaded. Apply the writing principles below.
6. **Validate.** Frontmatter parses as YAML; required fields satisfy their constraints; `name` equals the folder name; every referenced path exists; example commands run in the intended environment. Then run the final sweep in `references/anti-patterns.md`. Fix and re-validate.
7. **Test triggering and behavior** against realistic prompts; tighten trigger precision and instruction clarity. The method is in `references/triggering-and-evals.md`.

## Writing principles

- **Explain why, not MUST.** A modern model applies judgment when given a reason. "Validate before returning — callers pipe this output downstream, and a malformed result breaks their workflow silently" beats "ALWAYS validate." Reframe hard rules as the reasoning behind them.
- **Generalize from examples.** A skill serves prompts you will never see. When fixing a behavior, ask whether the instruction helps an unseen prompt too, not just the case in front of you. Don't overfit one test at the cost of the general rule.
- **Keep it lean.** Every paragraph costs tokens read on every invocation. Cut what the model already knows and what doesn't change behavior. Two paragraphs that could be one sentence should be one sentence.
- **One default, with an escape hatch.** Prescribe a single approach for the common case; note the exception briefly rather than enumerating every branch.
- **Number only sequences.** Use numbered lists for steps where order is load-bearing; use bullets for rules, options, and examples, so inserting one doesn't force a renumber.
- **Read transcripts, not just outputs.** When a test run goes wrong, watch *how* the model worked — wasted exploration or a repeated helper script means bundle it into `scripts/`; a misread instruction means rewrite for clarity, don't pile on more constraints.

## References

- `references/patterns.md` — a catalog of reusable skill shapes (template, conditional workflow, feedback loop, plan-validate-execute, meta-skill, search/lookup, expert reference, decision tree). Pick the shape that fits before authoring the body.
- `references/anti-patterns.md` — what never ships in a SKILL.md (version stamps, migration history, hardcoded counts, personal/session leakage, changelog sections), plus a final grep sweep. Read before declaring a skill done.
- `references/triggering-and-evals.md` — description optimization, trigger eval queries, and the with-skill-versus-baseline test loop.

## Quality checklist

A skill is ready when its `SKILL.md` is spec-compliant, its `name` matches its folder, its description triggers precisely (and is a touch pushy, since models under-trigger), its body is lean and reasoned rather than rule-stacked, optional resources exist only where they add value, the anti-pattern sweep is clean, and nothing in it depends on one specific assistant or absolute path to run.
