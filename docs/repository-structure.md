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

`Team/`, `Company/`, `Customers/`, `Rules/`, and `Responsibilities/` also start empty by default. Add real notes there only when you have useful context to capture.

## Projects

Keep `Projects/` empty until you have a real initiative to document.

When you do:

- keep `Projects/Conventions.md` for shared project/repository conventions
- create one folder per project or initiative
- add one main note named after that project
- link it to related responsibilities, plans, or repositories when relevant

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

## Naming Rules

Use date-prefixed names for dated notes.

Recommended patterns:

- `YYYY-MM-DD - Decision - <title>.md`
- `YYYY-MM-DD - Event - <title>.md`
- `YYYY-MM-DD - Meeting - <title>.md`
- `YYYY-MM-DD - Goal - <title>.md`
- `YYYY-MM-DD - Plan - <title>.md`
