---
name: plan
description: Plan a change against the real files before building. Use when a task needs more than one edit, touches more than one file, or the approach is not obvious. Produces a written plan and stops.
---

Read docs/STATE.md and docs/DECISIONS.md, then read the code the task
actually touches. Plan against what is there, not against a description.

Produce:
1. Done, as an observable end-state someone else could check
2. The component list: every part that must exist for done to be true,
   including the parts I did not mention
3. HAVE / NEED / UNKNOWN for each
4. The order, and which piece is the bottleneck
5. Any assumption you had to make

If a genuine fork exists and the deciding fact is not in the repo,
ask one question. Otherwise pick the strongest reading and name it.

Stop after the plan. Do not build until I approve.
