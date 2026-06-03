# Mandatory Rules for Automated Assistants

This repository stores shared team context.
Any automated assistant used with this repository should follow these rules.

## First

- Read [[Structure]] to understand the repository layout.
- Read all Markdown files at the repository root.
- Read all Markdown files under `Team/` when they exist.
- Read all Markdown files under `Responsibilities/` and related sub-folders.
- Read all rules under `AI/Rules/`.

## Always

- Respect mandatory rules documented under `Rules/`, the agent-behavior rules under `AI/Rules/`, along with [[Team Conventions]] and [[Definition of Done]].
- Use Obsidian-style wikilinks (`[[...]]`) for links between repository notes.
- Keep cross-links consistent:
  - projects should link to responsibilities when relevant
  - repositories should link to responsibilities when relevant
  - plans should link to responsibilities when relevant

## When working on a specific item

- Determine whether the request is about:
  - a team/portfolio initiative documented under `Projects/`
  - a repository documented under `Repositories/`
  - a process, responsibility, or organizational topic documented elsewhere in the repository
  - ...
- When working on a project for the first time, read [[Projects/Project Conventions]].
- When working on a repository for the first time, read [[Repositories/Repository Conventions]].
- Read the relevant notes before making changes.
- If an external source code repository is involved:
  - verify it is available locally
  - update safely without discarding local changes (ask questions if needed)
  - use a dedicated feature branch if branching is needed
  - follow that repository's own local instructions (`AGENTS.md`, `CONTRIBUTING.md`, or equivalent)
- Search for relevant memories to load in `AI/Memory/`

## Docs Folder Exception

The `docs/` folder is intended for GitHub Pages publication.
Pages in `docs/` may use website-friendly front matter and standard Markdown links where needed for the published site.
