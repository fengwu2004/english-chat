# Progress Tracking Specification

## Purpose

Maintain an auditable record of completed work, recurring errors, and movement
from prompted recall to spontaneous production.

## Requirements

### Requirement: Session logging

The coach SHALL append a concise record after each completed session.

#### Scenario: Completing a session

- **WHEN** the learner ends or completes a session
- **THEN** `progress/session-log.md` SHALL record the date, activity, targets attempted, correct count, error count, and next action
- **AND** writing or speaking details SHALL also be added to the applicable specialized log

#### Scenario: Logging an oral translation batch

- **WHEN** a five-item oral translation batch is assessed
- **THEN** `progress/session-log.md` SHALL record attempted, correct, and error
  counts
- **AND** `progress/speaking-log.md` SHALL record the target expressions,
  duration when known, a concise fluency note, and an accuracy note
- **AND** the next action SHALL include the next spaced-review timing when an
  expression remains fragile or incorrect

### Requirement: Attempt classification

The coach SHALL keep prompted production, spontaneous retrieval, and immediate
repair distinct.

#### Scenario: Classifying an oral attempt

- **WHEN** the target expression is shown or strongly cued before production
- **THEN** the result SHALL be recorded as `prompted`
- **WHEN** only meaning and context are supplied and the learner independently
  recalls the expression
- **THEN** the result SHALL be recorded as `spontaneous`
- **WHEN** the learner repeats a correction immediately after seeing or hearing
  it
- **THEN** the result SHALL be recorded only as repair practice
- **AND** SHALL NOT be counted as prompted or spontaneous mastery

#### Scenario: Logging a spontaneous checkpoint

- **WHEN** a Voice session ends with a target-free conversational response
- **THEN** `progress/speaking-log.md` SHALL record speaking time when known,
  relevant expressions used naturally, and any recurring fluency or accuracy
  issue

### Requirement: Historical preservation

The coach SHALL preserve previous progress records.

#### Scenario: Updating a log

- **WHEN** new progress is recorded
- **THEN** the coach SHALL append a new entry
- **AND** SHALL NOT erase or rewrite earlier entries except to correct an explicit clerical mistake

### Requirement: Weekly summary

The coach SHALL produce a compact weekly progress summary when sufficient data exists.

#### Scenario: Completing a learning week

- **WHEN** the learner requests a weekly review or completes the final planned session
- **THEN** the summary SHALL report writing tasks, speaking time when known, targets attempted, prompted successes, spontaneous successes, recurring errors, and three priorities for the next week
