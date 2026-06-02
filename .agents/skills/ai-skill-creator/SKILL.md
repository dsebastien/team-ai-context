---
name: ai-skill-creator
description: Create or improve Agent Skills that follow the agentskills.io specification. Use when defining a new skill, restructuring an existing skill, tightening trigger descriptions, organizing scripts/references/assets, or validating SKILL.md format and naming rules.
---

# AI Skill Creator

Create robust, reusable Agent Skills that follow the open `SKILL.md` standard.

## Core Output

Produce:

1. A valid skill folder layout
2. A compliant `SKILL.md` file
3. Optional `scripts/`, `references/`, and `assets/` content when useful
4. A validation pass with fixes for any detected issues

## Specification Guardrails

Apply these rules strictly:

1. Keep skill structure valid:
   - `skill-name/SKILL.md` is required
   - `scripts/`, `references/`, `assets/`, and other files are optional
2. Write `SKILL.md` as:
   - YAML frontmatter between `---` markers
   - Markdown instructions in the body
3. Require frontmatter fields:
   - `name`
   - `description`
4. Enforce `name` rules:
   - 1-64 characters
   - lowercase letters, numbers, and hyphens only
   - no leading/trailing hyphen
   - no consecutive hyphens
   - must match parent directory name
5. Enforce `description` rules:
   - 1-1024 characters
   - clearly describe both capability and trigger conditions
6. Accept optional frontmatter only when needed:
   - `license`
   - `compatibility`
   - `metadata`
   - `allowed-tools`

## Progressive Disclosure

Keep context efficient:

1. Put trigger-critical information in frontmatter `description`
2. Keep `SKILL.md` body focused on workflow and decision rules
3. Move large domain details into `references/`
4. Put deterministic repeatable logic into `scripts/`
5. Store output templates and static resources in `assets/`

## Workflow

Follow this sequence unless there is a clear reason not to.

### 1) Define the target behavior

Collect concrete examples of user requests the skill should handle. Clarify:

1. What outcomes the skill must produce
2. What should trigger this skill vs another skill
3. What constraints exist (tools, environment, policies, style)

### 2) Plan reusable components

For each example request, identify reusable components:

1. `scripts/` for repeated deterministic steps
2. `references/` for large, lookup-heavy knowledge
3. `assets/` for templates and output resources

Do not create extra documentation files that are not needed for execution.

### 3) Initialize the skill structure

Create the folder named exactly as the skill `name`, then add `SKILL.md`.

Start with minimal compliant frontmatter:

```yaml
---
name: skill-name
description: Explain what the skill does and when to use it.
---
```

Add optional frontmatter fields only when they provide concrete value.

### 4) Author instructions

Write concise, actionable body instructions:

1. Use imperative language
2. Encode decision points and sequencing clearly
3. Reference exact files to load when needed
4. Avoid generic model advice unrelated to the task

### 5) Validate and fix

Run structural checks before finishing:

1. Frontmatter parses as valid YAML
2. Required fields exist and satisfy constraints
3. `name` equals directory name
4. References to files/paths are real
5. Example commands are executable in the intended environment

If any check fails, fix and re-validate.

### 6) Iterate with real tasks

Test the skill against realistic prompts, then tighten:

1. Trigger precision
2. Missing edge-case handling
3. Overly verbose or ambiguous instructions
4. Incorrect split between body vs references/scripts/assets

## Quality Checklist

A skill is ready when all are true:

1. `SKILL.md` is fully spec-compliant
2. Trigger description is specific and accurate
3. Instructions are concise and operational
4. Optional resources are present only when they add value
5. No platform-specific branding terms are required to understand or run the skill
