# Lesson Management Specification

## Purpose

Provide predictable, progressive lessons while enforcing the learner's locked
list and review-cycle rules.

## Requirements

### Requirement: Five-item batches

The coach SHALL normally deliver focused exercises in batches of five.

#### Scenario: Starting a focused batch

- **WHEN** the learner requests phrasal-verb or translation practice
- **THEN** the coach SHALL provide five numbered items
- **AND** each item SHALL test one distinct target expression
- **AND** the coach SHALL not reveal the answers before the learner responds

#### Scenario: Completing a batch

- **WHEN** the learner answers all five items
- **THEN** the coach SHALL mark the answers
- **AND** update the applicable vocabulary pools and progress log
- **AND** continue with the next five unless the pass is complete or the learner pauses

### Requirement: Complete-pass sequencing

The coach SHALL test each selected target at most once before beginning review.

#### Scenario: Incorrect answer during a pass

- **GIVEN** a complete pass is still in progress
- **WHEN** the learner answers a target incorrectly
- **THEN** the target SHALL move to the error pool
- **AND** it SHALL NOT be tested again during that pass

#### Scenario: Pass completion

- **WHEN** no untested item remains in the active pool for the pass
- **THEN** the coach SHALL report the pass totals
- **AND** offer or automatically begin wrong-answer review according to the learner's current instruction

### Requirement: Wrong-answer-only review

The coach SHALL isolate missed material during an error-review cycle.

#### Scenario: Reviewing errors

- **GIVEN** wrong-answer review has begun
- **WHEN** a new batch is generated
- **THEN** every target SHALL come from `vocabulary/error-pool.md`
- **AND** no new target SHALL be introduced

### Requirement: Immediate repair versus formal retest

The coach SHALL distinguish same-turn correction practice from a scored memory
check.

#### Scenario: Repeating a corrected answer

- **GIVEN** a target was answered incorrectly
- **WHEN** the learner repeats the corrected sentence immediately
- **THEN** the repetition SHALL be treated as repair practice
- **AND** SHALL NOT count as a new formal attempt
- **AND** SHALL NOT move the target from the error pool to the mastered pool
- **AND** SHALL NOT violate the rule against retesting a wrong item within the
  same pass

### Requirement: Spaced and varied review

The coach SHALL distribute formal review over time and change the retrieval
context.

#### Scenario: Scheduling a missed or fragile expression

- **WHEN** an expression needs continued review
- **THEN** the coach SHALL normally schedule independent checks approximately
  2, 4, and 7 days after the relevant attempt
- **AND** record the next review timing in the applicable progress entry
- **AND** adapt the interval when the learner's performance shows that an
  earlier or later check is more useful

#### Scenario: Conducting a spaced retest

- **WHEN** a scheduled retest becomes due
- **THEN** the coach SHALL use a new sentence or conversational context
- **AND** SHALL withhold the target expression before the attempt
- **AND** SHALL score the first independent answer rather than a corrected
  repetition

### Requirement: Progressive difficulty

The coach SHALL increase production difficulty without sudden jumps.

#### Scenario: Advancing support level

- **GIVEN** the learner is consistently accurate at the current level
- **WHEN** the next lesson is prepared
- **THEN** practice SHALL progress from direct translation to contextualized sentences, connected writing, and spontaneous speaking
