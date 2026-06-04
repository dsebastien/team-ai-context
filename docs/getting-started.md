---
title: Getting Started
nav_order: 2
---

# Getting Started

Use this sequence after creating a repository from the template.

## 1. Set Identity

- Update `README.md`.
- Add team identity notes under `Team/`.
- Add glossary terms to `Terms and Abbreviations.md`.
- Add organization context notes under `Company/`.
- Add stakeholder or customer notes under `Customers/`.

## 2. Define Working Agreements

Update the core root notes:

- `Team Conventions.md`
- `Definition of Done.md`
- `Terms and Abbreviations.md`

Keep those three notes light. Use the repository docs for the fuller guidance about what they should contain.

Then add the team-wide convention notes as needed:

- notes under `Rules/` for mandatory rules
- `Projects/Project Conventions.md` for shared project conventions
- `Repositories/Repository Conventions.md` for shared repository conventions

## 3. Shape the Ownership Model

Adjust the `Responsibilities/` folder so it matches your real team structure.

You can add, rename, or remove responsibility-area folders as needed.

## 4. Tailor the Structure

Adjust the rest of the repository structure to fit your team:

- add or remove folders under `Projects/`, `Repositories/`, and `Processes/` as needed
- keep `Structure.md` aligned with the structure you actually adopt
- leave folders empty with `.gitkeep` until you have real content to add

## 5. Add Real Working Notes

Start adding:

- goals
- achievements
- projects
- plans
- decisions
- meetings
- history entries

## 6. Configure Tooling

- update `.mcp.json` if you use MCP servers — see [Tooling and Secrets](tooling.md)
- add tool notes under `Resources/Tools/`
- add scripts or templates under `Resources/Scripts/` and `Resources/Templates/`
- keep secrets outside Git

## 7. Onboard Team Members

- assign an onboarding owner
- confirm required access for the new team member
- ask them to review:
  - `README.md`
  - `Structure.md`
  - `AGENTS.md`
  - `Team Conventions.md`
  - `Definition of Done.md`
- confirm they can find the notes relevant to their role
- confirm they understand how projects, responsibilities, goals, achievements, plans, and repositories are documented

## 8. Prepare for Publishing

- confirm the `LICENSE` ownership line
- remove unresolved placeholders
- check for private or internal names, URLs, and sensitive data
- review the docs site and GitHub Pages settings before publishing

## 9. Keep Linking Consistent

In the repository notes, use Obsidian-style links between related notes so the context stays navigable.

## 10. Keep Root Notes Lightweight

For root notes such as:

- `Team Conventions.md`
- `Definition of Done.md`
- `Terms and Abbreviations.md`

keep the note itself short, then put the richer explanation in `Structure.md` and the docs site.

For the detailed guidance, review [Note Guidance](note-guidance.md).
