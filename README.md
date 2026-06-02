# Team Context Template

A reusable repository template for documenting how a team works.

It is designed to work for most organizations, not just software teams. You can use it for engineering, operations, finance, HR, legal, support, enablement, research, product, or mixed-function teams.

## What This Template Helps You Capture

- Team identity, rules, conventions, and definition of done
- Organizational context and stakeholder landscape
- Responsibilities and ownership boundaries
- Projects, repositories, plans, goals, decisions, meeting notes, and history
- Reusable resources such as templates, scripts, and tool references

## Quick Start

1. Create a repository from this template.
2. Read [[docs/getting-started]].
3. Add team identity notes under `Team/` and update [[Terms and Abbreviations]].
4. Add organization context notes under `Company/` and stakeholder/customer notes under `Customers/`.
5. Define your mandatory rules under `Rules/`, then fill [[Team Conventions]] and [[Team Definition of Done]].
6. Tailor the `Responsibilities/` folder to match your ownership model.
7. Add your first real entries under `Projects/`, `Plans/`, `Decisions/`, `Meetings/`, and `History/`.

## Repository Guide

- The main repository structure is documented in [[Structure]].
- The published user guide lives under `docs/`.
- The `docs/` folder is prepared for GitHub Pages with a lightweight Jekyll + Just the Docs configuration.

## Design Principles

- Keep notes small, specific, and linkable.
- Prefer explicit naming conventions over ad hoc file names.
- Separate enduring responsibilities from time-bound projects and plans.
- Keep private credentials, personal data, and internal-only secrets out of version control.
- Use `[[...]]` links between notes in the repository content.

## Core Notes

- [[Team Conventions]]
- [[Team Definition of Done]]
- [[Structure]]

## Publishing the User Guide

The `docs/` folder contains a GitHub Pages-friendly user guide. See `docs/github-pages.md` for setup guidance after the repository is published.

## License

This template is distributed under the MIT License. See `LICENSE`.
