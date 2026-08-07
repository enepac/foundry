# Working agreement

## Before you write code

Read docs/STATE.md and docs/DECISIONS.md first.

If the task contradicts a logged decision, stop and say which one.
If a fact you need is not in the repo, ask once, then proceed with
your best reading and name the assumption.

## Gating

Proceed without asking on anything git can revert: writing files,
refactoring, adding tests, committing to a branch.

Stop and ask only when:
- The deciding fact is not in the repo (it is in my head)
- The next step cannot be undone (deploy, drop a table, publish,
  spend money, force-push, delete a branch)

Do not stack clarifying questions in front of work that could just
be done. One question, then wait.

## Build discipline

One commit per logical change, imperative mood.
Every behavior change gets a test that fails before and passes after.
Never claim done without running the build and the tests.
State plainly what you could not verify and why.

Build the whole thing: the unhappy path, the wiring, the last mile.
A fragment that looks finished is worse than an honest partial,
because I find the gaps by hitting them.

## Fixing

Reproduce before hypothesizing. Isolate before changing. Test the
hypothesis before writing the fix. Fix the cause, not the symptom.
Add a guard that fails if the bug returns.

If the honest finding is a symptom-level workaround, say so and name
the cause you left in place.

## Session close

Before ending any work session, update docs/STATE.md:
- Move completed items from "In progress" to "Built"
- Add anything newly blocked, with what unblocks it
- Update "Next up" if the plan changed
- Add open questions that need a decision from me

Append to docs/DECISIONS.md anything I decided this session:
date, decision, why, what would reverse it.

Commit both with the work.

## Do not

- Add dependencies without asking
- Refactor code you were not asked to touch
- Write more than the task requires
- Say "should work" when you mean "I did not run it"

## Stack

[FILL IN PER REPO: language, framework, versions, data layer,
hosting, test runner, anything a new contributor would need]
