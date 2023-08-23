---
layout: handbook-page-toc
title: "Product Milestones"
---

When planning, Product Managers plan to GitLab milestones. Here is the process for creating and maintaining them.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Product Milestone Creation

**One quarter ahead**, the Product Operations team will create all of the necessary milestones for the next quarter. Our standard practice is to have the Major [release](/releases/) every May, resulting in:

```
XX.0 - May
XX.1 - June
XX.2 - July
XX.3 - August
XX.4 - September
XX.5 - October
XX.6 - November
XX.7 - December
XX.8 - January
XX.9 - February
XX.10 - March
XX.11 - April
```

To update the milestones in GitLab, Product Operations follows these steps:

### Release 16.5 and prior

This section is for releases up to and including 16.5. For releases 16.6 and later, see [Release 16.6 and later](#release-166-and-later).
{: .alert .alert-gitlab-orange}

#### Step 1: .org

1. Ensure that the relevant milestones are created. [Go to GitLab Milestones for .org](https://gitlab.com/groups/gitlab-org/-/milestones)
1. Click on `New milestone` in the top right
1. Title the milestone with the `dot` release that makes sense. 
   * Note: We iterate through the `.0` and further for each release with the `.0` release every May.
1. Set end date to the appropriate month with the `18th` to the `17th`
1. Closing milestones happens in the [Engineering workflow](/handbook/engineering/workflow/#milestone-cleanup)

#### Step 2: .com

1. Ensure that `.com` mirrors the `.org` milestones for consistency in Product, Marketing etc.
1. Ensure that the relevant milestones are created. [Go to GitLab Milestones for .com](https://gitlab.com/groups/gitlab-com/-/milestones)
1. Click on `New milestone` in the top right
1. Title the milestone with the `dot` release that matches `.org`. 
   * Note: We iterate through the `.0` and further for each release with the `.0` release every May.
1. Set end date to the appropriate month with the `18th` to the `17th`
1. Closing milestones happens in the [Engineering workflow](/handbook/engineering/workflow/#milestone-cleanup)

### Release 16.6 and later

This section is for release 16.6 and later. For releases up to and including 16.5, please see the previous [Release 16.5 and prior](#release-165-and-prior).
{: .alert .alert-gitlab-orange}

Milestone start and end dates are defined as follows:

> The next milestone `m+1` starts the Saturday prior to the current milestone `m`'s release date and runs through the Friday prior to the milestone `m+1`'s release date.

#### Step 1: .org

1. Ensure that the relevant milestones are created. [Go to GitLab Milestones for .org](https://gitlab.com/groups/gitlab-org/-/milestones)
1. Click on `New milestone` in the top right
1. Title the milestone with the `dot` release that makes sense. 
   * Note: We iterate through the `.0` and further for each release with the `.0` release every May.
1. Set the start date to be the Saturday prior to the previous releases [release date](/releases/)
1. Set the end date to be the Friday prior to the third Thursday of the release month
1. Closing milestones happens in the [Engineering workflow](/handbook/engineering/workflow/#milestone-cleanup)

#### Step 2: .com

1. Ensure that `.com` mirrors the `.org` milestones for consistency in Product, Marketing etc.
1. Ensure that the relevant milestones are created. [Go to GitLab Milestones for .com](https://gitlab.com/groups/gitlab-com/-/milestones)
1. Click on `New milestone` in the top right
1. Title the milestone with the `dot` release that matches `.org`. 
   * Note: We iterate through the `.0` and further for each release with the `.0` release every May.
1. Set the start date to be the Saturday prior to the previous releases [release date](/releases/)
1. Set the end date to be the Friday prior to the third Thursday of the release month
1. Closing milestones happens in the [Engineering workflow](/handbook/engineering/workflow/#milestone-cleanup)

## Understanding Releases

The [release definitions](/handbook/engineering/releases/) are maintained by the Engineering Team and we run the end of each Milestone on the [release date](/handbook/engineering/releases/).

## Product Milestones Usage

-  These milestones are used create boards and Issues for each release
-  The [Product Development Google Calendar](https://calendar.google.com/calendar/embed?src=gitlab.com_baef86oeitmd9uuq7m9i8021j8%40group.calendar.google.com) (WIP) - also uses these milestone names and dates. 


## Relevant links

- [Engineering release definitions](/handbook/engineering/releases/)
