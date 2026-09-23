# ChatGPT Voice Practice

This folder bridges the local learning record and a ChatGPT Project used for
Voice practice.

## One-time setup

1. Create a ChatGPT Project named `English Speaking Practice`.
2. Copy the contents of `project-instructions.md` into the Project
   instructions.
3. Upload `voice-session-pack.md` as a Project source.

## Before each Voice session

From the repository root, run:

```bash
./voice-practice/generate-session-pack.sh
```

The default pack contains any remaining active target followed by up to 15
error-pool targets that have not yet been tested in the current review pass.
To change the number of error-pool targets:

```bash
./voice-practice/generate-session-pack.sh 10
```

Replace the old `voice-session-pack.md` in the ChatGPT Project with the newly
generated file. Then start Voice and say:

> Use today's session pack. Start the oral lesson. Do not show me the target expressions.

## After each Voice session

Ask ChatGPT:

> End the session and produce the exact Markdown report requested in the project instructions.

Copy the report into the local Codex chat. Codex can then update the vocabulary
pools, progress logs, review schedule, and the next Voice session pack.

The generated pack is intentionally compact. GitHub remains the durable source
of truth; the ChatGPT Project receives only the context needed for the current
Voice session.
