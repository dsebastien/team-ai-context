---
description: Initialize and adapt this repo from the Team Context Template (remove docs/, audit unfilled sections, interview the user)
argument-hint: "[optional: section to focus on, e.g. Team, Rules, Projects]"
allowed-tools: Bash(bash .agents/skills/team-context-init/scripts/audit-template.sh), Bash(git rm:*), Bash(grep:*), Read, Edit, Write, AskUserQuestion
---

Read `.agents/skills/team-context-init/SKILL.md` and execute its workflow exactly as written. That SKILL.md is the authoritative, single source of truth for every step — do not improvise steps that are not in it.

If `$ARGUMENTS` is provided, treat it as the section to start with (e.g. Team, Rules, Projects), then continue through the rest of the skill's workflow.
