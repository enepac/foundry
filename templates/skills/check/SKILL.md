---
name: check
description: Verify that what was built actually works. Use after any build or fix, before claiming done.
---

Run the build. Run the tests. Then try to break it: the unhappy path,
empty input, the error branch, the case the happy path assumes away.

Report in this shape:
- What passed
- What failed, with the actual output
- What you could not verify, and why

Do not report green while conditions are untested. An untested
condition is a gap, not a pass. "Should work" is not "works".
