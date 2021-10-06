---
layout: handbook-page-toc
title: "Professional Services EM Scoping - CI/CD Pipeline Migration"
description: "Describes the process for scoping pipeline migrations from other CI/CD systems to GitLab"

---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Migrating from Artifactory to GitLab Registry

## General Approaches
1. **Flash Cut** - Migrate all data from Artifactory to gitlab registry and update pipeline files at once. 
2. **Net New** - Update all pipelines to push to and pull from gitlab registry so that all newly built software packages are stored in GitLab in the build/package stage. Then in the deploy stage they are pulled from gitlab registry. Slowly migrate the dependencies that don't often change to gitlab registry. Graudally phase out Artifactory. 

## Questions to ask a customer during discovery

| Question | Answer | Sample Answer | Rationale for asking|
| ----- | ----- | ----- | ----- |
| What artifacts are stored in artifactory? | | built software binaries and docker containers. No dependent libraries - we go out to the internet for these | This will affect the decision on general approaches listed above |
| How many artifacts are stored in artifactory? | | 1,234 | Shows roughly how large the scope of a migration project will be. |
| How many artifactory servers do you have? | | 2 | This is a guage of complexity. The more artifactory services, the more complex. |
| How many software packages/images are pushed to artifactory per Month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |
| How many software packages/images are pulled from artifactory per month? |  | 2345 | This shows the customer is measuring this data to be used during the transition process. |








