---
title: "Test metrics dashboard"
description: "Data on all E2E test runs"
---

## E2E test execution metrics


This page contains overview of all automated end-to-end test executions across different environments and pipelines.

Terms:

- `smoke` - small subset of most important and fastest e2e tests. These tests are usually to block deployments or merge request merging when failing.
- `reliable` - [reliable](/handbook/engineering/infrastructure/test-platform/reliable-tests/) is an e2e tests that has been passing consistently in all pipeline runs.
These tests are usually to block deployments or merge request merging when failing.
- `sanity` - test suite that contains `smoke` and `reliable` tests.
- `full` - the full tests suite in the context of particular pipeline/environment it runs in.
- `quarantine` - tests that are temprarily disabled
- `flaky` - tests that are failing on first execution but passing on second attempt via [rspec-retry](https://github.com/NoRedInk/rspec-retry)

## Master

### package-and-test

E2E test execution against various configurations of `omnibus` images.

- {{< test-metrics-allure-link "e2e-package-and-test" >}}
- {{< test-metrics-grafana-link "e2e-package-and-test" >}}

{{< test-metrics-dashboard "e2e-package-and-test" >}}

### review-app

E2E test execution against cloud native review-app installation.

- {{< test-metrics-allure-link "e2e-review-qa" >}}

#### smoke

- {{< test-metrics-grafana-link "review-qa-smoke" >}}

{{< test-metrics-dashboard "review-qa-smoke" >}}

#### blocking

In context of review-app these are `reliable` tests that indicate that these are blocking merge request merging when failing.

- {{< test-metrics-grafana-link "review-qa-blocking" >}}

{{< test-metrics-dashboard "review-qa-blocking" >}}

#### non-blocking

All other tests that are not part of `smoke` or `blocking` suite. These tests are optional and don't block merging of merge request when
failing in merge request pipeline.

- {{< test-metrics-grafana-link "review-qa-non-blocking" >}}

{{< test-metrics-dashboard "review-qa-non-blocking" >}}

## Nightly

E2E test execution against various configurations of `omnibus` nightly images.

- {{< test-metrics-allure-link "nightly" >}}
- {{< test-metrics-grafana-link "nightly" >}}

{{< test-metrics-dashboard "nightly" >}}

## Staging

E2E test execution against `https://staging.gitlab.com` environment.

### Sanity

- {{< test-metrics-allure-link "staging-sanity" >}}
- {{< test-metrics-grafana-link "staging-sanity" >}}

{{< test-metrics-dashboard "staging-sanity" >}}

### Full

- {{< test-metrics-allure-link "staging-full" >}}
- {{< test-metrics-grafana-link "staging-full" >}}

{{< test-metrics-dashboard "staging-full" >}}

## Staging Ref

E2E test execution against `https://staging-ref.gitlab.com` environment.

### Sanity

- {{< test-metrics-allure-link "staging-ref-sanity" >}}
- {{< test-metrics-grafana-link "staging-ref-sanity" >}}

{{< test-metrics-dashboard "staging-ref-sanity" >}}

### Full

- {{< test-metrics-allure-link "staging-ref-full" >}}
- {{< test-metrics-grafana-link "staging-ref-full" >}}

{{< test-metrics-dashboard "staging-ref-full" >}}

## Preprod

E2E test execution against `https://pre.gitlab.com` environment.

- {{< test-metrics-allure-link "preprod-sanity" >}}
- {{< test-metrics-grafana-link "preprod-sanity" >}}

{{< test-metrics-dashboard "preprod-sanity" >}}

## Production

E2E test execution against `https://gitlab.com` environment.

### Sanity

- {{< test-metrics-allure-link "production-sanity" >}}
- {{< test-metrics-grafana-link "production-sanity" >}}

{{< test-metrics-dashboard "production-sanity" >}}

### Full

- {{< test-metrics-allure-link "production-full" >}}
- {{< test-metrics-grafana-link "production-full" >}}

{{< test-metrics-dashboard "production-full" >}}
