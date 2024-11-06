---
title: Change management
description: Support Operations documentation page for Pagerduty change management
canonical_path: "/handbook/support/readiness/operations/docs/pagerduty/change_management"
---

<sup>*Introduced via [support-team-meta#4077](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4077)*</sup>

## Schedule changes

**Note** This only applies for the non-shadow schedules. For changing shadow
schedules, please see [shadow schedule changes](#shadow-schedule-changes).

The process for this can be broken down into 3 sections:

1. [Notify DRIs about the upcoming implementation](#notify-dris-about-the-upcoming-implementation)
1. [Implement the changes](#implement-the-changes)
1. [Rotate the spreadsheet](#rotate-the-spreadsheet)

### Notify DRIs about the upcoming implementation

On the first Monday of the second month of a given quarter, we notify the DRIs
about the upcoming implementation. This is done automatically via Slack
workflows, but for reference, the timing and messaging used is as follows:

<details>
<summary>0800 UTC - EMEA</summary>

> Greetings @support-managers-emea @Kate Grechishkina !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [CEOC 1](https://gitlab.pagerduty.com/schedules#P9SV029),
> [CEOC 2](https://gitlab.pagerduty.com/schedules#P7ML12U),
> [CMOC](https://gitlab.pagerduty.com/schedules#P59382D),
> [Managers](https://gitlab.pagerduty.com/schedules#PXQ2ZAZ), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>
<details>
<summary>1400 UTC - AMER</summary>

> Greetings @support_managers_amer !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [Global CEOC 1](https://gitlab.pagerduty.com/schedules#PBLAHV7),
> [Global CEOC 2](https://gitlab.pagerduty.com/schedules#P9FKYZC),
> [Global CEOC 3](https://gitlab.pagerduty.com/schedules#PP28N7L),
> [US Gov CEOC 1](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [US Gov CEOC 2](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [US Gov CEOC 3](https://gitlab.pagerduty.com/schedules#P89ZYHZ),
> [CMOC](https://gitlab.pagerduty.com/schedules#PG0SHU2),
> [Managers](https://gitlab.pagerduty.com/schedules#PTI56V1), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>
<details>
<summary>2130 UTC - APAC</summary>

> Greetings @support-managers-apac !
>
> This is your quarterly reminder that Support Readiness will be implementing
> next quarter's Pagerduty oncall schedules in about a month. As such, please
> remember to fill out the
> [Pagerduty spreadsheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> before the first of next month!
>
> The schedules you need to ensure are updated are
> [CEOC 1A](https://gitlab.pagerduty.com/schedules#PQB9Q6K),
> [CEOC 1B](https://gitlab.pagerduty.com/schedules#PKAUGWW),
> [CEOC 2A](https://gitlab.pagerduty.com/schedules#PKPXM8K),
> [CEOC 2B](https://gitlab.pagerduty.com/schedules#PZ42YQR),
> [CMOC 1](https://gitlab.pagerduty.com/schedules#PGUP5OB),
> [CMOC 2](https://gitlab.pagerduty.com/schedules#PMPKHZN),
> [Managers](https://gitlab.pagerduty.com/schedules#PWBXTYX), and
> [SSAT](https://gitlab.pagerduty.com/schedules#P9UIIDY)
>
> Please remember any BLANK values at the time of implementation will be
> assigned to the Support Director for your region.

</details>

### Implement the changes

During the first week of the final month of the quarter, you need to setup all
the schedules we use to align with the requested changes in the
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing).

To do this, we utilize the
[Schedule Implementer](https://gitlab.com/gitlab-support-readiness/pagerduty/schedule-implementer)
project.

To utilize this, navigate to the location of the
[Schedule Implementer](https://gitlab.com/gitlab-support-readiness/pagerduty/schedule-implementer)
repo on your local computer.

You will want to run the `bundle` command to download the needed gem (and it's
dependencies).

After doing so, you should verify you have the needed environment variables set
in your local environment (see the project's
[README](https://gitlab.com/gitlab-support-readiness/pagerduty/schedule-implementer#requirements)
for more details).

With those in place, setup the config.json file within the data folder by doing
the following:

```bash
echo $SERVICE_CREDS > data/config.json
```

After that has been done, you will run the script itself using:

```bash
./bin/add_to_schedule
```

The output should show you if each override for each group within each schedule
was created correctly. If you see a status of 201, it was successful. If you see
anything else, it did not succeed (and manual intervention will be required).

After you have run that script, go into Pagerduty and check the corresponding
schedule for accuracy.

### Rotate the spreadsheet

After you have [implemented the changes](#implement-the-changes) into Pagerduty,
the final thing you need to do is rotate the spreadsheet. How you do this is
really up to you, but the general recommended way is to do the following:

- Select the following quarter's entries on the spreadsheet and hit the `DEL`
  key on your keyboard *twice* (this ensures it fully deletes everything)
- Copy all the remaining entries and paste them from the 2nd line of the file
  (the one right after the headers).
- Navigate to the bottom of what you just copied, select the remaining entries,
  and hit the `DEL` key on your keyboard *twice* (this ensures it fully deletes
  everything)
- Select the last 5 rows on the spreadsheet, click the dot at the bottom-right
  of your selection (holding the mouse button down), and drag it down however
  many rows you need to add (if you are unsure, go down about 93 rows, as that
  should cover all the days). Doing this will automatically fill out the needed
  information for you.

## Shadow schedule changes

These are now fully automated via the Support Super form. As such, you should
never need to make modifications to them.

## Escalation policy changes

This can be a very destructive action. Due to the complexity involved, we do not
have a fully documented process for this at this time.

As such, please only have @jcolyer or @dtragjasi work these at this time.

## Service changes

This can be a very destructive action. Due to the complexity involved, we do not
have a fully documented process for this at this time.

As such, please only have @jcolyer or @dtragjasi work these at this time.

## Spreadsheet setup

The
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
is setup in a very specific way to facilitate planning for the next quarter's
changes.

### Dropdowns reflect the entire pool of possible people for that dropdown

Each dropdown's content is determined based on the pool of possible people that
could be used. This is done via a range on the People sheet.

Never make edits directly to the dropdown values. If you need to add or remove
someone from the possible options, please do so on the People sheet. This is
usually done by provisioners during onboarding, offboarding, and team member
transfers.

### We have many protections in place

We have several protections in place on the sheet to prevent editing cells that
are not meant to be edited:

| Name of protection              | Sheet Name            | Definition                                      | Who can edit |
|---------------------------------|-----------------------|-------------------------------------------------|--------------|
| AMER - CEOC dropdowns           | AMER - CEOC           | 'AMER - CEOC'!2:1000                            | Support Readiness, Support Managers |
| AMER - CEOC headers             | AMER - CEOC           | Whole sheet except F2:F1000, M2:M1000, T2:T1000 | Support Readiness |
| US Government - CEOC dropdowns  | US Government - CEOC  | 'US Government - CEOC'!4:1000                   | Support Readiness, Support Managers |
| US Government - CEOC headers    | US Government - CEOC  | Whole sheet except F2:F1000, M2:M1000, T2:T1000 | Support Readiness |
| AMER - CMOC dropdowns           | AMER - CMOC           | 'AMER - CMOC'!2:1000                            | Support Readiness, Support Managers |
| AMER - CMOC headers             | AMER - CMOC           | Whole sheet except F2:F1000                     | Support Readiness |
| APAC - CEOC - Group 1 dropdowns | APAC - CEOC - Group 1 | 'APAC - CEOC - Group 1'!2:1000                  | Support Readiness, Support Managers |
| APAC - CEOC - Group 1 headers   | APAC - CEOC - Group 1 | Whole sheet except F2:F1000, M2:M1000           | Support Readiness |
| APAC - CEOC - Group 2 dropdowns | APAC - CEOC - Group 2 | 'APAC - CEOC - Group 2'!2:1000                  | Support Readiness, Support Managers |
| APAC - CEOC - Group 2 headers   | APAC - CEOC - Group 2 | Whole sheet except F2:F1000, M2:M1000           | Support Readiness |
| APAC - CMOC dropdowns           | APAC - CMOC           | 'APAC - CMOC'!2:1000                            | Support Readiness, Support Managers |
| APAC - CMOC headers             | APAC - CMOC           | Whole sheet except F2:F1000, M2:M1000           | Support Readiness |
| EMEA - CEOC dropdowns           | EMEA - CEOC           | 'EMEA - CEOC'!2:1000                            | Support Readiness, Support Managers, Kate Grechishkina |
| EMEA - CEOC headers             | EMEA - CEOC           | Whole sheet except F2:F1000, M2:M1000, T2:T1000 | Support Readiness |
| EMEA - CMOC dropdowns           | EMEA - CMOC           | 'EMEA - CMOC'!2:1000                            | Support Readiness, Support Managers, Kate Grechishkina |
| EMEA - CMOC headers             | EMEA - CMOC           | Whole sheet except F2:F1000                     | Support Readiness |
| AMER Managers dropdowns         | AMER Managers         | 'AMER Managers'!2:1000                          | Support Readiness, Support Managers |
| AMER Managers headers           | AMER Managers         | Whole sheet except F2:F1000, M2:M1000           | Support Readiness |
| APAC Managers dropdowns         | APAC Managers         | 'APAC Managers'!2:1000                          | Support Readiness, Support Managers |
| APAC Managers headers           | APAC Managers         | Whole sheet except F2:F1000                     | Support Readiness |
| EMEA Managers dropdowns         | EMEA Managers         | 'APAC Managers'!2:1000                          | Support Readiness, Support Managers, Kate Grechishkina |
| EMEA Managers headers           | EMEA Managers         | Whole sheet except F2:F1000                     | Support Readiness |
| Available persons               | People                | Whole sheet                                     | Support Readiness |
