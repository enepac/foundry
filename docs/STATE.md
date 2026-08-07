# STATE

Last updated: 2026-08-06

## Built
- Repo at github.com/enepac/foundry, public, raw URLs verified live
- docs/METHOD.md: the method itself, mirrored into the Foundry project
- docs/STATE.md: this file, fetched by chat rather than mirrored
- CLAUDE.md at root, plus templates/CLAUDE.md as the per-repo template
- Four skills in .claude/skills/ and templates/skills/: plan, check, fix, log
- Templates for PRODUCT.md, DECISIONS.md, STATE.md
- new-project.sh: stamps the method into a new or existing repo, non-destructive
- Foundry project in claude.ai: instructions set, METHOD.md mirrored,
  STATE.md raw URL registered as a fetch source

## In progress
- Nothing

## Next up
1. Run new-project.sh against one real product repo and fill in PRODUCT.md
2. Use the method on one real feature end to end, chat decides then Claude Code builds
3. Edit whatever fails during that first run

## Blocked
- Nothing

## Open questions
- Which repo goes first
- Whether four skills are the right four, judged after the first real run
