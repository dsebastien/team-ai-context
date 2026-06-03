# Anti-patterns: what never ships in a SKILL.md

A shipped `SKILL.md` describes a capability *as it exists today*. Strip everything that describes how it got here, who happens to use it now, when it last changed, or what it used to be. The skill outlives every snapshot of the system around it.

## No version stamps in titles or descriptions

- Wrong: `# Skill Creator (v4)`, `description: Creates skills with the v4 frontmatter`.
- Right: `# Skill Creator`, `description: Creates skills following the spec`.
- A version number rots the moment the next version lands. Describe current behavior, not a place in a version history.

## No migration history or refactor archaeology

- Forbidden anywhere in body, frontmatter, or description: "replaces the old skill", "absorbs X", "formerly known as", "previously called", "originally named", "Round N:", "as of <date>" tied to a change event, "## Migration note".
- The opening tagline says what the skill does today — not what it used to be, not how it was assembled.
- Migration history belongs in the commit message and, if users must act, a separate migration note. None of it leaks into `SKILL.md`.

## No hardcoded counts of skills, modes, or siblings

- Forbidden: "23 skills in the set", "(24+)", "all 5 modes", "8-mode dispatcher", enumerated sibling lists.
- Every add/remove/rename forces a sweep across every duplicated count; miss one and the file lies. Replace with the generic form ("all modes share…") or strip the line.
- Keep numbers that are operational, not census: result caps in an algorithm ("returns up to 20"), thresholds ("> 90 days"), ordered step labels. Test: does this number have to change when a sibling is added? If yes, strip it.

## No personal or session leakage

- A shipped skill cannot embed personal facts, current projects, or "as of today" assumptions from the conversation that created it.
- Forbidden: "(from memory: …)", "the user is currently working on X", a specific person's name baked into a generic skill, "for this repo" with hardcoded specifics.
- Instead: discover the signal at runtime (search the repo for it), ask the user when it can't be discovered, or — only for skills whose whole purpose is user-specific templates — let the user fill it in. Everything else stays context-agnostic.

## No changelog / history / migration sections in the body

- Skills don't carry their own changelog; version control does. If a behavior change matters to users, that's a release or migration note, not a `SKILL.md` section.

## No description bloat

- The `description` is the routing surface and capped; every wasted phrase is one fewer trigger phrase that fits.
- Cut filler: "this skill helps you", "an awesome way to", "use this when you want to", redundant praise.
- Keep: third-person verb + concrete object + a handful of trigger phrases.

## No rule-stacking in place of reasoning

- Walls of "ALWAYS / NEVER / MUST" train the model to skim. State the reason once; the model will generalize from it. Reserve emphatic phrasing for the rare genuinely dangerous step.

## Final sweep

Run this from the skill folder before declaring it done; zero hits is the gate.

```bash
grep -rnE "\(v[0-9]+\)|version [0-9]|replaces |absorbs |absorbed into|formerly known|previously called|originally named|Round [0-9]+:|as of [0-9]{4}|from memory:|currently (working on|training|reading)|[0-9]+ skills in|\([0-9]+\+\)|all [0-9]+ modes|## Migration|## Changelog|## History" .
```

Then eyeball for: hardcoded absolute paths (`/home/`, `/Users/`), a specific person's name in a generic skill, and numbered lists where the order doesn't matter.
