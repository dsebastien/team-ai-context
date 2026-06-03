# Common skill shapes

Reusable structures for a `SKILL.md` body. Pick the one (or few) that match the skill's purpose; don't force a shape that doesn't fit.

## Contents

- Template — consistent structured output
- Conditional workflow — branch on task type
- Feedback loop — generate, validate, fix
- Plan-validate-execute — verifiable intermediate steps
- Meta-skill — dispatch to per-type reference files
- Search / lookup — find and present information
- Expert reference — embed domain knowledge
- Decision tree — pick the approach from context

## Template

For skills that produce consistent structured output. Give a single canonical format. Make clear whether it is strict (data formats, API payloads — reproduce exactly) or a sensible default the model adapts per case. State which, so the model knows how much latitude it has.

## Conditional workflow

When the path depends on what the user is doing, branch up front and route to a named sub-workflow.

```markdown
1. Determine the task type:
   - Creating new content? → Creation workflow
   - Editing existing content? → Editing workflow
   - Deleting content? → Confirm with the user first
```

## Feedback loop

For quality-critical output: generate, validate immediately, fix on failure, and only proceed once validation passes. Works best when "valid" is mechanically checkable.

## Plan-validate-execute

For open-ended tasks with verifiable midpoints. Analyze the input, write an explicit plan (an intermediate artifact), validate the plan, execute it, then verify the result. The separate plan step lets the user or a check catch mistakes before anything is applied.

## Meta-skill

A lean dispatcher that keeps detail in per-type reference files. The body holds a small table mapping each type to its reference; the workflow identifies the type, loads that reference, produces the output, and validates against the reference's rules. This is the progressive-disclosure shape — the body stays cheap, detail loads on demand.

## Search / lookup

For skills that find and present information. List the search strategies in priority order (keyword, then structured, then semantic, say), and fix the response format so results come back consistently — a small table or a defined block beats free-form prose.

## Expert reference

For skills that supply domain knowledge rather than perform an action. Lead with a quick-reference table, then key concepts, then common pitfalls (each with the correct approach), and point to deeper references for the long tail.

## Decision tree

When the same goal needs different tools depending on context, branch explicitly on the signals (input type, output format) and name the matching approach for each combination. Have the skill state which branch it took and why, so the choice is auditable.
