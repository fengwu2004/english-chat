# English Coach

This project turns a locked list of 355 phrasal and multi-word verbs into a
repeatable writing and speaking programme.

## One-time setup

From the project root, install and initialize OpenSpec if it is not already
available:

```bash
npm install -g @fission-ai/openspec@latest
openspec init --tools codex
```

Restart Codex after initialization so it discovers the generated OpenSpec
skills. The checked-in specifications and vocabulary files in this package are
the project content; initialization adds the tool integration around them.

## Start a session in Codex

Open this folder as the working directory and use one of these requests:

- `Start today's English session.`
- `Start a five-item phrasal-verb round.`
- `Give me a writing task.`
- `Give me a speaking task.`
- `Continue the current round.`
- `Start wrong-answer review.`

Codex should read `AGENTS.md`, the applicable specifications in
`openspec/specs/`, and the current vocabulary and progress files before it
creates a lesson.

## Pools

- `vocabulary/active-phrasal-verbs.md`: locked source pool for the current pass.
- `vocabulary/error-pool.md`: items answered incorrectly during completed work.
- `vocabulary/mastered.md`: items produced correctly and naturally.

An item is tested only once in a complete pass. A wrong item moves to the error
pool but is not tested again until the pass finishes. During wrong-answer review,
Codex must not introduce new items.

## OpenSpec use

The permanent coaching behavior lives under `openspec/specs/`. Daily lessons
do not need a new OpenSpec change proposal. Create a change only when you want
to modify the coaching system itself—for example, changing the mastery rule or
adding pronunciation scoring.

