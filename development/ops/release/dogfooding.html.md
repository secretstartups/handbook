---
layout: handbook-page-toc
title: "Dogfooding GitLab Releases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Dogfooding GitLab Releases

One way we live out our [dogfooding
value](https://about.gitlab.com/handbook/engineering/development/principles/#dogfooding) is by using
our own [releases](https://docs.gitlab.com/ee/user/project/releases/) feature to
publish GitLab's monthly releases. These releases can be seen in the
[`gitlab`](https://gitlab.com/gitlab-org/gitlab/-/releases) and
[`gitlab-foss`](https://gitlab.com/gitlab-org/gitlab-foss/-/releases) projects.

### History

Before we began dogfooding our releases feature, we published releases to
<https://about.gitlab.com/releases/>. Once we introduced the automated dogfooding
process, we replaced the content of this page with a link to the [GitLab
project's releases page](https://gitlab.com/gitlab-org/gitlab/-/releases).

### How does this process work?

At a high level, the automated release creation process works like this:

1. Product and engineering managers follow the [release post
    process](https://about.gitlab.com/handbook/marketing/blog/release-posts/) to
    create `*.yml` files in the [`gitlab-com/www-gitlab-com`
    repo](https://gitlab.com/gitlab-com/www-gitlab-com) for each new feature that
    should be announced
    ([example](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/cd2509aeb941ddd842873b16a733c9b44de67d6b/data/release_posts/unreleased/manage-display-selected-timezone-on-users-profile.yml)).
1. A [pipeline step in the `gitlab-com/www-gitlab-com`
    repo](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/cd2509aeb941ddd842873b16a733c9b44de67d6b/.gitlab-ci.yml#L289)
    executes the [`update_project_releases_page` rake
    task](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/dee4996288caffa143f7efdc1e4c0f4e4a82097b/lib/tasks/update_gitlab_project_releases_page.rake).
    1. All `*.yml` files are parsed and rendered as Markdown for use as the
        description for each release
    1. A request is made to the appropriate project (either
        [`gitlab-org/gitlab`](https://gitlab.com/gitlab-org/gitlab/) or
        [`gitlab-org/gitlab-foss`](https://gitlab.com/gitlab-org/gitlab-foss/))
        using the [release REST
        API](https://docs.gitlab.com/ee/api/releases/#list-releases) to fetch all
        the existing releases
    1. Each release generated from the `*.yml` files is compared to the list of
        existing releases. If the release doesn't yet exist (or if an existing
        release's content has been changed), the release is created (or updated)
        using the [release REST
        API](https://docs.gitlab.com/ee/api/releases/#create-a-release).

### FAQ

#### Why does this process live in [`gitlab-com/www-gitlab-com`](https://gitlab.com/gitlab-com/www-gitlab-com/)?

Mostly for simplicity and historical reasons. As mentioned above, we previously
published releases to https://about.gitlab.com/releases/. This process was
automated by some code in `gitlab-com/www-gitlab-com` ([this file, in
particular](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/1cbdb5813b6c52e35550a8a05e2b4b061d158f0b/generators/releases.rb))
which parsed all the `*.yml` files and combined their content into a Ruby hash
for each release.

The new dogfooding process was able to reuse this existing code; as a result, it
only concerns itself with rendering each Ruby hash to Markdown and updating the
project's releases through the API.

#### Where are the tests for this process?

As of this writing, this process is untested 😕

### Troubleshooting

If something goes wrong, here are some things to check:

- Ensure the tag exists in the repository and is formatted correctly (e.g.
    `v14.1.0-ee` for EE, or `v14.1.0` for FOSS)
- Ensure the group milestone exists in the `gitlab-org` group and is named
    correctly (e.g. `14.1`)
- Ensure the API token is available as an environment variable named
    `GITLAB_BOT_TOKEN`

Both the tag and milestone must exist _before_ the process attempts to create
the release.

Note that the pipeline step that runs this process is currently set to
`allow_failure: true`, so any errors that occur won't prevent the pipeline from
succeeding.

### Testing locally

To test this script locally:

1. Fork the [GitLab EE project](https://gitlab.com/gitlab-org/gitlab) to your personal namespace.
1. Fork the [GitLab FOSS project](https://gitlab.com/gitlab-org/gitlab-foss) to your personal namespace
1. Generate a new [personal access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#create-a-personal-access-token) with the `api` scope. Alternatively, generate a maintainer project token for each project with the `api` scope.
1. Set environment variables:

    ```shell
    export GITLAB_BOT_TOKEN="YOUR TOKEN"
    export GITLAB_EE_PROJECT_ID="YOUR GITLAB FORK ID"
    export GITLAB_FOSS_PROJECT_ID="YOUR GITLAB FOSS FORK ID"
    ```

1. Populate your projects with necessary milestones:

    ```shell
    bundle exec pry
    ```

    ```ruby
    require "gitlab"
    gitlab_client = Gitlab.client(endpoint: "https://gitlab.com/api/v4", private_token: ENV['GITLAB_BOT_TOKEN'])
    (13..18).each { |major| (0..13).each { |minor| gitlab_client.create_milestone(ENV['GITLAB_EE_PROJECT_ID'], "#{major}.#{minor}") } }
    (13..18).each { |major| (0..13).each { |minor| gitlab_client.create_milestone(ENV['GITLAB_FOSS_PROJECT_ID'], "#{major}.#{minor}") } }
    ```

1. Update the releases pages.

    ```sh
    # For FOSS
    bundle exec rake release:foss:update_project_releases_page

    # For EE
    bundle exec rake release:ee:update_project_releases_page
    ```

1. Check the two **Releases** pages to see if the process resulted in the correct changes on your test projects.
