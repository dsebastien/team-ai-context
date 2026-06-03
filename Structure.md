# Structure

This repository is structured to separate stable team context from time-based records.

## Root Notes

- [[Definition of Done]]: quality and completion criteria
- [[Team Conventions]]: stable team conventions
- [[Terms and Abbreviations]]: shared glossary

These root notes are intentionally lightweight. Use them as entry points, then keep richer explanation in `docs/`.

## Folders

- `Team/`: team identity, mandate, members, and internal organization
- `Company/`: organization context
- `Customers/`: stakeholder, customer, audience, or beneficiary context
- `Rules/`: mandatory team or operating rules
- `Decisions/`: decisions and rationale
- `Goals/`: goals and outcomes
- `History/`: factual historical records
- `Meetings/`: meeting notes
- `Plans/`: plans and roadmaps
- `Processes/`: repeatable workflows and procedures
- `Routines/`: recurring, cadence-based team practices (rituals/ceremonies)
- `Projects/`: business, delivery, or initiative-level work items
- `Repositories/`: source or configuration repositories, when relevant
- `Resources/`: reusable templates, scripts, and references
- `Responsibilities/`: responsibility groups and ownership areas
- `Communication/`: how the team communicates — style, tone, channels, and mandatory communication rules
- `AI/`: AI- and agent-related context: conversations, memory, agent rules, prompts, and personas
- `Archives/`: archived (inactive) items, mirroring the root structure
- `docs/`: GitHub Pages-friendly user guide

## Naming Conventions

### General Rules

- Prefer one topic per note.
- Use concise, searchable titles.
- Use Obsidian-style links between repository notes.
- For dated notes, always use a date prefix and keep the same format everywhere.

### Decisions

Store decision records in:

- `Decisions/YYYY/MM/YYYY-MM-DD - Decision - <title>.md`

### History

Store factual timeline entries in:

- `History/YYYY/MM/YYYY-MM-DD - Event - <title>.md`

Use `History/` for what happened, not for future intent.

### Meetings

Store meeting notes in:

- `Meetings/YYYY/MM/YYYY-MM-DD - Meeting - <title>.md`

### Plans

Use `Plans/` for future intent.

- Annual or period plan: `Plans/YYYY/YYYY.md`
- Specific plan note: `Plans/YYYY/MM/YYYY-MM-DD - Plan - <title>.md`

### Goals

Store goals in:

- `Goals/YYYY/MM/YYYY-MM-DD - Goal - <title>.md`

### Company

Use `Company/` for organization context that helps explain where the team operates.
Keep `Company/` empty except for `.gitkeep` until you have real organization notes to add.

### Team

Use `Team/` for team-level identity and organizational context specific to the team itself.
Keep `Team/` empty except for `.gitkeep` until you have real team notes to add.

### Team Conventions

Use `Team Conventions.md` for non-mandatory working conventions that help the team stay consistent.
Keep the note lightweight.

### Definition of Done

Use `Definition of Done.md` for the quality bar that work should meet before it is considered complete.
Keep the note lightweight.

### Terms and Abbreviations

Use `Terms and Abbreviations.md` as the shared glossary for the repository.
Keep the note lightweight.

### Rules

Use `Rules/` for mandatory rules about the people on the team and how they work together — the team's "must" and "never": things to always respect and things to never do.
This is distinct from `AI/Rules/` (how automated assistants should behave) and from `Projects/Project Rules.md` and `Repositories/Repository Rules.md` (mandatory rules specific to project or repository work).
Keep `Rules/` empty except for `.gitkeep` until you have real rule notes to add.

### Customers

Use `Customers/` for stakeholder, customer, audience, or beneficiary context.
Keep `Customers/` empty except for `.gitkeep` until you have real stakeholder notes to add.

### Projects

Store project or initiative notes in:

- `Projects/<project name>/<project name>.md`

Notes:

- Use `Projects/Project Conventions.md` for team-wide project conventions.
- Use `Projects/Project Rules.md` for mandatory rules that must be followed when working on any project.
- Keep `Projects/` empty except for `.gitkeep` until you create real project folders.
- Create a project folder only when there is an actual initiative to document.
- Use one main note per project folder.

Rules vs conventions:

- `Project Rules.md` is for mandatory, enforced rules — the "must".
- `Project Conventions.md` is for recommended, stable practices — the "should".
- Mandatory rules that apply team-wide, not just to project work, stay under `Rules/`. `Project Rules.md` is the project-specific complement; cross-link the two when they relate.

### Repositories

If you track repositories here, organize them by forge or platform, then by org/group:

- Use `Repositories/Repository Conventions.md` for team-wide repository conventions.
- Use `Repositories/Repository Rules.md` for mandatory rules that must be followed when working with any repository.
- `Repositories/<forge>/<group>/Repository - <name>.md`

Example:

- `Repositories/GitHub/example-org/Repository - example-template.md`

Rules vs conventions:

- `Repository Rules.md` is for mandatory, enforced rules — the "must" (for example: never force-push to a protected branch, no secrets in commits, required checks must pass before a pull request).
- `Repository Conventions.md` is for recommended, stable practices — the "should" (for example: branch naming, commit message style, how repository notes are grouped).
- Mandatory rules that apply team-wide, not just to repository work, stay under `Rules/`. `Repository Rules.md` is the repository-specific complement; cross-link the two when they relate.

### Responsibilities

Use `Responsibilities/` to document long-lived ownership areas.

- Keep `Responsibilities/` empty except for `.gitkeep` files until you define real responsibility areas.
- Create one folder per real responsibility area only when you are ready to name it.
- Add notes inside a responsibility-area folder only when needed.

For note-content guidance and examples, use the docs site rather than this file.

### AI

Use `AI/` for AI- and agent-related context. This is distinct from machine-read
tool configuration under `.agents/skills/`, `.claude/`, and `.github/`. Keep
entries curated and free of secrets, tokens, or personal data; redact
transcripts before saving.

- `AI/Conversations/`: curated transcripts of notable AI sessions (time-bound).
  - `AI/Conversations/YYYY/MM/YYYY-MM-DD - AI Conversation - <title>.md`
- `AI/Memory/`: durable, team-shared facts and context for agents (time-bound).
  - `AI/Memory/YYYY/MM/YYYY-MM-DD - AI Memory - <title>.md`
- `AI/Rules/`: agent-behavior rules and guardrails for this repository, referenced from [[AGENTS]]. Root `Rules/` stays for team/operating rules; `AI/Rules/` is for how agents should behave here.
  - `AI/Rules/AI Rule - <topic>.md`
- `AI/Prompts/`: a shared, human-facing prompt library — prompts team members copy and paste into AI tools, useful when a skill cannot be used directly.
  - `AI/Prompts/AI Prompt - <topic>.md`
- `AI/Personas/`: optional agent or role definitions.
  - `AI/Personas/AI Persona - <name>.md`

Keep `AI/` subfolders empty except for `.gitkeep` until you have real content to add.

### Communication

Use `Communication/` for how the team communicates — guidance that serves both
people and automated assistants drafting on the team's behalf. Keep these notes
practical and example-rich.

- `Communication/Communication Rules.md`: mandatory communication rules — the "must / never" (for example: never disclose customer data in public channels, never announce before sign-off).
- `Communication/Communication Conventions.md`: recommended communication conventions — the "should".
- `Communication/Writing Style.md`: grammar, formatting, and structure; do/don't.
- `Communication/Tone of Voice.md`: voice and tone, adjusted per audience (customers, teammates, public).
- `Communication/Channels.md`: which channel to use for what, information-sharing norms, response-time expectations, and escalation.

Notes:

- Reusable message templates (announcements, customer replies, release notes) live in `Resources/Templates/`, not here.
- `Communication/` holds *how* the team communicates; `Customers/` holds *who* stakeholders are — cross-link rather than duplicate.
- Mandatory rules about general team conduct stay under `Rules/`; `Communication Rules.md` is the communication-specific complement.
- Keep `Team Conventions.md` lightweight and link to `Communication/` for the detail.

### Routines

Use `Routines/` for the team's recurring, cadence-based practices — standups,
retrospectives, planning, reviews, 1:1s, on-call handoffs, demos, reporting
rhythms. A routine is defined by its cadence, purpose, and format.

- One note per routine: `Routines/Routine - <name>.md`.
- Record cadence (daily/weekly/sprint/monthly/quarterly) as a field in the note, not as subfolders.
- Each note covers: cadence, purpose/outcome, owner/facilitator, participants, format/agenda, timing and duration, channel, inputs/outputs, and related process and responsibility.
- Keep `Routines/` empty except for `.gitkeep` until the team has real routines to document.

Routines vs processes vs meetings:

- `Routines/` is a recurring practice defined by *when and how often* (the rhythm). `Processes/` is an on-demand workflow defined by *the steps to complete a task*. A routine often runs a process — link them.
- A routine's individual occurrences are recorded as dated notes under `Meetings/`; link the routine to its instances. Decisions and action items go to `Decisions/`.
- A routine template can live in `Resources/Templates/`.

### Archives

Use `Archives/` to retain items that are no longer active while preserving where
they lived. `Archives/` mirrors the root structure: to archive an item at
`<Folder>/<path>`, move it to `Archives/<Folder>/<path>`. For example, archiving a
finished project moves `Projects/Acme/Acme.md` to `Archives/Projects/Acme/Acme.md`.

- Keep `Archives/` empty except for `.gitkeep` by default. Create each `Archives/<Folder>/` lazily, on the first item archived into it — do not pre-create the full mirror.
- Archive whole items (a project folder, a repository note, a plan), not the convention or rules stubs.
- Archived content is inactive history: treat it as a record, not as current guidance.
- Append-only logs (`Decisions/`, `History/`, `Meetings/`) are usually not archived; they already record the past.
- Links: prefer name-based wikilinks (`[[Acme]]`) over path-based ones (`[[Projects/Acme/Acme]]`) so links survive a move. When you archive an item, update any path-based links that pointed to it.

## Cross-Linking Rules

- Project notes should link to related responsibilities when relevant.
- Repository notes should link to related responsibilities when relevant.
- Plans should link to related responsibilities when relevant.
- Responsibility notes should link back to related projects, repositories, and plans when those exist.
- Repository notes should use Obsidian-style links (`[[...]]`) where internal note links are needed.
- The `docs/` folder may use standard Markdown links where that is more appropriate for the published site.
