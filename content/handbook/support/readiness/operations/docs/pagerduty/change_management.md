---
title: Change management
description: Support Operations documentation page for Pagerduty change management
canonical_path: "/handbook/support/readiness/operations/docs/pagerduty/change_management"
---

## Schedule changes

**Note** This only applies for the non-shadow schedules. For changing shadow
schedules, please see [shadow schedule changes](#shadow-schedule-changes).

#### Create an issue

At the start of each quarter, you should start by making an issue in our
[Pagerduty project](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty)
using the
[issue template](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty/-/issues/new?issuable_template=Quaterly%20schedule%20changes)
to do so.

Fill out all the required areas of the issue based on the template. Make sure
to assign the issue to all the DRIs from the operations team that will be
working it.

The milestone should be the one relating to the first deployment of the new
quarter. So if the new quarter starts 2023-11-01, you'd want to use the
milestone `Support Ops Deployment: 2023-11-01`.

#### Prepare the spreadsheet

At the start of the quarter, you will need to clean up the sheet from the
previous quarter and then prepare it for the current quarter.

To start, you should first generate the new rows you will be needing. To do
this, highlight a group of cells for the schedule (all the columns) consisting
of at least 3 rows, click on the blue circle at the bottom-right of the
highlighted cells, and then drag your mouse down a good number of rows. This
will auto-generate it for you. You can then remove any extra rows at the bottom
you do not need for the following quarter.

With that done, you need to clean out the drop-downs you just created. Highlight
then and hit the `DEL` key on your keyboard to do so (do **not** his the
backspace key, as it will completely remove the drop-down itself).

After that is done, highlight the previous quarters cells, right click, and
hover over `Delete cells`, and click on `Delete cells and shift up`.

You will do this for every schedule on every sheet.

After doing so, you need to use Pagerduty to determine the values for all the
blank drop-downs. Your aim is to show what the various schedules will look like
for the next quarter _without any changes_.

After doing all this, make sure to update the issue you are working out of by
checking the box for `Prepare the spreadsheet` and adding the time spent doing
all this.

#### Request edits

At the start of the second month of the quarter, you are ready to perform
perhaps the simplest step: you need to let managers know you are ready for them
to submit edits.

On your issue, ping managers with the following message:

> Greetings @gitlab-com/support/managers !
>
> We are now opening the
> \[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
> for edits for the next quarter!
>
> Please review the spreadsheet and add any edits you wish to see occur for next
> quarter. The due date for this is YYYY-MM-01

Replacing `YYYY-MM` with the year and month of the last month of the quarter.

After doing all this, make sure to update the issue you are working out of by
checking the box for `Request edits` and adding the time spent doing all this.

##### Requests to add people to a schedule

When a support manager wants someone added to the schedule, they should manually
type out the email of the person they want added to the schedule. This will
cause a validation error to appear on the cell. As Operations, you will need to
[edit the drop-down](#editing-the-drop-down) to add the person. After doing so,
the validation error should no longer be present.

##### Requests to remove people from a schedule

When a support manager wants someone removed from a schedule, they should not
use that person's email in any of the drop-downs. We will manually remove the
person from the schedule when
[implementing the changes](#implement-the-changes).

#### Lock in the edits

During the final month of the quarter, you need to first lock the requested
changes into place to prevent further editing.

You will need to do this on each of the sheets present on the spreadsheet.

To protect the drop-downs on a sheet, you will click `Data` at the top of the
page and then select `Protected sheets and ranges`. This will bring up a sidebar
on the right side of the page.

Click the `+ Add a sheet or range`, put the description as `Locked for FY##Q#"`
(replacing `#` signs with the fiscal year and quarter number, such as FY24Q3),
then put the corresponding value in the box (depending on the sheet you are
currently working on):

| Sheet    | Value to use      |
|----------|-------------------|
| AMER     | `AMER!3:1001`     |
| APAC     | `APAC!3:1001`     |
| EMEA     | `EMEA!3:1001`     |
| Managers | `Managers!3:1001` |

After doing so, click the green `Set permissions` button. Doing so will make a
pop-up appear asking who has editing permissions for the protected ranges.
Ensure `Restrict who can edit this range` is checked and click the drop-down
below it, then select `Custom`.  This will show all the currently invited groups
and people on the sheet. Uncheck `GitLab` and ensure the other are checked (they
should only be members of Support Readiness). After doing so, click the green
`Done` button.

After doing all this, make sure to update the issue you are working out of by
checking the box for `Lock in the edits` and adding the time spent doing all
this.

After that, you are now ready to
[implement the changes](#implement-the-changes).

#### Implement the changes

During the final month of the quarter, your objective is to setup all the
schedules we use to align with the requested changes in the
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing).

The exact way to do this will vary, but some suggestions are:

- Make it align as best as possible with the rotation system in Pagerduty
- Use overrides where variances in the normal rotation occurs

For more information on doing all this, please see
[modifying a schedule](/handbook/support/readiness/operations/docs/pagerduty/schedules/#modifying-a-schedule)
in our Pagerduty documentation for more information.

## Shadow schedule changes

As these do not have an impact on our production schedules, we can implement
these when requested. These will stem from issues within the
[Pagerduty project](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty).

Implement the changes and let the requester know they are in place. If others
are already using the shadow rotation, make sure to mention it to them as well.

## Escalation policy changes

This can be a very destructive action. As such, only an Operations manager or
Support Readiness Director should make these changes.

## Service changes

This can be a very destructive action. As such, only an Operations manager or
Support Readiness Director should make these changes.

## Spreadsheet setup

The
[Support Pagerduty Worksheet](https://docs.google.com/spreadsheets/d/1FdUzVXCZleopfteC2QxW7LJwyylGWGl9hwXHMPkRHbQ/edit?usp=sharing)
is setup in a very specific way to facilitate planning for the next quarter's
changes.

#### Drop-downs reflect who is in the rotation

Each drop-down showing reflects who is in the schedule it is for.

#### Only drop-down areas are editable

We have several protections in place on the sheet to prevent editing cells that
are not meant to be edited:

| Name of protection | Sheet    | Except for                   |
|--------------------|----------|------------------------------|
| AMER headers       | AMER     | D3:F1001, K3:K1001, P3:Q1001 |
| APAC headers       | APAC     | D3:E1001, J3:K1001           |
| EMEA headers       | EMEA     | D3:D1001, I3:I1001           |
| Managers headers   | Managers | D3:D1001, I3:J1001, O3:O1001 |

#### Editing the drop-down

To edit a drop-down that is in use, go to the sheet the drop-down is used on,
then click the `Data` option at the top of the screen, then click on
`Data validation`. Locate the drop-down in question by looking over the cells
used on the sheet and click on it. After doing so, you can make the needed
edits. Once you have done so, click the green `Done` button.
