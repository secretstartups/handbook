
# Forbes 2000 to SFDC

## Goal

Provide visibility of Gitlab expansion within the top 2000 Global Forbes accounts. 

To allow SFDC reporting by Forbes rank, we created a 1 on 1 relationship between every Forbes account and a single SFDC account.

The original issue can be found [here](https://gitlab.com/gitlab-com/sales-team/field-operations/analytics/-/issues/135):

## Methodology
 
 The following rules where applied for the matching:

- Apply two rounds of matching, first, Forbes against ARR driving accounts in SFDC (customers). Second, Forbes against all others non-Arr accounts.
- Three methods for matching were used, ordered by priority:
-- Website: Using domain of the Forbes website vs the SFDC website of the child account.
-- Name: Using a lower case, stripped version of the Forbes and SFDC name.
-- Fuzzy: Using fuzzy matching for the ARR driving accounts, in a try to catch as much relevant value as possible.
- Forbes accounts matched in the first round were not to be matched again.
- Names and websites were standardized to improve matching rates.
- A rough manual check was done vs top ARR accounts.

## Result

The mached file for 2020 can be found [here](https://docs.google.com/spreadsheets/d/1sr3MGraDVAbBzqYWVHS0NoABisnWxnViGYRm_7PHE3w/edit#gid=1803700829)

## Considerations

As the matching was mostly automatic, it is far from perfect. If any issue is identified please reach out to the Sales Strategy team to have it corrected.

## Update frequency

The report will be updated once a year around June. The Sales Strategy team is responsible for the matching and the Sales Ops team for the upload.

## SFDC Fields

This placeholder will be updated once the fields are added.


