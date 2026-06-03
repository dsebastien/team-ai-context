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
- `Projects/`: business, delivery, or initiative-level work items
- `Repositories/`: source or configuration repositories, when relevant
- `Resources/`: reusable templates, scripts, and references
- `Responsibilities/`: responsibility groups and ownership areas
- `AI/`: AI- and agent-related context: conversations, memory, agent rules, prompts, and personas
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

Use `Rules/` for mandatory rules that apply to the team, a function, or a way of working.
Keep `Rules/` empty except for `.gitkeep` until you have real rule notes to add.

### Customers

Use `Customers/` for stakeholder, customer, audience, or beneficiary context.
Keep `Customers/` empty except for `.gitkeep` until you have real stakeholder notes to add.

### Projects

Store project or initiative notes in:

- `Projects/<project name>/<project name>.md`

Notes:

- Use `Projects/Project Conventions.md` for team-wide project conventions.
- Keep `Projects/` empty except for `.gitkeep` until you create real project folders.
- Create a project folder only when there is an actual initiative to document.
- Use one main note per project folder.

### Repositories

If you track repositories here, organize them by forge or platform, then by org/group:

- Use `Repositories/Repository Conventions.md` for team-wide repository conventions.
- `Repositories/<forge>/<group>/Repository - <name>.md`

Example:

- `Repositories/GitHub/example-org/Repository - example-template.md`

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

## Cross-Linking Rules

- Project notes should link to related responsibilities when relevant.
- Repository notes should link to related responsibilities when relevant.
- Plans should link to related responsibilities when relevant.
- Responsibility notes should link back to related projects, repositories, and plans when those exist.
- Repository notes should use Obsidian-style links (`[[...]]`) where internal note links are needed.
- The `docs/` folder may use standard Markdown links where that is more appropriate for the published site.
