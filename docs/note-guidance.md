---
title: Note Guidance
nav_order: 4
---

# Note Guidance

Use this page for guidance about what different note types should usually contain.

## Lightweight Root Notes

These root notes are intentionally minimal in the repository:

- `Team Conventions.md`
- `Definition of Done.md`
- `Terms and Abbreviations.md`

Keep the note itself short and direct. Add only the information that the team wants to keep front and center.

### Team Conventions

Use this note for stable, non-mandatory conventions such as:

- naming habits
- documentation habits
- linking conventions
- collaboration conventions
- local working conventions

If a convention becomes a full workflow, move the detailed steps to `Processes/`.

### Definition of Done

Use this note for the quality bar work should usually meet before it is considered complete, such as:

- validation expectations
- review expectations
- documentation expectations
- communication or handoff expectations

Keep it outcome-focused rather than process-heavy.

### Terms and Abbreviations

Use this note as the shared glossary for:

- acronyms
- team-specific language
- organization-specific terms
- domain vocabulary

Keep entries short, precise, and genuinely useful.

## Dated Notes

### Decisions

Store decision notes under:

- `Decisions/YYYY/MM/YYYY-MM-DD - Decision - <title>.md`

Typical sections:

- Context
- Decision
- Consequences
- Alternatives considered

### Achievements

Store achievement notes under:

- `Achievements/YYYY/MM/YYYY-MM-DD - Achievement - <title>.md`

Use `Achievements/` for significant outcomes the team has already delivered or realized.
Use `Goals/` for intended outcomes and `History/` for factual events.

Typical content:

- outcome or accomplishment
- date or period achieved
- impact or evidence
- related goals, projects, offerings, or responsibilities

### History

Store factual records under:

- `History/YYYY/MM/YYYY-MM-DD - Event - <title>.md`

Use `History/` for what happened, not for future intent.

### Meetings

Store meeting notes under:

- `Meetings/YYYY/MM/YYYY-MM-DD - Meeting - <title>.md`

Typical sections:

- Date
- Participants
- Agenda
- Decisions
- Action items

### Goals

Store goals under:

- `Goals/YYYY/MM/YYYY-MM-DD - Goal - <title>.md`

Typical content:

- target outcome
- owner
- success signal
- review point when relevant

### Plans

Use `Plans/` for future intent.

Recommended patterns:

- annual or period plan: `Plans/YYYY/YYYY.md`
- specific plan note: `Plans/YYYY/MM/YYYY-MM-DD - Plan - <title>.md`

Typical sections:

- objective
- scope
- major steps
- dependencies
- risks
- linked responsibilities, projects, or repositories

## Context Folders

### Team

Use `Team/` for focused notes such as:

- overview
- members
- operating model
- internal sub-groups

### Company

Use `Company/` for organization context that helps explain where the team operates.

### Customers

Use `Customers/` for stakeholder, customer, audience, or beneficiary context.

### Rules

Use `Rules/` for mandatory rules about the people on the team and how they work together — the team's "must" and "never": things to always respect and things to never do. Split rules into separate notes when different domains need different mandatory guidance.

This is human conduct and ways of working, distinct from `AI/Rules/` (how automated assistants should behave) and from `Projects/Project Rules.md` / `Repositories/Repository Rules.md` (mandatory rules specific to project or repository work).

### Projects

Use `Projects/` for initiative-level notes. Keep `Projects/Project Conventions.md` for shared conventions about how project notes are organized and linked.

### Repositories

Use `Repositories/` for source or configuration repositories when relevant. Keep `Repositories/Repository Conventions.md` for shared repository conventions, then group repository notes by forge and by org, group, or namespace when useful.

### Responsibilities

Use `Responsibilities/` for durable ownership areas. Create folders only when you are ready to name real areas of responsibility.

### Offerings

Use `Offerings/` for the products and services the team provides, as one typed catalog (one note per offering, `Type: product | service` recorded in the note). An offering note is a scannable entry point: summary, audience, owner, how to access it, where to report issues, and links out to operation guides, repositories, and related decisions. Keep runbooks and procedures in `Processes/`/`Routines/` and link to them.

### Communication

Use `Communication/` for how the team communicates, for both people and automated assistants:

- `Communication Rules.md` — mandatory communication rules (the "must" and "never")
- `Communication Conventions.md` — recommended communication conventions (the "should")
- `Writing Style.md` — grammar, formatting, structure, and do/don't
- `Tone of Voice.md` — voice and tone per audience (customers, teammates, public); include good and bad examples, which also help AI draft in the team's voice
- `Channels.md` — which channel for what, information-sharing norms, response-time expectations, and escalation

Keep reusable message templates in `Resources/Templates/`. Describe *how* the team communicates here and *who* stakeholders are under `Customers/`; cross-link the two.

### Routines

Use `Routines/` for recurring, cadence-based practices (standups, retros, planning, reviews, 1:1s, on-call handoffs). One note per routine, `Routine - <name>.md`, with cadence as a field. A routine note typically records cadence, purpose, owner, participants, format/agenda, timing, channel, and inputs/outputs. Distinct from `Processes/` (on-demand task workflows) and `Meetings/` (dated instances of a routine); cross-link them.

### Archives

Use `Archives/` for items that are no longer active. It mirrors the root structure, so an archived item keeps its original path under `Archives/` (for example, `Projects/Acme/` becomes `Archives/Projects/Acme/`). Keep it empty by default and create each `Archives/<Folder>/` only when you first archive into it. Treat archived notes as inactive history rather than current guidance.
