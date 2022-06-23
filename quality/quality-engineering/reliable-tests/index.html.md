---
layout: handbook-page-toc
title: "Reliable tests"
description: "This page describes the process and technical documentation around reliable tests at GitLab. Reliable tests are executed as a blocking step in the release process."
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This page describes the process and technical documentation around reliable tests at [GitLab](http://gitlab.com/gitlab-org/gitlab), for both API and UI end-to-end tests located inside the `qa/qa/specs/features/` directory.

Reliable tests are executed as a blocking step in the release process. It is vital that these tests are optimized to run quickly and do not have transient failures. Transient failures of `reliable` tests will lead to blocking the release team.

### Defining a reliable test

A reliable test is an end-to-end test that passes consistently in [all pipelines](/handbook/engineering/quality/quality-engineering/debugging-qa-test-failures/#qa-test-pipelines), for at least 14 days. Such a test can be given the `:reliable` tag.

### Promoting a new test to reliable

These are the steps required to promote a new test to reliable

1. All new tests should start without any quarantine tags, and they should be monitored in all environments that are part of the release process for seven days.
2. If the new tests fail, they are triaged and quarantined per the [pipeline triage procedure](/handbook/engineering/quality/quality-engineering/debugging-qa-test-failures/).
3. Once the failures are addressed, the quarantine tag is removed.
4. If the new tests do not fail while out of quarantine for the 14 days, they are promoted to reliable.

**Note:** the DRI for promoting new tests to reliable is the author of the MR that adds the new test(s). The author of the reliable test should consider adding documentation on how to run and debug the test prior to promoting it.

### Promoting an existing test to reliable

If an end-to-end test consistently passes for 14 consecutive days (as mentioned above), it could be considered a reliable test.

**Note:** the DRI for promoting existing tests to reliable is the author of the test. In case the author of the test isn't available, the counterpart SET of the test's DevOps stage should be the DRI.

#### Reliable spec report

Every week a reliable spec report is generated and report issue with the report summary is posted to slack channel `#quality-reports`.

Test report contains all specs that have passed consecutively for 14 days on following pipelines:

- `Production Full`
- `Staging full`
- `Gitlab master`
- `Nightly packages`

Additionally, report contains information on `reliable` specs that have failed in the past 14 days on any of the following pipelines:

- `Production Full`
- `Production Smoke and Reliable`
- `Staging full`
- `Staging Smoke and Reliable`
- `Staging Smoke and Reliable (No Admin)`
- `Gitlab master`
- `Nightly packages`

### What to do when a reliable test fails?

A test is no longer considered reliable if it fails in any pipeline, including in merge requests, and the cause of the failure is found to be

- the test itself, or
- relevant unreliable parts of the test framework, or
- minor transient test infrastructure issues, or
- any other similar cause that the test should be able to cope with.

In this case, the following process should be followed.

1. Remove the `:reliable` tag
2. Fix the test so that it passes consistently and then go through the process to ensure it's reliable again as if it was a new test

**Note:** A test is still reliable if it fails due to a bug in the application code, or due to issues with the application infrastructure that the test is not expected to handle.

**Note 2:** there's a detailed list of possible failures available in the debugging failing tests guideline, in the [Classify and triage the test failure section](/handbook/engineering/quality/quality-engineering/debugging-qa-test-failures/#classify-and-triage-the-test-failure)

### How to run the reliable tests

The following command is used to run the reliable tests:
`bin/qa Test::Instance::All http://localhost:3000 -- --tag reliable`

**Note:** in the above example, `http://localhost:3000` exemplifies how to run the reliable tests against a local GDK environment. This means that this argument can be changed to run the same tests against different environments.

### When and where the tests are run

Reliable tests will be run as part of the release process, [during every deployment in staging, canary, and production](/handbook/engineering/quality/quality-engineering/debugging-qa-test-failures/#qa-test-pipelines) environments.

This is in addition to the `smoke tests` that is already run as part of the release process

### Future Iterations

- Promotion of test case to reliable or removing from reliable is still a manual process. The long term goal would be identifying and moving tests across buckets automatically.

> If there are more suggestions/ open questions they can be added here too.
