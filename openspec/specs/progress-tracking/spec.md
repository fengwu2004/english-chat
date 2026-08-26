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

