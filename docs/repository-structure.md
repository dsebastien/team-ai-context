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

- `Achievements/`
- `Decisions/`
- `Goals/`
- `History/`
- `Meetings/`
- `Plans/`

Use `Achievements/` for notable completed outcomes and accomplishments.
Keep `Goals/` for intended outcomes and `History/` for factual events.

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
- `AI/Plans/` — plans for AI initiatives and for work on this repository

`AI/Rules/` is for how agents should behave in this repository; mandatory team and operating rules stay in `Rules/`. The repository's `AGENTS.md` is the short entry point that links into `AI/Rules/` and `AI/Memory/`.

Keep entries curated and free of secrets, tokens, or personal data; redact transcripts before saving.

## Communication

Use `Communication/` to document how the team communicates — guidance that serves both people and automated assistants drafting on the team's behalf.

- `Communication/Communication Rules.md` — mandatory communication rules: the "must" and "never"
- `Communication/Communication Conventions.md` — recommended communication conventions: the "should"
- `Communication/Writing Style.md` — grammar, formatting, and structure; do/don't
- `Communication/Tone of Voice.md` — voice and tone, adjusted per audience (customers, teammates, public)
- `Communication/Channels.md` — which channel for what, information-sharing norms, response-time expectations, escalation

Reusable message templates (announcements, customer replies, release notes) live in `Resources/Templates/`. `Communication/` describes *how* the team communicates; `Customers/` describes *who* stakeholders are — cross-link the two.

Automated assistants should read `Writing Style`, `Tone of Voice`, and `Communication Rules` before drafting any internal or outbound communication.

## Routines

Use `Routines/` for the team's recurring, cadence-based practices — standups, retrospectives, planning, reviews, 1:1s, on-call handoffs, demos, reporting rhythms.

- one note per routine: `Routines/Routine - <name>.md`
- record cadence (daily/weekly/sprint/monthly/quarterly) as a field inside the note, not as subfolders
- cover cadence, purpose, owner/facilitator, participants, format/agenda, timing, channel, inputs/outputs, and related process and responsibility
- keep `Routines/` empty until the team has real routines to document

A routine is a recurring practice defined by *when and how often*; a process (`Processes/`) is an on-demand workflow defined by *its steps*. A routine often runs a process — link them. Individual occurrences are recorded as dated notes under `Meetings/`.

## Archives

Use `Archives/` to keep items that are no longer active without losing where they lived. It mirrors the root structure: to archive an item at `<Folder>/<path>`, move it to `Archives/<Folder>/<path>`.

For example, archiving a finished project moves `Projects/Acme/Acme.md` to `Archives/Projects/Acme/Acme.md`.

- `Archives/` stays empty (just `.gitkeep`) by default. Each `Archives/<Folder>/` is created the first time you archive something into it — the full mirror is not pre-created.
- Archive whole items, not the convention or rules stub notes.
- Treat archived content as inactive history, not current guidance.
- Append-only logs (`Achievements/`, `Decisions/`, `History/`, `Meetings/`) are usually left in place rather than archived.
- Prefer name-based wikilinks (`[[Acme]]`) so links survive the move; update any path-based links when you archive an item.

## Empty Folders vs Placeholder Notes

This template prefers empty folders with `.gitkeep` files over placeholder notes that repeat the structure guidance.

Use that pattern for folders such as:

- `Achievements/`
- `Rules/`
- `Decisions/`
- `Goals/`
- `History/`
- `Meetings/`
- `Plans/`
- `Processes/`
- `Routines/`
- `Repositories/`
- `Offerings/`
- `Resources/Scripts/`
- `Resources/Templates/`
- `Resources/Tools/`
- `AI/Conversations/`
- `AI/Memory/`
- `AI/Rules/`
- `AI/Prompts/`
- `AI/Personas/`
- `Archives/`

`Team/`, `Company/`, `Customers/`, `Rules/`, and `Responsibilities/` also start empty by default. Add real notes there only when you have useful context to capture.

## Projects

Keep `Projects/` empty until you have a real initiative to document.

When you do:

- keep `Projects/Project Conventions.md` for shared project conventions (recommended practices — the "should")
- keep `Projects/Project Rules.md` for mandatory rules that must be followed when working on any project (the "must")
- create one folder per project or initiative
- add one main note named after that project
- link it to related responsibilities, plans, or repositories when relevant

Team-wide mandatory rules that are not specific to project work stay under `Rules/`.

## Repositories

Keep `Repositories/` empty until you have real repository notes to track.

When you do:

- keep `Repositories/Repository Conventions.md` for shared repository conventions (recommended practices — the "should")
- keep `Repositories/Repository Rules.md` for mandatory rules that must be followed when working with any repository (the "must")
- group notes by forge or platform
- then group them by org, team, namespace, or similar structure when useful
- add repository notes only when they provide useful context for the team

Team-wide mandatory rules that are not specific to repository work stay under `Rules/`.

## Offerings

Use `Offerings/` for what the team provides to others — its products and services — as a single typed catalog.

- one note per offering: `Offerings/<offering name>.md`
- record `Type` (product | service) and `Status` (active | retired) at the top of the note
- cover summary and audience (→ `Customers/`), owner (→ `Responsibilities/`), how to access it, where to report issues (→ ticketing + `Communication/Channels`), and links to operation guides (→ `Processes/`/`Routines/`)
- keep `Offerings/` empty until the team has real offerings to document

`Offerings/` is what the team *provides*; tools and platforms it *uses* are tracked separately. Link to metrics, responsibilities, and repositories rather than redefining them here.

An offering is a *thing the team delivers*; a responsibility is an *area the team is accountable for*. A responsibility owns offerings (and other things, like tools or on-call); an offering has one owning responsibility. Even when they share a name, keep both — the offering note is the catalog entry (access, issues, operation), the responsibility note is the ownership and scope — and cross-link them.

## Responsibilities

Keep `Responsibilities/` minimal until you are ready to define real ownership areas.

When you do:

- create one folder per responsibility area
- give the folder a durable name based on ownership
- add notes inside it only when needed

A responsibility is an *area of accountability*, not a thing the team delivers. Products and services live in `Offerings/` and link back to the responsibility that owns them.

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

Use `Rules/` for mandatory rules about the people on the team and how they work together. These are the team's "must" and "never" statements — things to always respect and things to never do.

Examples:

- things to never do (for example: never share customer data externally, never bypass review)
- things to always respect (for example: working agreements, on-call etiquette, decision rights)
- security rules
- approval rules
- documentation rules
- change control rules

`Rules/` is about human conduct and ways of working together. It is distinct from:

- `AI/Rules/` — how automated assistants should behave in this repository
- `Projects/Project Rules.md` and `Repositories/Repository Rules.md` — mandatory rules specific to working on a project or a repository

Cross-link these when a team rule and a domain rule relate.

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

- `YYYY-MM-DD - Achievement - <title>.md`
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
- `AI/Plans/YYYY-MM-DD - AI Plan - <title>.md`

## How Notes Relate

The folders are nodes in a small graph; the links between notes are the edges. Read each line as a sentence ("a project advances a goal"). These links are what make the repository navigable for both people and automated assistants.

```
Responsibilities ──own──▶ Offerings ──serve──▶ Customers
        │                    ▲
        │ own                │ produce / change
        ▼                    │
   Goals ◀──advance── Projects
```

**Core spine**

- A **responsibility** owns **offerings**, **repositories**, **processes**, **routines**, and **goals** (and the tools it administers).
- An **offering** is owned by one responsibility, serves **customers**, is built or changed by **projects**, may live in **repositories**, is operated via **processes**/**routines**, and has issues reported through **communication** channels.
- A **project** advances one or more **goals**, produces or changes **offerings**, uses **repositories** and tools, and is recorded through **decisions** and **meetings**.
- A **goal** sets a target, is pursued by **projects** and **plans**, and is owned by a **responsibility**.
- An **achievement** records a realized outcome and usually links back to the **goal**, **project**, **offering**, or **responsibility** it reflects.

**Work and cadence**

- A **routine** is a recurring practice; it runs a **process**, and its occurrences are recorded as **meetings**.
- A **process** is an on-demand workflow that operates offerings or systems.
- **Rules**, **conventions**, and the **Definition of Done** govern how work in projects, repositories, processes, and routines is done.

**Meaning and communication**

- **Terms and Abbreviations** define the vocabulary used across every note.
- **Communication** sets how the team writes and speaks; its **channels** are referenced by offerings (issue reporting) and routines (where they happen). **Customers** are served by offerings and communicated with per communication.

**Records and lifecycle**

- **Achievements** capture realized outcomes, **decisions** capture choices and rationale, **meetings** capture what happened, **history** is the factual timeline; **plans** and **goals** look forward.
- **AI/Rules** govern assistant behavior, **AI/Memory** holds durable context, **AI/Prompts** is a human prompt library, and **AI/Conversations** records notable sessions.
- **Archives/** holds inactive copies of any of the above, mirroring the original folder.

For assistants, answering a question is often graph traversal — for example, "who do I contact about offering X?" follows offering → owning **responsibility** + issue **channel**; "why does goal Y matter?" follows goal ← **project** ← **decision**.
