---
name: log
description: Update the repo's state and decision records. Use at the close of any work session, or when a decision has just been made.
---

Update docs/STATE.md:
- Move finished items from "In progress" to "Built"
- Update "Next up" if the plan changed
- Add anything newly blocked, with what unblocks it
- Add open questions that need a decision from me

Append to docs/DECISIONS.md any decision made this session:
date, decision, why, what would reverse it. Append only, never edit
history.

Keep STATE.md to one screen. It is a state file, not a changelog.

Commit both with a descriptive message.
