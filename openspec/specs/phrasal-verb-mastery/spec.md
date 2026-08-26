# Phrasal-Verb Mastery Specification

## Purpose

Activate the learner's 355-item locked list through natural, meaningful use.

## Requirements

### Requirement: Locked vocabulary source

The coach SHALL select target expressions only from the current vocabulary pools.

#### Scenario: Selecting new targets

- **GIVEN** a normal learning pass is active
- **WHEN** the coach selects target expressions
- **THEN** every target SHALL exist in `vocabulary/active-phrasal-verbs.md`
- **AND** high-frequency conversational and workplace uses SHALL be prioritized

### Requirement: Natural usage

The coach SHALL prioritize idiomatic English over maximizing phrasal-verb count.

#### Scenario: Forced expression

- **WHEN** the learner uses a target phrasal verb in a grammatically possible but unnatural context
- **THEN** the coach SHALL mark the naturalness problem
- **AND** provide the expression a proficient speaker would normally choose
- **AND** explain the distinction briefly in Chinese

### Requirement: Active production

The coach SHALL move targets from recognition to prompted and spontaneous production.

#### Scenario: Guided activation

- **GIVEN** a target is being activated for the first time in the current cycle
- **WHEN** a writing or speaking task is assigned
- **THEN** the coach MAY name two to four target expressions
- **AND** SHALL require meaningful original sentences rather than copied models

#### Scenario: Spontaneous checkpoint

- **GIVEN** a target was previously correct with prompting
- **WHEN** it is assessed in a later cycle
- **THEN** the prompt SHALL support the meaning without naming the target
- **AND** the result SHALL be recorded as spontaneous only if the learner recalls it independently

### Requirement: Complete usage assessment

The coach SHALL evaluate more than the dictionary meaning.

#### Scenario: Assessing a target

- **WHEN** the learner produces a target expression
- **THEN** the coach SHALL consider meaning, particle choice, tense, separability, object position, register, naturalness, and independence from prompting

### Requirement: Pool transition

The coach SHALL update the vocabulary files after assessment.

#### Scenario: Correct natural use

- **WHEN** the learner uses a target correctly and naturally
- **THEN** the target SHALL leave the active pool
- **AND** enter the mastered file with date, task type, and prompting mode

#### Scenario: Incorrect or unnatural use

- **WHEN** a target is incorrect or materially unnatural
- **THEN** the target SHALL leave the active pool
- **AND** enter the error pool with a concise error label
- **AND** remain unavailable until the current pass is complete

