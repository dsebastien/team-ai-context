---
title: Repository Structure
nav_order: 3
---

# Repository Structure

The repository separates stable team context from time-based records.

## Stable Context

These notes usually change slowly:

- team identity
- rules and conventions
- responsibilities
- organization context
- customers and stakeholders

The root notes in this category are intentionally lightweight. The repository favors short note stubs plus fuller explanation in `Structure.md` and this docs site.

## Stable Context Folders

Some stable context belongs in folders rather than single root notes:

- `Team/` for team identity, members, and operating model
- `Company/` for organizational context
- `Customers/` for stakeholder, audience, customer, or beneficiary notes
- `Rules/` for mandatory team or operating rules

## Time-Based Records

These folders capture change over time:

- `Decisions/`
- `Goals/`
- `History/`
- `Meetings/`
- `Plans/`

## Optional Operational Layers

- `Projects/` for initiatives
- `Repositories/` for repositories, if relevant
- `Processes/` for repeatable workflows
- `Resources/` for scripts, templates, and tool references

## AI Workspace

Use `AI/` for AI- and agent-related context. This is curated knowledge, kept separate from machine-read tool configuration under `.agents/skills/`, `.claude/`, and `.github/`.

- `AI/Conversations/` — curated transcripts of notable AI sessions (time-based)
- `AI/Memory/` — durable, team-shared facts and context for agents (time-based)
- `AI/Rules/` — agent-behavior rules and guardrails for this repository
- `AI/Prompts/` — a shared, human-facing prompt library: prompts team members copy and paste into AI tools, useful when a skill cannot be used directly
- `AI/Personas/` — optional agent or role definitions

`AI/Rules/` is for how agents should behave in this repository; mandatory team and operating rules stay in `Rules/`. The repository's `AGENTS.md` is the short entry point that links into `AI/Rules/` and `AI/Memory/`.

Keep entries curated and free of secrets, tokens, or personal data; redact transcripts before saving.

## Empty Folders vs Placeholder Notes

This template prefers empty folders with `.gitkeep` files over placeholder notes that repeat the structure guidance.

Use that pattern for folders such as:

- `Rules/`
- `Decisions/`
- `Goals/`
- `History/`
- `Meetings/`
- `Plans/`
- `Processes/`
- `Repositories/`
- `Resources/Scripts/`
- `Resources/Templates/`
- `Resources/Tools/`
- `AI/Conversations/`
- `AI/Memory/`
- `AI/Rules/`
- `AI/Prompts/`
- `AI/Personas/`

`Team/`, `Company/`, `Customers/`, `Rules/`, and `Responsibilities/` also start empty by default. Add real notes there only when you have useful context to capture.

## Projects

Keep `Projects/` empty until you have a real initiative to document.

When you do:

- keep `Projects/Project Conventions.md` for shared project conventions
- create one folder per project or initiative
- add one main note named after that project
- link it to related responsibilities, plans, or repositories when relevant

## Repositories

Keep `Repositories/` empty until you have real repository notes to track.

When you do:

- keep `Repositories/Repository Conventions.md` for shared repository conventions
- group notes by forge or platform
- then group them by org, team, namespace, or similar structure when useful
- add repository notes only when they provide useful context for the team
## Responsibilities

Keep `Responsibilities/` minimal until you are ready to define real ownership areas.

When you do:

- create one folder per responsibility area
- give the folder a durable name based on ownership
- add notes inside it only when needed

## Company and Customers

Use `Company/` for organization-level context such as:

- where the team sits
- how the organization is structured
- relevant business or operating context

Use `Customers/` for stakeholder and customer context such as:

- customer groups
- internal partner teams
- audience needs
- service expectations

## Team

Use `Team/` for team-specific context such as:

- team mission
- team membership
- internal sub-groups
- operating model

## Rules

Use `Rules/` for mandatory guidance such as:

- security rules
- approval rules
- documentation rules
- change control rules

## Root Note Style

For lightweight root notes such as:

- `Team Conventions.md`
- `Definition of Done.md`
- `Terms and Abbreviations.md`

prefer a minimal placeholder in the note itself and keep the fuller explanation in:

- `Structure.md`
- the `docs/` site

See [Note Guidance](note-guidance.md) for the detailed note-content guidance.

## Naming Rules

Use date-prefixed names for dated notes.

Recommended patterns:

- `YYYY-MM-DD - Decision - <title>.md`
- `YYYY-MM-DD - Event - <title>.md`
- `YYYY-MM-DD - Meeting - <title>.md`
- `YYYY-MM-DD - Goal - <title>.md`
- `YYYY-MM-DD - Plan - <title>.md`

The `AI/` workspace uses its own patterns:

- `AI/Conversations/YYYY/MM/YYYY-MM-DD - AI Conversation - <title>.md`
- `AI/Memory/YYYY/MM/YYYY-MM-DD - AI Memory - <title>.md`
- `AI/Rules/AI Rule - <topic>.md`
- `AI/Prompts/AI Prompt - <topic>.md`
- `AI/Personas/AI Persona - <name>.md`
