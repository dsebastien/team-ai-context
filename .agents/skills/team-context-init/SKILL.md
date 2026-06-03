---
name: team-context-init
description: Initialize and adapt a new team knowledge base created from the Team Context Template — a repository of Markdown notes about how a team works (identity, rules, responsibilities, projects, decisions). Use when the user wants to set up, initialize, bootstrap, or fill in their team context / AI context repo, or right after creating one from the template. Strong signals - a docs/ template guide is still present, or root notes like 'Team Conventions.md' still contain '...' placeholders. NOT for generating a CLAUDE.md or documenting a code project — that is the built-in init. Workflow - remove the template docs/ guide, audit unfilled sections (stub notes, empty folders, placeholders), then interview the user section by section and write real content using the repo's naming and [[wikilink]] conventions.
---

# Team Context Init

Turn a freshly-cloned copy of the Team Context Template into a real, populated team context repository. Work in two phases: **strip the template scaffolding**, then **interrogate the user** until every section is either filled in or deliberately deferred.

## When To Use

- Immediately after a repository was created from the Team Context Template.
- When the user asks to initialize, bootstrap, set up, or fill in their team context / AI context repo.
- When `docs/` (the template's own guide) is still present, or root notes still contain `...` placeholders.

Do **not** use this to edit an already-populated repo's individual notes — for that, follow the normal conventions in `Structure.md` directly.

## Guardrails

- This skill mutates the repo it runs in. Confirm you are in the user's **new** repository, not the upstream template, before deleting anything.
- Never invent facts. Every value written must come from the user or an existing tracked file. If the user does not know an answer, leave the section empty (keep its `.gitkeep`) rather than guessing.
- Keep the repo's conventions: Obsidian-style `[[...]]` wikilinks between notes, date-prefixed names for dated notes, one topic per note, lightweight root notes. Read `Structure.md` if unsure of a path or naming rule.
- Make focused commits is optional and only on the user's request; do not push.

## Workflow

### 1) Orient

1. Read `Structure.md`, `AGENTS.md`, and `README.md` to confirm the layout and conventions.
2. Confirm with the user this is their new repo (not the template) before removing files.

### 2) Remove the template docs scaffolding

The `docs/` folder is the template's own published user guide. A real team context repo does not need it.

1. If `docs/` exists, remove it: `git rm -r docs` (fall back to `rm -rf docs` if the repo is not git-tracked).
2. Scrub references to it so nothing dangles. Check and update as needed:
   - `README.md` — remove lines pointing to the published guide / `docs/`.
   - `Structure.md` — remove the `docs/` row and any "see the docs site" pointers.
   - `AGENTS.md` — remove the "Docs Folder Exception" section.
3. Re-grep to confirm no `docs/` references remain: `grep -rIn 'docs/' --include='*.md' .`

### 3) Audit what is unfilled

Run the audit script from the repo root:

```bash
bash .agents/skills/team-context-init/scripts/audit-template.sh
```

It reports, in order:
- whether `docs/` is still present,
- **stub notes** (files containing a bare `...` line),
- **empty sections** (folders holding only `.gitkeep`),
- **template placeholders** (`Team Context Template` titles, `example-server` in `.mcp.json`, `<replace-with-...>` markers),
- the `LICENSE` copyright line to confirm.

Use the output as the checklist for the interview. Do not stop until each reported item is addressed or explicitly deferred by the user.

### 4) Interview the user ("grill" them)

Go section by section, in the priority order below (it mirrors the `AGENTS.md` reading order). Ask focused questions, then write the answers into the correct files. Prefer the AskUserQuestion tool for choices, plain questions for free text. Ask in small batches; do not dump every question at once. After each section, write the note(s) before moving on.

**a. Team identity** → `Team/`, `README.md`
- Team name, mission/mandate, members and roles, internal sub-groups, operating model.
- Replace the `Team Context Template` title and template blurb in `README.md` with the real team's identity. Add identity notes under `Team/` (e.g. `Team/Overview.md`, `Team/Members.md`).

**b. Glossary** → `Terms and Abbreviations.md`
- Acronyms, team/domain/organization-specific terms. Replace the `...` stub with real entries (keep it lightweight).

**c. Organization context** → `Company/`
- Where the team sits, org structure, relevant business/operating context. Add notes only if they help explain the team's context; otherwise leave empty.

**d. Stakeholders / customers** → `Customers/`
- Customer groups, internal partner teams, audiences, service expectations. Add notes where useful.

**e. Mandatory rules** → `Rules/`
- Security, approval, change-control, documentation rules. One note per domain when they differ.

**f. Team conventions** → `Team Conventions.md`
- Stable, non-mandatory working conventions (naming, documentation, linking, collaboration habits). Replace the `...` stub; keep it short. Move any full workflow into `Processes/`.

**g. Definition of Done** → `Definition of Done.md`
- The quality bar before work is complete (validation, review, documentation, handoff expectations). Replace the `...` stub; keep it outcome-focused.

**h. Responsibilities** → `Responsibilities/`
- Durable ownership areas. Create one folder per real area only when the user can name it. Cross-link to related projects/repos/plans.

**i. Project conventions + first projects** → `Projects/Project Conventions.md`, `Projects/<name>/<name>.md`
- Replace the conventions `...` stub with how project notes are organized/linked. Create a folder + main note per real, current initiative. Link projects to responsibilities.

**j. Repository conventions + tracked repos** → `Repositories/Repository Conventions.md`, `Repositories/<forge>/<group>/Repository - <name>.md`
- Replace the conventions `...` stub. Add repo notes grouped by forge then org/group, only if the team tracks repos here. Link repos to responsibilities.

**k. Processes** → `Processes/`
- Repeatable workflows/procedures the team runs. One note per process.

**l. Tooling & MCP** → `.mcp.json`, `Resources/`
- Replace the `example-server` placeholder in `.mcp.json` with real MCP servers, or remove the file if unused. Add tool notes under `Resources/Tools/`, scripts under `Resources/Scripts/`, templates under `Resources/Templates/`.

**m. License** → `LICENSE`
- Confirm the copyright holder line names the right owner.

### 5) Cross-link and finalize

1. Apply the cross-linking rules from `Structure.md`: projects/repositories/plans link to responsibilities, and responsibilities link back.
2. Re-run the audit script. Every remaining stub/empty item must be a section the user **chose** to defer (still `.gitkeep`), not an oversight.
3. Summarize for the user: what was filled in, what was intentionally left empty, and the suggested next notes (first `Plans/`, `Decisions/`, `Meetings/`, `History/` entries, using the dated naming patterns in `Structure.md`).

## Validation Checklist

Init is complete when:
1. `docs/` is removed and no Markdown file references it.
2. No stub note still contains a bare `...` line (unless the user deferred it).
3. `README.md` no longer says "Team Context Template" and describes the real team.
4. `.mcp.json` has real servers or was removed; no `<replace-with-...>` placeholders remain.
5. `LICENSE` names the correct copyright holder.
6. Every populated note uses correct paths, naming, and `[[...]]` wikilinks per `Structure.md`.
7. The audit script's only remaining items are sections the user explicitly chose to leave empty.
