# METHOD

The build method. Tool-agnostic by design: this describes how work
moves, not which product it moves through.

## The premise

Deliberation is cheap where the files are and expensive where they
aren't. Chat reasons from descriptions; Claude Code reasons from the
code. Put each kind of thinking where its inputs live.

## The surface split

Chat decides. Claude Code builds. Nothing crosses back.

The test when a question is ambiguous: would I need to open a file to
answer this? If yes, it belongs in Claude Code. If the deciding fact
is in my head, in the market, or in a tradeoff nobody has written
down, it belongs in chat.

Chat handles:
- What to build and for whom
- Genuine forks with no technical answer (pricing, scope, sequencing)
- Stack and architecture choices, before they are made
- Anything outside the codebase
- Post-mortems on approach, not on bugs

Claude Code handles:
- Planning against real files
- All building, fixing, verifying, refactoring
- All documentation and state updates
- Reviewing the code it can see

The output of every chat session is one of two things: a written
decision, or a paste-ready prompt for Claude Code. A session that
produces neither was a conversation, not work.

## The four durable files

Every product repo carries these. They are the layer that survives
tooling changes, because they are prose, not configuration.

- PRODUCT.md    what this is, who it is for, what done means
- DECISIONS.md  append-only: date, decision, why, what would reverse it
- STATE.md      what is built, what is next, what is blocked
- CLAUDE.md     how to work in this repo

Chat never reads src/. It reads these. A pricing decision does not
get better for seeing the auth middleware.

## The loop

Decide, spec, build, verify, log. Repeat.

Most cycles skip "decide" entirely, because most work is execution
against a spec that already exists. Chat enters only at a genuine
fork.

## Context flow

Claude Code builds and updates STATE.md as the last step of every
session, committed with the work. A project chat reads STATE.md,
sees the open questions, resolves one, and emits a prompt. Claude
Code logs the decision to DECISIONS.md and builds it. STATE.md
updates again.

Nothing is re-explained. Each surface writes what the other reads.
The repo is the shared memory between two things that cannot talk
to each other directly.

Freshness: the repo is canonical, project knowledge is a mirror.
Slow-changing files (METHOD.md, PRODUCT.md) may be mirrored into
project knowledge. Fast-changing files (STATE.md) are never mirrored:
they are fetched from the raw URL, because a stale STATE.md is worse
than none, since it looks current. When a decision turns on
implementation detail rather than intent, it was never a chat
question: ask Claude Code.

## Gating

Gate only on irreversibility. A gate before deploying to production,
dropping a table, publishing, or spending money earns its cost. A
gate before writing a file, refactoring, or committing to a branch is
friction: git is the undo button.

Claude Code proceeds without asking on anything revertible, and stops
only when the deciding fact is not in the repo or the next step
cannot be undone. Verification happens after, as one honest line:
what was built, what passed, what could not be verified and why.

## How this survives new tooling

Three properties do the work:

1. The durable layer is prose in a repo, readable by a human, by
   Claude, or by whatever comes next. No vendor syntax.
2. The methodology is data, not habit. Commands are files. Porting
   means moving markdown, not rebuilding a mental model.
3. Discipline is enforced where it is free. A rule in CLAUDE.md costs
   zero turns. A rule that must be invoked costs one every time,
   which is why invoked systems decay.

## Maintenance

This file is edited when it fails, not on a schedule. When something
goes wrong in a build, the question is which line of this document
should have prevented it. Edit that line. Ten real edits beat any
designed-up-front version, because they are shaped by actual failures
rather than guesses about them.
