---
layout: handbook-page-toc
title: Updating Post-purchase Survey Data
---

## Updating `PPS` data


It is important we keep pricing related data in `features.yml` up to date because it affects pricing decisions and auto-generated pages that are referenced across various teams at GitLab, including Product Pricing, Marketing and Sales. [Post-purchase survey](https://about.gitlab.com/direction/product-operations/#post-purchase) (PPS) data is taken monthly via Qualtrics. The output should come in the form of a spreadsheet which should look something like [this (internal only)](https://docs.google.com/spreadsheets/d/1Z_oyudSJeZR68VgrM87ePfZmVfUnOIgQrr1iWzmImH0/edit#gid=1021405695) and is shared out via the [quarterly analysis issues](https://gitlab.com/gitlab-com/Product/-/issues/2272).  

In that spreadsheet, the `feature` column matches to a feature in `data/features.yml`. That's what needs to get updated. There are two fields which we are updating here:

1. `pps_aggregate` represents the total of all PPS scores from all time.
1. `pps_recent` represents the _most recent_ PPS result. If a feature is not listed in the results, the "recent" value should be marked as `0`.

Every feature in `features.yml` _should have both entries_. If it's a brand-new feature, it hasn't been surveyed in a PPS yet, the values are still zero.

#### *How to update:*

<iframe width="560" height="315" src="https://www.youtube.com/embed/XG917ZHKnQE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

1. Open [`data/features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/features.yml)
1. For each row on the "SUMMARY_alltime" sheet, you'll update the `pps_aggregate` value to match that new value.
1. In `features.yml`, find-and-replace all the values to zero. In an IDE, you can use a regular expression like `pps_recent: \d*` and replace it with `pps_recent: 0`.
1. For each row on the "SUMMARY_Qx" sheet (the one from the current quarter), you'll update the `pps_recent` value to match that new value.
1. Submit your MR, and merge! 
     To see a sample, check out the diff in the FY22 Q1 update MR [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/85089/). 
