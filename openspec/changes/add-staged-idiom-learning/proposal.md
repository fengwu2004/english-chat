## Why

The learner approved a separate idiom track, starting with the first 30 items
of the conversation's frequency-informed list before gradually expanding.
Persistent scope and evidence are needed so reading a list does not count as
mastery and existing phrasal-verb or collocation work is preserved.

## What Changes

- Add an idiom-learning capability with complete passes, error-only review,
  later varied retrieval, and a target-free checkpoint before expansion.
- Store 119 unique approved expressions and examples in vocabulary/idioms.md.
  Preserve the first 30; remove the duplicate easier said than done.
- Initialize idiom state without recording any learner attempts.
- Connect agent instructions, README, and OpenSpec context to the new track.

## Capabilities

### New Capabilities
- `idiom-learning`: initial 30-item stage followed by groups of ten; status,
  evidence, and progression isolated from existing vocabulary pools.

### Modified Capabilities

None. Existing lesson and progress rules are reused with idiom-specific state.

## Impact

Adds a catalogue, progress log, capability specification, and this change
record; updates AGENTS.md, README.md, and openspec/config.yaml. Appends a
zero-attempt setup entry to the session log. No existing pool entries or
learner assessments are reclassified.
