---
title: Tooling and Secrets
nav_order: 5
---

# Tooling and Secrets

This page explains how to share tooling configuration with the team and, just as importantly, what must never be committed.

## Never Commit Secrets

This repository is shared context. Treat everything in it as readable by everyone who can clone the repo, and by anyone it is ever published to.

Keep all of the following out of version control:

- API tokens, keys, and passwords
- access tokens and session cookies
- private connection strings and database credentials
- personal data and internal-only URLs or identifiers

Store secrets where they belong instead:

- in each person's local environment variables
- in a local, untracked `.env` file (add it to `.gitignore`)
- in your organization's secret manager

If a secret is ever committed, assume it is compromised: rotate it, then remove it from history. Reference secrets from configuration; never paste their values into tracked files.

## Sharing MCP Servers with `.mcp.json`

`.mcp.json` at the repository root defines [Model Context Protocol](https://modelcontextprotocol.io) servers for AI assistants. It is the project-scoped MCP configuration convention introduced by Claude Code and read by a growing set of MCP-aware tools. Committing it lets the whole team share one consistent set of MCP server definitions: everyone who clones the repo gets the same servers, with the same commands and arguments, without configuring them by hand.

A server entry typically declares:

- the command and arguments used to launch the server
- a timeout
- the environment variables the server expects

The template ships a single `example-server` entry as a placeholder. Replace it with your team's real servers, or remove the file if your team does not use MCP.

## Keep Secrets Out of `.mcp.json`

`.mcp.json` is committed, so it must not contain any secret values.

Do not write tokens, keys, or passwords directly into the file. Instead, reference environment variables and let each person supply the values locally:

```json
{
  "mcpServers": {
    "example-server": {
      "command": "npx",
      "args": ["example-mcp-server"],
      "timeout": 120000,
      "env": {
        "EXAMPLE_API_URL": "$EXAMPLE_API_URL",
        "EXAMPLE_API_TOKEN": "$EXAMPLE_API_TOKEN"
      }
    }
  }
}
```

Here the file declares only the *names* of the variables. Each team member sets `EXAMPLE_API_URL` and `EXAMPLE_API_TOKEN` in their own environment, so the shared configuration stays useful while the sensitive values never enter the repository.

Before publishing the repository, review `.mcp.json` for leftover placeholders and confirm no real secret value was ever pasted in.

## Learn More

- [Model Context Protocol — overview](https://modelcontextprotocol.io)
- [Model Context Protocol — specification](https://modelcontextprotocol.io/specification)
- [Claude Code — Connect to tools via MCP](https://code.claude.com/docs/en/mcp) (documents project-scoped `.mcp.json` and team sharing)
