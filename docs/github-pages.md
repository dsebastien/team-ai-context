---
title: GitHub Pages
nav_order: 5
---

# GitHub Pages

The `docs/` folder is prepared for a lightweight GitHub Pages site using Jekyll and the Just the Docs theme.

## What To Update

Before publishing, update `docs/_config.yml`:

- `title`
- `description`
- `url`
- `baseurl`
- `aux_links`

## Typical Setup

In GitHub repository settings:

1. Open **Pages**.
2. Select deployment from the main branch.
3. Set the source folder to `docs/` if you are using branch-based Pages.

If your organization uses an actions-based Pages workflow instead, keep this `docs/` content and adapt the deployment mechanism separately.

## Content Model

The site is organized as:

- a landing page
- a few topic pages
- a single `_config.yml`

This keeps the published guide easy to navigate and easy to maintain.
