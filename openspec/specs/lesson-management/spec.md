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

### Requirement: Progressive difficulty

The coach SHALL increase production difficulty without sudden jumps.

#### Scenario: Advancing support level

- **GIVEN** the learner is consistently accurate at the current level
- **WHEN** the next lesson is prepared
- **THEN** practice SHALL progress from direct translation to contextualized sentences, connected writing, and spontaneous speaking

