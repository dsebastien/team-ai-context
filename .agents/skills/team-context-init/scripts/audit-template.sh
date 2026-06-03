#!/usr/bin/env bash
# Audit a team-ai-context repository for leftover template scaffolding and
# unfilled sections. Run from the repository root:
#
#   bash .agents/skills/team-context-init/scripts/audit-template.sh
#
# Output is grouped so an assistant can decide what still needs filling in.
set -uo pipefail

cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"

echo "== docs/ scaffolding =="
if [ -d docs ]; then
  echo "PRESENT  docs/ template guide still here -> remove during init"
else
  echo "ok       docs/ already removed"
fi
echo

echo "== Stub notes (contain a bare '...' placeholder line) =="
stub=0
while IFS= read -r f; do
  if grep -qxF '...' "$f"; then
    echo "STUB     $f"
    stub=1
  fi
done < <(find . -name '*.md' -not -path './.git/*' -not -path './docs/*' -not -path './.agents/*')
[ "$stub" -eq 0 ] && echo "ok       no stub notes"
echo

echo "== Empty sections (folder holds only .gitkeep) =="
empty=0
while IFS= read -r d; do
  n=$(find "$d" -mindepth 1 -not -name '.gitkeep' | wc -l | tr -d ' ')
  if [ -f "$d/.gitkeep" ] && [ "$n" -eq 0 ]; then
    echo "EMPTY    ${d#./}"
    empty=1
  fi
done < <(find . -type d -not -path './.git/*' -not -path './.agents/*')
[ "$empty" -eq 0 ] && echo "ok       no empty sections"
echo

echo "== Template placeholders =="
ph=0
while IFS= read -r f; do echo "TITLE    $f still says 'Team Context Template'"; ph=1; done \
  < <(grep -rIl 'Team Context Template' --include='*.md' . 2>/dev/null | grep -v '^./.agents/')
[ -f .mcp.json ] && grep -qE 'example-server|EXAMPLE_API' .mcp.json && { echo "MCP      .mcp.json still has the example-server placeholder"; ph=1; }
while IFS= read -r f; do echo "PLHLDR   $f has <replace-with-...>/<owner> style placeholders"; ph=1; done \
  < <(grep -rIlE '<replace-with-|<your-org|<owner>|<repository|<repository-name>' . --include='*.md' 2>/dev/null | grep -v '^./.agents/')
[ "$ph" -eq 0 ] && echo "ok       no obvious placeholders"
echo

echo "== LICENSE =="
if [ -f LICENSE ]; then
  echo "review   confirm copyright holder line: $(grep -i '^Copyright' LICENSE || echo '(none found)')"
else
  echo "missing  no LICENSE file"
fi
