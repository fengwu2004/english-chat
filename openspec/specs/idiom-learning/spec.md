# Idiom Learning Specification

## Purpose

Activate common idioms and conventional expressions through staged writing and
speaking practice, beginning with catalogue items I001–I030.

## Requirements

### Requirement: Fixed catalogue and honest ordering

The coach SHALL select idiom targets from `vocabulary/idioms.md` and SHALL
describe its ordering as approximate frequency-informed learning priority,
not a measured frequency ranking. The catalogue includes conventional
expressions as well as figurative idioms.

#### Scenario: Selecting idiom material

- **WHEN** an idiom lesson is prepared
- **THEN** the coach SHALL read this specification, the catalogue, and
  `progress/idiom-log.md`
- **AND** select only unlocked items, except mastered items used for later
  retrieval or spontaneous-use checks
- **AND** SHALL NOT add new catalogue targets without the learner's request

### Requirement: First thirty before gradual expansion

The coach SHALL start with I001–I030 and SHALL expand by the next ten catalogue
items only after the current stage is complete, unless the learner explicitly
changes the scope. The final group MAY contain fewer than ten items.

#### Scenario: Initial learning stage

- **GIVEN** no idiom attempts have been assessed
- **WHEN** the learner starts idiom practice
- **THEN** the eligible targets SHALL be I001–I030, in catalogue order
- **AND** I031–I119 SHALL remain deferred
- **AND** reading the catalogue SHALL NOT count as an attempt or mastery

#### Scenario: Completing and expanding a stage

- **GIVEN** every item in the current stage has been tested once
- **AND** every missed item has subsequently been produced correctly and
  naturally on an independent review after the full pass
- **AND** every stage item has at least one independent correct natural use
- **AND** each stage item has passed a later retrieval check in a changed
  context, on a later date, without showing the English expression
- **AND** a short target-free writing or speaking checkpoint has been assessed
- **WHEN** the coach continues learning
- **THEN** the coach SHALL report stage totals and unlock the next ten items
- **AND** record the new stage and queue before presenting its exercises
- **AND** SHALL NOT require every idiom to appear in the free response or
  penalize natural wording that does not use an idiom

### Requirement: Batches and complete passes

The coach SHALL use five Chinese-to-English exercises per batch, or the
remaining number when fewer than five remain. The complete-pass, correction,
and spaced-review rules in `lesson-management` SHALL also apply to idioms,
using idiom status instead of the phrasal-verb pools.

#### Scenario: Assessing a batch

- **WHEN** the learner completes an idiom batch
- **THEN** the coach SHALL assess meaning, grammar, fixed wording, register,
  and naturalness, accepting natural inflections and conventional variants
- **AND** update idiom status and append evidence before continuing the next batch
- **AND** SHALL NOT formally retest a missed item until the entire pass finishes
- **AND** SHALL NOT introduce deferred targets during wrong-answer review

#### Scenario: Repair and later review

- **WHEN** a missed idiom is corrected
- **THEN** an immediate repetition SHALL count only as repair practice
- **AND** later independent checks SHALL vary the context and normally occur
  approximately 2, 4, and 7 days after the relevant attempt
- **AND** a review due before pass completion SHALL wait until the pass finishes
- **AND** the next eligible review date SHALL be recorded

### Requirement: Independent retrieval and spontaneous transfer

The coach SHALL withhold English targets during oral retrieval unless hints
are requested, and SHALL progress toward short connected writing and speech
without forcing idioms into unsuitable contexts.

#### Scenario: Classifying evidence

- **WHEN** production is assessed
- **THEN** the coach SHALL use the prompted/spontaneous/repair distinctions in
  `progress-tracking`
- **AND** explicitly identify controlled meaning-cued recall versus target-free
  spontaneous use in the activity field
- **AND** SHALL NOT infer spontaneous conversation ability from translation alone
- **AND** an acceptable synonym SHALL be recognized as good communication but
  SHALL NOT count as successful target recall in a controlled retrieval task

### Requirement: Separate auditable state

The coach SHALL maintain idiom status and evidence in `progress/idiom-log.md`,
preserve catalogue IDs, and keep all phrasal-verb and collocation state intact.

#### Scenario: Updating idiom results

- **WHEN** an idiom response is assessed
- **THEN** the coach SHALL update the stage status table and counts in the idiom log
- **AND** append date, ID, activity, learner evidence, result, prompting mode,
  error type when applicable, and next review date when applicable
- **AND** append batch totals and the next action to `progress/session-log.md`
- **AND** append writing or speaking detail to the applicable specialized log
- **AND** SHALL NOT move idioms into the phrasal-verb vocabulary files
- **AND** SHALL NOT erase historical attempts

#### Scenario: Preparing the plan without practice

- **WHEN** the learner approves the staged idiom plan
- **THEN** the coach SHALL initialize the catalogue and stage state
- **AND** record zero attempts and no mastery claims
- **AND** SHALL NOT start exercises until the learner requests practice
