---
layout: handbook-page-toc
title: "Onboarding Cheat Sheet"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# About
This cheat sheet aims to be a concise list of anything you might need to know when learning how to navigate at GitLab. Primarily this is done with simple 1-2 sentence bits of information with a link to the full documentation. This should help with orienting yourself here at GitLab as well as efficient recall of critical information required for development basics.

As always feel free to suggest changes, additions or any updates to outdated information.

## General Tips
- Consult with area expert when beginning work to see where to put the change, if it's not already in the issue
- Always ask questions of teammates, even if it's going to be slow. Get used to having multiple tasks going at once

## Reviews
- If an MR has more than one logical change, it will get bogged down during review. When in doubt, make a new MR
- [Feature flags](https://docs.gitlab.com/ee/development/feature_flags/#create-a-new-feature-flag) will make any behavior change less risky and easier to get approved
- Reviewers have no context for your change, you have to provide it in the MR description or expect alot of questions
- Any workarounds for bugs have to be clearly explained, even then reviewers may be confused
- Expect a 24 hour lead time on any questions or comments you need addressed, have multiple issues going at once to avoid bottlenecks
- It will take a while to get used to what reviewers expect. Different reviewers will expect different things from you and have varying levels of feedback
- Each new reviewer will have to learn the context all over again and then have different questions and feedback than the previous one. Try to consistently stick with one reviewer per issue and document their questions ahead of time to minimize how often they have to check the MR

## Environments
- Development
	- [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/index.md#one-line-installation) is your local development environment, it's fairly easy to setup
	- Be careful when updating GDK, it may be broken. If so it will usually take some time to fix your local environment
	- Keep an eye on `#gdk` in slack for any breakages or fixes to any local setup issues
- Staging
	- There's a standard staging environment you will get access to as part of onboarding. You should only have a standard user account there
	- [Staging Ref](https://about.gitlab.com/handbook/engineering/infrastructure/environments/staging-ref/#how-to-use-staging-ref) is a staging install without any customer data, meaning you can have admin access.
	- [Teleport](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/Teleport/Connect_to_Rails_Console_via_Teleport.md#how-to-use-teleport-to-connect-to-rails-console) is very easy to access a staging read-only rails console for exploration and testing with the prod database. You have to request access and that access times out after 24 hours, but request approval is fairly quick
- Production
	- You can test on production with your GitLab account area (gitlab.com/YOURUSERNAME), create free repos and groups to test any changes
	- Feature flags are also useful here to conditionally enable changes just for your user to test (or your group, etc.). Use the [`/chatops` command](https://about.gitlab.com/handbook/support/workflows/chatops.html#feature-flags) in slack
        - To test Ultimate features, [apply for a Gitlab ultimate license](https://about.gitlab.com/handbook/incentives/#gitlab-ultimate) for your account

## Database
- [postgres.ai](https://postgres.ai/) is a great tool for testing performance and effects of database queries. You can get performance and effects of any SQL query on a copy of the production database, you _can't_ get data out of the DB however.
- `#database-lab` a slack channel where you can ask [postgres.ai](https://postgres.ai/) to run a query for you. You can also use their web interface
- If you need data from the prod/staging DB, use [Teleport](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/Teleport/Connect_to_Rails_Console_via_Teleport.md#how-to-use-teleport-to-connect-to-rails-console) or file an [access request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/) for archive DB access

### Schema Changes or Migrations
- Always run `scripts/regenerate-schema` after adding / changing migrations or schema
- Any migrations are subject to 15 second query timeouts, use [EachBatch](https://docs.gitlab.com/ee/development/database/iterating_tables_in_batches.html#eachbatch-in-data-migrations) to batch up any changes (even deletes)
- Migration outputs and performance are tested by the [`db:gitlabcom-database-testing` job](https://docs.gitlab.com/ee/development/database/database_migration_pipeline.html), run it manually to get the output.
- Many reviewers will still ask for this output to be manually added to the MR, even though the docs say to do otherwise and trust the automated output

### Performance Improvements
- Always list an example previous SQL query and the new one, and their postgres.ai runs
- Find a suitable example of prod data to profile performance (ask a DB person for help if you don't have one)
	- [For groups](https://docs.gitlab.com/ee/development/database/pagination_performance_guidelines.html#by-group), `9970` is the id for the gitlab.org group which is fairly large
- Migrations adding indexes are not subject to the 15 second time limit

## Analytics
- [Naming of the analytics key](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html#metric-name-suggestion-examples) is very important, work this out with product before even scheduling the work
- Also need product section / stage / category correct in metadata
- [There's a generator tool to add an event](https://docs.gitlab.com/ee/development/service_ping/metrics_dictionary.html#metric-name-suggestion-examples), it may have bugs
- Many analytics get reported back to GitLab with [Usage Ping](https://docs.gitlab.com/ee/development/service_ping/).
	- As an admin, you can [trigger](https://gitlab.com/gitlab-org/gitlab/-/issues/288829#note_521409401) and [view](https://docs.gitlab.com/ee/development/service_ping/) a Usage Ping
	- You can only get admin outside your local environment without an access request on Staging Ref

## Security
- [Security MRs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/developer.md#security-releases-critical-non-critical-as-a-developer) go to gitlab.org/security/gitlab, not the open gitlab repo
- To prevent any accidents, you can use `scripts/security-harness` to prevent your local repo from pushing any changes outside of the security repo
- Security MRs are merged by security bot once a month/release. Until that happens the MR will sit open, even if approved for merging.
- Security MRs require approval from the security team as well as the normal maintainer approval
- When you rebase your MR, it will reset the security team approvals, be careful!
- After your security MR is approved, then begin the [backport process](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/developer.md#backports) to create MRs for previous releases

## Deployment
- To check the deploy status of your merged change, use [`/chatops run auto_deploy status <MERGE_COMMIT>`](https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/auto-deploy.md#auto-deploy-status) in slack `#chat-ops-test` channel

## Frontend
- The [frontend development guide](https://docs.gitlab.com/ee/development/fe_guide/index.html) is a great place to start
