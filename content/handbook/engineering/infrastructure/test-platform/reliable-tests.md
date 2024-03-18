---

title: "Reliable and Blocking end-to-end tests"
description: "This page describes the process and technical documentation around reliable and blocking end-to-end tests at GitLab.
Reliable tests are executed as a blocking step in the release pipelines. Blocking tests are executed as a blocking step in MRs but not the release."
---

### Overview

This page describes the process and technical documentation around reliable and blocking tests
at [GitLab](http://gitlab.com/gitlab-org/gitlab), for both API and UI end-to-end tests located inside
the `qa/qa/specs/features/` directory.

Reliable tests are executed as a blocking step in the release process and the blocking tests block MRs.
It is vital that these tests are optimized to run quickly and do not have transient failures.
Transient failures of `reliable` tests will lead to blocking the release team.

### Defining a reliable test

A reliable test is an end-to-end test that passes consistently
in [all pipelines](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#qa-test-pipelines),
for at least 14 days.
Such a test can be given the `:reliable` tag.

Please note that in the spirit of shifting left, we are not actively adding more tests to the reliable suite. We are
expanding the blocking suite instead.

### Defining a blocking test

A blocking test is an end-to-end test that passes consistently in master pipeline for at least 14 days. Such a
test can be given the `:blocking` tag.
A blocking test is not executed in the release pipelines. It is executed as a blocking step only in MRs.

### Promoting a test to blocking

End-to-end tests that pass consistently for 14 consecutive days on master pipeline are selected for promotion to the
blocking suite by an automated script that runs every week using the data produced by the reliable test report.
Only top 10 tests sorted by number of runs are selected by the script for promotion to the reliable bucket.
The script create multiple MRs and assigns them to counterpart SET for the DevOps stage of the test as a DRI. It is the
responsibility of the assigned DRI to either close the MR or get it merged.
The MR has links to the testcase and grafana single spec metrics to help the DRI in deciding to approve or close the MR.

A test should ideally not be promoted to blocking manually without it being identified in the reliable test report.
However, if a test has been identified in the reliable test report as passing consistently for 14 consecutive days but
didn't make it to the top 10 number of runs, it can be promoted to the blocking bucket by manually creating an MR.

#### Reliable spec report

Every week a reliable spec report is generated and report issue with the report summary is posted to slack
channel `#quality-reports`.

Test report contains all specs that have consistently passed for 14 consecutive days in following pipelines:

- `Production full`
- `Production sanity`
- `Staging full`
- `Staging sanity`
- `GitLab master` (In `e2e-test-on-gdk` and `e2e-package-and-test` jobs)
- `Nightly`

Additionally, report contains information on `blocking` or `reliable` specs that have failed in the past 14 days in any
of the following pipelines:

- `GitLab master` (In `e2e-test-on-gdk` and `e2e-package-and-test` jobs)
- `Nightly` (except `nplus1-instance-image` and `airgapped` jobs)

The data produced by the reliable test report is used to create MRs for promoting tests to reliable or quarantining
them.

### What to do when a reliable test fails?

A test is no longer considered reliable if it fails in any pipeline, including in merge requests, and the cause of the
failure is found to be

- the test itself, or
- relevant unreliable parts of the test framework, or
- minor transient test infrastructure issues, or
- any other similar cause that the test should be able to cope with.

In this case, the following process should be followed.

1. Remove the `:reliable` tag
2. Fix the test so that it passes consistently and then go through the process to ensure it's reliable again as if it
   was a new test.
3. Since we are not adding any more test to the reliable suite, once the test passes consistently, it will identified in
   the reliable test report and an MR will be created to promote it to the blocking suite and not the reliable suite.

**Note:** A test is still reliable if it fails due to a bug in the application code, or due to issues with the
application infrastructure that the test is not expected to handle.

**Note 2:** there's a detailed list of possible failures available in the debugging failing tests guideline, in
the [Classify and triage the test failure section](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#classify-and-triage-the-test-failure)

### What happens when a blocking test fails?

A blocking test may fail in an MR when when it catches a legitimate bug or due to a feature update.
In this case it is the responsibility of the MR author to either fix the bug or update the test.
If a blocking test fails consistently on master or nightly, it will be identified in the next reliable test report and an MR will be created
automatically to quarantine
it. A link to the MR will be posted on the `#test-platform-maintainers` Slack channel for a maintainer to review and
merge.

An issue for de-quarantining the test will also be created and the counterpart SET for the test's DevOps stage will be
assigned to it.
It is the responsibility of the assigned SET to fix the root cause of the failure and de-quarantine the test.

If the test needs to be quarantined sooner than the next reliable test report run, the
fast [quarantine](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#fast-quarantine)
process should be followed.

Please note that once a test has been tagged as `:blocking`, the tag cannot be removed. It can
only be quarantined and de-quarantined.
A failing blocking test will continue to have the `:blocking` tag until the tag is sunset.
Please refer to the [Future Iterations](#future-iterations) section below for links to sunset issues.

### How to run the reliable or blocking tests

The following command is used to run the reliable tests:
`bin/qa Test::Instance::All http://localhost:3000 -- --tag reliable`

The following command is used to run the blocking tests:
`bin/qa Test::Instance::All http://localhost:3000 -- --tag blocking`

**Note:** in the above examples, `http://localhost:3000` exemplifies how to run the tests against a local GDK
environment. This means that this argument can be changed to run the same tests against different environments.

### When and where the tests are run

Reliable tests are run part of the release
process, [during every deployment in staging, canary, and production](/handbook/engineering/infrastructure/test-platform/debugging-qa-test-failures/#qa-test-pipelines)
environments.
This is in addition to the `smoke tests` that is already run as part of the release process

Blocking tests are run in MRs and master pipelines in the `gdk-qa-blocking` job.

### Future Iterations

- Automate the process of de-quarantining the tests that have been consistently
  passing. ([Issue link](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/1918#phase-3-automate-de-quarantining-update-process-and-docs-okr))
- Make reliable orchestrated tests block
  MR. ([Issue link](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2516))
- Once most of the tests have been promoted to the blocking, sunset the `:blocking` tag and make all tests block MRs. At
  this stage, any left over tests that weren't promoted should be
  quarantined. ([Issue link](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2498))
- Once we have most of the tests blocking the MRs, remove the `:reliable` tag so that we no longer block deployment
  process using live
  environments. ([Issue link](https://gitlab.com/gitlab-org/quality/quality-engineering/team-tasks/-/issues/2499))

> If there are more suggestions/ open questions they can be added here too.
