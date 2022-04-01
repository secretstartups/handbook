---
layout: markdown_page
title: "Make review apps faster - Jobs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Below is the list of jobs that are on the critical path for review apps:

## General

| Potential Improvement ID | Description | Experiments | Impact (1-10) | Complexity  (1-10) | Comments |
|---|---|---|---|---|---|
|<a id="1" href="#1">1</a> | Do we have the runners + executors to the latest version possible? From experience, it can give an instant boost | - | 3 | 1 | - |
| <a id="2" href="#2">2</a> | In the [CNG-mirror child pipeline](https://gitlab.com/gitlab-org/build/CNG-mirror/-/pipelines/492497660), are there jobs that we wouldn't need to run in the first place? For instance, do we need to **try** to build `gitlab-go` for every MR, or could we rely on an already built image? The simple act of *trying* to build can take more than a minute (because we need to create a runner which takes some time) | - | 5 | 4 | - |
| <a id="3" href="#3">3</a> | For each job inside the [CNG-mirror child pipeline](https://gitlab.com/gitlab-org/build/CNG-mirror/-/pipelines/492497660), we have several jobs that start with "booking a runner", and that can take up to a minute per job! It would be super interesting if we could somehow "boot up" a runner, and reuse it for the jobs inside the same pipelines, instead of creating a new one from scratch every time...| - | 6 | 6 | - |

## review-build-cng-env

* Job definition: <https://gitlab.com/gitlab-org/gitlab/blob/master/.gitlab/ci/review-apps/main.gitlab-ci.yml#L19>
* Example: <https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="4" href="#4">4</a> | [Preparing the "docker+machine" executor (7s)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809#L6) - Could we use a smaller docker image? | - | 1 | 2 | - |
| <a id="5" href="#5">5</a> | [Preparing the "docker+machine" executor (7s)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809#L6) - Are we caching that docker image properly? | - | 1 | 2 | - |
| <a id="6" href="#6">6</a> | [Getting source from Git repository (25s)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809#L15) - Do we need to set the depth to 20 for that stage? | - | 4 | 2 | - |
| <a id="7" href="#7">7</a> | [Getting source from Git repository (25s)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809#L15) - Do we need the entire codebase for that job? Maybe we could just download the scripts we need via the web API? | - | 4 | 3 | - |
| <a id="8" href="#8">8</a> | [Uploading artifacts for successful job (5s)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566809#L72) - Do we need to upload artifacts for that job? Wouldn't it be enough to have it passed per stage? | - | 2 | 1 | - |

## gitlab-ruby

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L275>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570836>
* Chart: <https://app.periscopedata.com/app/gitlab/652085/EP---Jobs-Durations?widget=12625183&udv=0>

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="9" href="#9">9</a> | [Preparing the "docker+machine" executor (58s)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570836#L5) - We spend a minute setting up the docker-autoscaled executor...Could we switch to another executor for jobs that don't require docker-in-docker? Would switching to Kaniko or another tool help? | - | 8 | 8 | Given what I see in [build_if_needed](https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/build-scripts/build.sh#L59), it might be a lot of work to get away from Docker... |
| <a id="10" href="#10">10</a> | [Executing "step_script" stage of the job script (11s)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570836#L110) - Does that job need to try to push tags if nothing new has been built? | - | 3 | 3 | - |
| <a id="11" href="#11">11</a> | [Executing "step_script" stage of the job script (11s)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570836#L110) - It would be quite interesting to understand where the time is spent in that script (is it the `docker build`, the `docker push`, something else?), as it's reused in many jobs | - | 1 | 1 | Hint: Use [run_timed_command](https://gitlab.com/gitlab-org/gitlab/blob/master/scripts/utils.sh#L84) |
| <a id="12" href="#12">12</a> | [Uploading artifacts for successful job (3s)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570836#L154) - We seem to do a useless roundtrip for finding the assets (`WARNING: Upload request redirected` -> `WARNING: Retrying...`). It might be a good idea to configure this correctly. Even if it's half a second, it could be applied to probably a lot of jobs. | - | 4 | 1 | - |

## gitlab-go

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L521>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570855>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| - | - | - | - | - | - |
| - | - | - | - | - | - |

Same remarks as for [gitlab-ruby](#gitlab-ruby)

## git-base

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L1065>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570869>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| - | - | - | - | - | - |
| - | - | - | - | - | - |

Same remarks as for [gitlab-ruby](#gitlab-ruby)

## gitlab-elasticsearch-indexer

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L1107>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570877>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| - | - | - | - | - | - |
| - | - | - | - | - | - |

Same remarks as for [gitlab-ruby](#gitlab-ruby)

## gitlab-rails-ee

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L557>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570882>
* Chart: <https://app.periscopedata.com/app/gitlab/652085/EP---Jobs-Durations?widget=7014205&udv=0>

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="13" href="#13">13</a> | [Executing "step_script" stage of the job script (12:43)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570882#L129) This is the docker build of the image (73 steps!). This is probably a rabbit hole, and probably an EPIC in scope...But still, it would be quite interesting to dig into this image, and understand where time is spent. | - | 6 | 8 | Maybe this kind of improvements doesn't fall into the EP scope, but still we could contribute :) |
| <a id="14" href="#14">14</a> |[Executing "step_script" stage of the job script (12:43)](https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570882#L129) "If you can't measure it, you can't improve it". It would be excellent to find a way to display the time each steps are taking for the `docker build` command, so that we could also include the image build times into our analysis ([this SO thread talks about using buildkit](https://stackoverflow.com/questions/46166293/how-to-measure-docker-build-steps-duration)) | - | 1 | 1 | - |

Also, same remarks as for [gitlab-ruby](#gitlab-ruby)

## gitlab-workhorse-ee

* Job definition: <https://gitlab.com/gitlab-org/build/CNG-mirror/blob/master/.gitlab-ci.yml#L1248>
* Example: <https://gitlab.com/gitlab-org/build/CNG-mirror/-/jobs/2204570892>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| - | - | - | - | - | - |
| - | - | - | - | - | - |

Same remarks as for [gitlab-rails-ee](#gitlab-rails-ee)

## review-deploy

* Job definition: <https://gitlab.com/gitlab-org/gitlab/blob/master/.gitlab/ci/review-apps/main.gitlab-ci.yml#L87>
* Example: <https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566815>
* Chart: <https://app.periscopedata.com/app/gitlab/652085/EP---Jobs-Durations?widget=6721130&udv=0>

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="15" href="#15">15</a> | [Executing "step_script" stage of the job script (11:45)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566815) It would be very interesting to find out about where time is spent in that script... | - | 1 | 1 | This was probably already done: we just need to find the issue / the logs for it |

* Same remarks as for [gitlab-ruby](#gitlab-ruby)
* Same remarks as for [review-build-cng-env](#review-build-cng-env)

## review-qa-reliable

* Job definition: <https://gitlab.com/gitlab-org/gitlab/blob/master/.gitlab/ci/review-apps/qa.gitlab-ci.yml#L78>
* Example: <https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566822>
* Chart: <https://app.periscopedata.com/app/gitlab/652085/EP---Jobs-Durations?widget=13494368&udv=0>

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="16" href="#16">16</a> | [Executing "step_script" stage of the job script (06:40)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566822#L123) I see we have DEBUG logging enabled...I wonder if not printing as much wouldn't speed the tests? If so, we could then imagine having a possibility to use the DEBUG mode when actually debugging for a failed job... | - | 1 | 2 | - |

* Same remarks as for [gitlab-ruby](#gitlab-ruby)
* Same remarks as for [review-build-cng-env](#review-build-cng-env)

## allure-report-qa-reliable

* Job definition: <https://gitlab.com/gitlab-org/gitlab/blob/master/.gitlab/ci/review-apps/qa.gitlab-ci.yml#L133>
* Example: <https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566857>
* Chart: N/A

| Potential Improvement ID | Description | Experiments | Impact | Complexity | Comments |
|---|---|---|---|---|---|
| <a id="16" href="#16">17</a> | [Getting source from Git repository (00:23)](https://gitlab.com/gitlab-org/gitlab/-/jobs/2204566857#L15) I think we could just skip the `git pull` altogether, and just use the downloaded artifacts + the `allure-report-publisher` script? It could potentially save 20 seconds :tada: | - | 8 | 2 | - |

Same remarks as for [review-build-cng-env](#review-build-cng-env)
