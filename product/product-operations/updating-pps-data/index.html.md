---
layout: handbook-page-toc
title: Updating Post-purchase Survey Data
---

## Updating `PPS` data

Post-purchase survey (PPS) data is taken monthly via Qualtrics. The output should come in the form of a spreadsheet which should look something like [this (internal only)](https://docs.google.com/spreadsheets/d/1GG3I34bfCvj3l0ByPEKQK7dTNZKpVQ_HajQDdHPaM8I/edit#gid=930609182).

In that spreadsheet, the `feature` column matches to a feature in `data/features.yml`. That's what needs to get updated. There are two fields which we are updating here:

1. `pps_aggregate` represents the total of all PPS scores from all time.
1. `pps_recent` represents the _most recent_ PPS result. If a feature is not listed in the results, the "recent" value should be marked as `0`.

Every feature in `features.yml` _should have both entries_. If it's a brand-new feature, it hasn't been surveyed in a PPS yet, the values are still zero.

#### *How to update:*

1. Open [`data/features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/features.yml)
1. For each row on the "SUMMARY_alltime" sheet, you'll update the `pps_aggregate` value to match that new value.
1. For each row on the "SUMMARY_Qx" sheet (the one from the current quarter), you'll update the `pps_recent` value to match that new value.
1. Submit your MR, and merge!