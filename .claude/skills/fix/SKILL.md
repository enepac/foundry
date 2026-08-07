---
name: fix
description: Diagnose and fix a defect. Use when something is broken, erroring, or producing wrong output.
---

Do not guess before reproducing.

1. Reproduce: smallest reliable repro, exact inputs, observed vs expected.
   If you cannot reproduce it, say so and name the one observation you
   need from me.
2. Isolate: narrow to the smallest region. Bisect where history exists.
3. Hypothesize: one falsifiable cause, plus the cheaper alternative you
   have not ruled out.
4. Test the hypothesis before changing code.
5. Fix the cause. If you can only reach the symptom, say so and name
   the cause you left in place.
6. Guard: add a test that fails if this returns.
7. Name anything the fix could not confirm.
