---
layout: handbook-page-toc
title: "Marketo"
description: "Marketo is our marketing automation platform used for email marketing, lead management, and program management."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}


### About Marketo

[Marketo](https://www.marketo.com/) is our marketing automation platform used for email marketing, lead management, and program management. 

To see the different systems that are connected to Marketo, please visit the [Marketo System Infrastructure Mapping Mural](https://app.mural.co/t/gitlab2474/m/gitlab2474/1604947309706/7aec5684a2fa4671823c5acd352348b04562950f).

### Marketo <> Salesforce.com Connection

When any lead/contact is created in SFDC, it will automatically sync and create in Marketo - nothing is held back. Likewise, when a lead/contact is deleted in SFDC, it will delete in Marketo as well. Alternatively, Marketo does not automatically push all records to SFDC and a deleted record in Marketo will not delete in SFDC unless specifically told to. 

A lead will sync from Marketo to SFDC in these scenarios:
1. Member of Program that is synced to SFDC
2. When they reach `MQL` status and reach 100 points
3. Specifically told to sync via a flow step `Sync to SFDC`

Marketo also can create and edit SFDC campaigns. The `Active` checkbox must be checked in order for Marketo to be able to map to that campaign. [Go here for campaign set up directions](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up).

### Sandbox
We do have a sandbox to work in for Marketo. The sandbox is used for training, creation of API links and overall testing before we move to production. There is not a way to `promote` a program from the sandbox to Prod, so building programs in the sandbox first is not always required. Guidelines for when to build in the sandbox is TBD, but for custom API and webhook integrations, it is highly recommended.

If you'd like access to the sandbox, please fill out an [AR](/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/frequently-asked-questions/).


## Forms   
Nearly all the forms on our website (`about.gitlab.com`) are Marketo embedded forms. Marketing Operations is responsible for maintaining existing forms and creating any new forms. If you need a new form created, please open a [form creation issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request).

Form documentation can be found [here](https://docs.google.com/spreadsheets/d/1cV_hI2wAzLxYYDI-NQYF5-FDDPXPXH0VV5qRBUJAQQk). It contains all of our current forms, as well as standardized country and state picklists.

**Translated Forms Available**: Spanish, French, Italian, German, Portuguese, and Japanese. If you require a new language, please gather the [translations](/handbook/marketing/localization/#current-state) and then create an [issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request). Due to resource constraints, we are only creating new forms for [P0 countries](https://about.gitlab.com/handbook/marketing/localization/#priority-countries).

All forms should follow these guidelines:  
- Field labels are always ALL CAPS
- Label width = 150 / Field width = 300
- Fields should be stacked in a vertical line
- `State/Province` only visible when `Country` = `United States` or `Canada`; the visibility rule dynamically displays `Province` when `Canada` is selected or `State` when `United States` is selected 
- Generally `City` is only visible when `Country` = `Ukraine`
- Forms should all contain a checkbox for `opting in` to communications via email
- When `Country` = `Ukraine` there is an additional checkbox for the submitter to confirm they do not belong to the Crimean region of the Ukraine
- Country should not include [embargoed countries ](/handbook/business-ops/trade-compliance/) 
- All forms should have hidden fields for Demandbase, gclid and google analytics tracking
- Do not use lightboxes

If you are collecting home addresses for direct mail campaigns, you must include the following language on the landing page or form. Additionally, you must set up a deletion campaign in Marketo to remove their address information once you have sent the item. Please also ensure the vendor we are using to ship the items also deletes this from their records. `By giving us your home address, you are giving us permission to mail items to your home. We will not use this data for any other purposes.`


### Website Form Management

The forms on about.gitlab are embedded Marketo forms. Any changes to the fields, layout, labels and CSS occur within Marketo and can be pushed live without having to make any changes to the source file on GitLab. When needing to change or embed a whole new form, please open an issue using the `form_request` [template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/blob/master/.gitlab/issue_templates/form_request.md). 

If you are having trouble seeing a Marketo form, please reference [this page](/handbook/marketing/inbound-marketing/digital-experience/website/#why-isnt-this-form-working).

Each Marketo form should push an event after successful submission to trigger events in Google Analytics. We use the following event labels to specify which events to fire.

1. `demo` for static demos on `/demo/` and `/demo-leader/`
1. `webcasts` for forms on any page in `/webcast/`
1. `trial` for the form on `/free-trial/`
1. `resources` for forms on any page in `/resources/`
1. `events` for forms on any page in `/events/`
1. `services` for form on `/services/`
1. `sales` for form on `/sales/`
1. `public-sector` for forms on `/solutions/public-sector/`
1. `mktoLead` legacy custom event label used on Newsletter subscription form submission events. Currently used for primary, security, and all-remote newsletter form submissions.

We add the following line above `return false` in the form embed code. Please update the event label from `demo` to reflect the appropriate form completion.

```
dataLayer.push(
{
  'event' : 'demo',
  'mktoFormId' : form.getId(),
  'eventCallback' : function()
  {}, 'eventTimeout' : 3000
});
```

### Campaign Limits

There is a set limit of 250,000 records that can be processed through a given smart or email campaign. If the smart campaign smart list is set to update or email over 250,000 records, it will not run and will be `aborted`. This is in place to prevent accidental mass updates and emails. If you need to run a campaign over that limit, reach out to MarOps.

#### Standardization of Country &/or State values

There are several workflows that clean the `Country` &/or `State` fields to ensure the value meets required Salesforce format. States should be spelled out, not using abbreviations (ex. CA should be California). If a `Country` &/or `State/Province` standardization does not match SFDC exactly, the lead will not sync. If a new standardization is needed, please open an issue in the [Marketing Operations project](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). 

All of the standardization smart campaigns are contained in:  

`Marketing Activities` -> `Operational - Do not edit` -> `Data Management` -> `01 Data Management` -> `04-Normalize Data`   

- These countries are the only ones that accept a state value: United States, Canada, Ireland, India, Brazil, Australia, China, Italy, Mexico
- All 50 US states and all Canadian Provinces have standardization campaigns to set them from their two letter abbreviation to their full spelling.
- The following countries have common variations updated to their accepted values: United States, Bolivia, Canada, China, France, Germany, Hong Kong, India, Iran, Ireland, Macao, Myanmar, Netherlands, Russia, South Korea, Sweden, Switzerland, United Kingdom, Venezuela, Vietnam.


## MQL Definition
A Marketing Qualified Lead is a lead that has reached a threshold of `100` points, based on demographic/firmographic and/or behavioral information. The [MQL Scoring](/handbook/marketing/marketing-operations/marketo/#scoring-model) is detailed below and is comprised of various actions and/or profile data that are weighted with positive or negative point values.
When a `Person Score` changes it will be inserted into the routing flow. Using LeanData every time a `Person Score` is updated, [LeanData](/handbook/marketing/marketing-operations/leandata/#record-validation) will run a check to see if the record needs to be processed through the flow.

### Re-MQL

A Lead/Contact will be allowed to re-MQL if they are in a `Nurture` status and reach the [MQL threshold](/handbook/marketing/marketing-operations#mql-scoring-model) again.

The number of times they `MQL` will be counted with the `MQL Counter` field.  The `Initial MQL DateTime` contains the very first time a prospect reached the [MQL threshold](/handbook/marketing/marketing-operations#mql-scoring-model).  `MQL Date` will be overwritten to be the most recent date that a lead has reached the MQL threshold.

When a lead is set to `Nurture`, their `Behavior Score` is reset to 0. Their `Person Score` is reset to the value of the `Demographic Score`. Additionally, a person who has reached `MQL` in the past, is given an additional score of `+20` when they are reset to `Nurture`. If a lead was `Accepted` before it reached the MQL threshold, and is then set to `Nurture` within 30 days, the lead's `Behavior Score` will reset to the value it was while in `Inquiry`, the `Demographic Score` will be re-run and their overall `Person Score` will be the sum of those two values.

When a lead `Re-MQLs` from `Nurture` to `MQL`, their `Nurture Reason` field is set to `Null`, but that `Nurture Reason` value is preserved in the field `Previous Nurture Value` on the lead or contact. That field is set by Marketo only. The `Nurture DateTime` only updates the first time. When a lead re-reaches an `MQL` status, they are not re-routed by LeanData for round-robin, they stay in their original owners name.

Follow the workflow mural to see the lead lifecycle. Notice you cannot go backwards in status to `Raw` or `Inquiry` from a later step.

<div style="width: 600px;" class="embed-thumb">
<div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;">
<div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab2474.1601481962008-5f74acea0e54f6444736cac9-24283f3a-1be5-41ba-a8d6-97433efd70a5.png?v=21e54b2e-50e9-447d-bec6-d64822e5092a) no-repeat center center; background-size: cover;"><div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);">
</div>
<a href="https://app.mural.co/t/gitlab2474/m/gitlab2474/1601481962008/7e957440dbd811156bf37e29eb4394d89f2d4d31" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> 
</div>
</div>
</div>

### Scoring Model
The lead scoring model is a 100 point system in order to MQL. Positive and negative points are assigned to a record based on their demographic and/or firmographic information, and their behavior and/or engagement with GitLab marketing. Their `Person Score` is the sum of their `Behavior Score` and their `Demographic Score`. The `Person Score` must reach `100` in order to MQL.

For account scoring, visit the [DemandBase page](/handbook/marketing/revenue-marketing/account-based-strategy/demandbase/#scoring-accounts-in-demandbase).

There is a flow that runs everynight to reset leads that have gone negative back to `0`. 

The model below is updated as of 2021-07-08.

Some leads are exluded from scoring if they:
* Have a `@gitlab.com` email address
* Are a competitor
* Status = `Unqualified` or `Bad Data`
* Company name of `student`, `personal`, `test` and similar 

#### Behavior Scoring

Behavior scoring is based on the actions that person has taken. The cadence of how often they can be scored is listed below. For campaign scoring, there must be a success in order to capture the score, those below are marked with a *. Refer to the [programs page and progression statuses](/handbook/marketing/marketing-operations/campaigns-and-programs) to see what constitues a `success`.

|**Action**|Campaign Type|**Points**|**Token**|**Type**|**Schedule/Flow Limit**|
|:-------------:|:-------:|:-----:|:--------:|:-------------:|:-----:|
|Registered |Registered, <br> Conference > Meeting Requested|	+10	|{{my.Registered}}|	Trigger	| Everytime|
|Follow Up Requested| Follow Up Requested|	+100	|{{my.Follow Up Requested}}	|Trigger	| Everytime|
|* Program High|Workshop, <br> Self-Service Virtual Event, <br> Webcast, <br> Executive Roundtables |	+30	|{{my.Online - High}} |Trigger| Everytime|
|* Program Med|Sponsored Webcast, <br>Speaking Session,<br> Owned Event	|+20	|{{my.Online - Med}}|Trigger|Everytime|
|* Program Low |Vendor Arranged Meetings,<br> Conference	|+10|	{{my.Online - Low}}		|Trigger|Everytime|
|* Content - High|None Defined| +30|	{{my.Content - High}}	|Trigger  |Everytime|
|* Content - Med|Gated Content|+15|	{{my.Content - Med}}	|Trigger  |Everytime|
|* Content -  Low|Content Syndication|+5|	{{my.Content - Low}}	|Trigger  |Everytime|
|* Survey  - High|Simply Direct|+45|	{{my.Survey - High}}	|Trigger   |	1/day	|
|* Survey - Med|(None Defined)	|+30|	{{my.Survey - Med}}		|Trigger|Everytime|
|* Survey - Low|Googleforms, <br> Default	|+15|	{{my.Survey - Low}}		|Trigger|Everytime|
|* PathFactory |Consumes PF content|+10|{{my.Content - High}}|Trigger|Everytime|
|* Inbound  - High|Contact Request, <br> Demo, <br> Renewals <br> [Hand Raise PQL](https://about.gitlab.com/handbook/product/product-principles/#a-pql-can-be-further-broken-down-into-two-types-usage-and-hand-raise)|	+100|{{my.Inbound - High}}|	Trigger|	1/day	|
|* Inbound - Med|Inbound form, not above |	+60|{{my.Inbound - Med}}	|	Trigger	|1/day|
|Drift - High| Drift Interactions with Meeting Scheduled|+100|{{my.Drift - High}}|Trigger|1/day|
|Drift - Low|All other Drift Interactions|+10|{{my.Drift - Low}}|Trigger|1/day|
|* Trial | SaaS,<br>Self-Managed,<br>Subscription Portal   |	+65|{{my.Trial}}	|Trigger| 1/day	|
|Subscription|Fills out Subscription Form	|+5|{{my.Subscription}}	|Trigger	|1/week	|
|Visits Key Webpage|`/pricing, /get-started`, `/install`, `/free-trial`	|+5	|{{my.Visits Key Webpage}}	|Trigger|1/day	|
|Visits Mult Webpages|7 pages in 1 day	|+5	|{{my.Visits Mult. Webpages}}	|Trigger	|1/ 3 days|
|Web: No activity in 30 days|No web activity, not created in last 30|	-10	|{{my.No Web Activity}}|	Trigger|	1/month|
|Web: Visits Low Value|`/jobs`|	-10	|{{my.Visits Low Value Webpage}}|	Trigger	|1/day|
|Email: Unsubscribed|Unsubscribed from Email|	-10	|{{my.Unsubscribed}}|	Trigger	|1/month
|Email:  Bounce	|Email Hard Bounces|	-20|	{{my.Bounce}}|	Trigger|1/month|


##### Score Boosters 
These are boosters to scores that occur when a special action takes place above the traditional action above.

|**Action**|Description|**Points**|**Token**|**Type**|**Schedule/Flow Limit**|
|:-------------:|:-------:|:-----:|:--------:|:-------------:|:-----:|
|E-Book Booster|Lead is created with `Initial Source` of `Gated Content - Ebook`| +15| {{my.Booster}}|Trigger|Once|
|Demo Webcast Booster|Attends (or On-Demand) demo webcast (not incl. demo form fills)| +15| {{my.Booster}}|Trigger|1/day|
|PF Demo Booster|Consumes PF content that is a demo|+35|{{my.Demo PF Booster}}|Trigger|1/day|
|PF Engagement Booster 1|Engagement Time >  2 minutes < 4 minutes|+10|{{my.Content Boost 1}}|Trigger|Everytime|
|PF Engagement Booster 2|Engagement Time > 4 minutes|+15|{{my.Content Boost 2}}|Trigger|Everytime|
|BrightTalk Engagement Booster 2|Total Minutes Viewed > 4 minutes|+15|{{my.Content Boost 2}}|Trigger|1/day|
|PF Fast Moving Buyer|Becomes fast moving buyer|+10|{{my.FMB Booster}}|Trigger|1/month|
|LinkedIn Form Fill Booster| Fills out Linkedin Lead Gen Form | +30| {{my.Linkedin Booster}}|Trigger|Everytime|
|Re-MQL Score|	Status changes to Nurture,<br>MQL Counter >0	|+20	|{{my.ReMQL}}	|Requested|	1/month|
|Trial + Action|Success in program within 40 days of starting a trial |+20|{{my.Trial plus Action Booster}}|Trigger|1/month|


#### Demographic Scoring

For Job role/function and seniority descriptions can be found [here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing).

|**Action**|Campaign Type|**Points**|**Token**|**Type**|**Schedule/Flow Limit**|
|:-------------:|:-------:|:-----:|:--------:|:-------------:|:-----:|
|Setup for Company/Team Use|Self-Identified as using for company or team in the product|	+40	|{{my.Setup for Company}}|	Trigger|Once|
|Focus Account|	[Account Based/Centric](/handbook/marketing/revenue-marketing/account-based-strategy/#gl4300--mm4000)|	+20	|{{my.Focus Account}}|	Trigger|Once|
|Technology - High (Not Live)|[See tech here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)	|+20|	{{my.Tech - High}}|	Batch / Nightly|	Once|
|Technology - Low (Not Live)|[See tech here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)	|+10|{{my.Tech - Low}}	|	Batch / Nightly|	Once|
|Seniority - High|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	+20	|{{my.Seniority - High}}|	Trigger on creation or Update to Title|	Once|
|Seniority - Med|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	+15	|{{my.Seniority - Med}}	|	Trigger on creation or Update to Title|	Once|
|Seniority - Low|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	+15	|{{my.Seniority - Low}}	|	Trigger on creation or Update to Title|	Once|
|Seniority - Negative|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	-10	|{{my.Seniority - Negative}}|	Trigger on creation or Update to Title|	Once|	
|Function - High|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	+20	|{my.Function - High}}|	Trigger on creation or Update to Title|	Once|
|Function - Med|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|+15|	{{my.Function - Med}}|	Trigger on creation or Update to Title|	Once|
|Function - Low|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	+10|	{{my.Function - Low}}	|	Trigger on creation or Update to Title|	Once|
|Function - Negative|[Find descriptions here](https://docs.google.com/spreadsheets/d/1EztHU53vE9Y_mmxlb4taQJ5_oo7CatdFvZNxbMklJf4/edit?usp=sharing)|	-20	|{{my.Function - Negative}}		|Trigger on creation or Update to Title|	Once|
Generic Domain|Contains generic email domain|	-5	|{{my.Generic Domain}}|Triggered|Once|
|Country - P0, P1|[Country = P0, P1](https://about.gitlab.com/handbook/marketing/localization/#priority-countries)|	+5	|{{my. Country - P0, P1}}|	Trigger on creation or Update 	|Once|

## Lists and Segmentation

### Segmentations
Marketo segmentations are used similar to a smartlist, but they are permanent and can only be changed by marketing ops. They are used to create dynamic content (emails and landing pages) and are used for faster processing of lists. Segmentations are constantly running in the background in Marketo, so they never need to be refreshed for current numbers. We can only have 20 total segmentations in Marketo. Segmentation criteria waterfalls down based on the order of the segment lists that make up the segmentation. You can only be in one segment of a segmentation. 

The following segmentations that are approved and live.

<details>
<summary markdown='span'>
[Compliant and Emailable](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1016A1)
</summary>
</details>

<details>
<summary markdown='span'>
[Personas - Level](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1018A1)
</summary>

- Executives
- Managers
- Practioners
- Default

</details>

<details>
<summary markdown='span'>
[Sales Segment](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1017A1)
</summary>

- Enterprise
- Mid-Market
- SMB
- PUBSEC
- Default

</details>


<details>
<summary markdown='span'>
[Region](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1013A1)
</summary>

- AMER
- EMEA
- APAC
- LATAM
- Default

</details>

<details>
<summary>
[Sub-Region](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1019A1)
</summary>

- NA East
- LATAM
- NA West
- ANZ
- Asia SE
- Asia Central
- China
- Asia South
- Japan
- Korea
- Europe Central
- Europe East
- Europe South
- EMEA
- Nordics
- UKI
- India
- Africas
- Benelux
- France
- Russia

</details>

<details>
<summary markdown='span'>
[Funnel Stage](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1021A1)
</summary>

- Top - `Status = NULL, Inquiry or Raw` OR (`Status = Nurture` AND `Person Score < 75`)
- Middle - `Status = MQL, Accepted or Qualifying` OR (`Status = Nurture` AND `Person Score > 74`)
- Bottom - `Status = Qualified` OR `1 Open Opportunity` OR `Has an Open Opportunity`
- Customer - `Current Customer = TRUE` OR `Status = Web Portal Purchase`
- Unqualified - Status is `Unqualified or Bad Data`

</details>

<details>
<summary markdown='span'>
[Priority Countries](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1024A1)
</summary>

Complete list of priority countries as seen [here](https://docs.google.com/spreadsheets/d/1eRrtRPdNSQjtvDrEvPJ_klfqKAatnLIzDjvShXhnSr8/edit#gid=1078123371).

- P0
- P1
- P2
- P3
- Embargoed

</details>

<details>
<summary markdown='span'>
[Language Preference](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SG1023A1)
</summary>

- French
- Japanese
- German
- Korean
- Default (English)

</details>

### Other Field Documentation and Definitions

<details>
<summary markdown='span'>
Email Validations - Populated by ZoomInfo connection and other Marketo datapoints such as bounces.
</summary>

|Field Name|Definition              | OK to send?|
|----------|------------------------|------------|
|Valid     |Verified as real address| Yes |
|Invalid   |Verified as not valid   | No |
|Disposable|A temporary, disposable address	| No|
|Accept all (Unverifiable)| A domain-wide setting (learn more)| Yes/No|
|Unknown   |The server cannot be reached| No|

</details>

### Account Based Marketing List   

ABM lists are built by request for the Field Marketing and Marketing Program team to target & send emails/invitations to accounts deemed to be high priority by Sales. You can find these lists in the DMA folder in the [Marketo Database](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52943077A1).
The **MktgOps** team is responsible for creating & maintaining these lists. 

If a new ABM list is needed, please open an issue using the [Target list issue template](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new#request-confirm-target-list) and tag marketing ops.

### Geographic DMA List   

The Geographic DMA (direct marketing area) were built for the Field Marketing and Marketing Campaigns team to target & send emails/invitations related to Field &/or Corporate marketing events. The **MktgOps** team is responsible for creating & maintaining these lists.  You can find these lists in the `Database` of Marketo in the `Geographic DMA List` [Folder](https://app-ab13.marketo.com/#SL52900024A1). 

If a new DMA list is needed, please open an issue in the Marketing Operations project & utilize the [DMA_request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=dma_request). 

#### Focused Email Lists
The Field Marketing and Marketing Campaigns teams use targeted email lists as a tool when pursuing specific regions, sectors or companies. Email list requests must be submitted using [this template](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new#request-confirm-target-list). From there, the campaign managers or marketing ops will build or review the list

#### SLA for Targeted Lists: 
* List request is required 7 days prior to email deployment - FMM / MPM
* Final Smart List is available 2 days prior to email deployment - MOps

#### List Exports
If you need a list export, please fill out an [export request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=export_request). If sharing externally, please follow [guidance](/handbook/engineering/security/security-assurance/security-risk/third-party-minimum-security-standards.html#guidance-to-sharing-data-externally) to help inform your request.

If you need a list export, please fill out an [export request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=export_request). If sharing externally, please follow [guidance](handbook/engineering/security/security-assurance/field-security/third-party-minimum-security-standards.html#guidance-to-sharing-data-externally) to help inform your request.


## Mailchimp sends
Our Mailchimp subscription is currently paused to prevent being billed while we deprecate. We are allowed to unpause 2x a year. We can unpause only in the rare case of needing to send a large security alert email. The External Communications person for security has access to Mailchimp to send these notices out. Prior training is required before a user can be given access. Please reach out to Mops if this access is required. 
