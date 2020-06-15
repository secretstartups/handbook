---
layout: handbook-page-toc
title: "Marketo"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Tools Uses  

### Forms   
Nearly all the forms on our website (`about.gitlab.com`) are Marketo embedded forms. Marketing Operations is responsible for maintaining existing forms and creating any new forms.   

All forms should follow these guidelines:  
- Field labels are always ALL CAPS
- Label width = 150 / Field width = 300
- Fields should be stacked in a vertical line
- `State/Province` only visible when `Country` = `United States` or `Canada`; the visibility rule dynamically displays `Province` when `Canada` selected or `State` when `United States` selected 
- Generally `City` is only visible when `Country` = `Ukraine`
- Forms should all contain a checkbox for the acceptance of the privacy policy
- When `Country` = `Ukraine` there is an additional checkbox for the submitter to confirm they do not belong to the Crimean region of the Ukraine  

For more information on website form management [click here](https://about.gitlab.com/handbook/marketing/marketing-operations/#website-form-management).

If you need a new form created, please open this [form creation issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request). 

### Smart Campaigns - Operational 

There is a set limit of 250,000 records that can be processed through a given smart campaign. If the smart campaign smart list is set to update or email over 250,000 records, it will not run and will be `aborted`. This is in place to prevent accidental mass updates and emails. If you need to run a campaign over that limit, reach out to MarOps.

#### Standardization of Country &/or State values

There are several workflows that clean the `Country` &/or `State` fields to ensure the value meets required Salesforce format. All of the standardization smart campaigns are contained in:  

`Marketing Activities` -> `Operational - Do not edit` -> `Data Management` -> `01 Data Management` -> `04-Normalize Data`   

If a `Country` &/or `State/Province` standardization is needed, please open an issue in the [Marketing Operations project](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=).


#### Scoring Workflows

### MQL Definition
A Marketo Qualified Lead is a lead that has reached a certain threshold, we have determined to be 90 points accumulated, based on demographic/firmographic and/or behavioral information. The "MQL score" defined below is comprised of various actions and/or profile data that are weighted with positive or negative point values.
When a  `Person Score` changes it will be inserted into the routing flow. Using LeanData every time a `Person Score` is updated, LeanData will run a check to see if the record needs to be processed through the flow.

### MQL Scoring Model
The overall model is based on a 90 point system. Positive and negative points are assigned to a record based on their demographic and/or firmographic information, and their behavior and/or engagement with GitLab marketing.

The MQL scoring model below is correct as of 11 March 2020. Additional changes are being made and the following will be updated over time.

#### MQL = 90 pts
{:.no_toc}

|**Action**|**Token**|**Points**|**Type**|**Program Status Changes**|**Type**|**Schedule/Flow Limit**|
|:-----:|:----------:|:-----:|:--------:|:-------------:|:-----:|:-----:|
|Attends Webcast or Virtual Sponsorship or Self Service Virtual Event or Sponsored Webcast|{{my.Attends Webcast}}|+15|Behavior|Webcast > Attended<br>Virtual Sponsorship > Attended<br>Self-Service Virtual Event > Attended<br> Sponsored Webcast > Attended|Trigger|Everytime|
|Attends on Demand Webcast or Virtual Sponsorship or Self Service Virtual Event|{{my.On Demand Webcast - Default}}|+15|Behavior|Virtual Sponsorship > Attended On-demand<br>Webcast > Attended On-demand<br>Self-Service Virtual Event > Attended On-demand<br>Sponsored Webcast > Attended On-demand|Trigger|Everytime|
|Attended On-demand - Hosted Elsewhere|{{my.On Demand - Hosted Elsewhere}}|-5|Behavior|Requsted via Sponsored Webcast template|Trigger|Everytime|
|Attends Owned Event|{{my.Owned Event - Attended}}|+75|Behavior| Owned Event > Attended|Trigger|Everytime|
|Requested Follow up - Virtual Sponsorship, speaking session, owned event, field event, conference, survey|{{my.Live Event - Requested Follow Up}}|+100|Behavior|Virtual Sponsorship > Follow Up Requested<br>Speaking Session > Follow Up Requested<br>Owned Event > Follow Up Requested<br>Field Event > Follow Up Requested<br>Conference > Follow Up Requested<br>Survey > Requested Contact|Trigger|Everytime|
|Registered - Virtual, Webcast, Owned, Field Event|{{my.Registered - Events or Webcasts}}|+15|Behavior|Virtual Sponsorship > Registered<br>Owned Event > Registered or Waitlist<br>Webcast > Registered<br>Field Event > Registered|Trigger|Everytime|
|Registered - Self-Service Virtual Events|{{my.Registered Self-Service Virtual Events}}|+10|Behavior|Self-Service Virtual Event > Registered<br> Sponsored Webcast > Registered|Triger|Everytime|
|Visited Booth - Field Events, Conference, Virtual Sponsorship|{{my.Visited Booth}}|+30|Behavior|Virtual Sponsorship > Visited Booth<br>Field Event > Visited Booth<br>Conference > Visited Booth|Trigger|Everytime|
|Content Download - Form Fill|{{my.Content Download - Default}}|+30|Behavior|PF Content > Content Consumed OR<br>PF Specific Forms|Trigger|Everytime|
|Content Download - High Intent|{{my.Content Download - High Intent}}|+90|Behavior|Specific Forms on pages - <br>/just-commit/reduce-cycle-time<br>/just-commit/lower-tco/<br>/just-commit/secure-apps/|Trigger|Once|
|Content Syndication - Download|{{my.Content Syndication}}|+15|Behavior|Content Syndication > Downloaded|Trigger|Everytime|
|Demo Request|{{my.Demo Requested}}|+90|Behavior|Campaign Requested|Trigger|Once|
|Filled-out Survey|{{my.Survey Filled-Out}}|+45|Behavior|Survey > Filled-out Survey|Trigger|Everytime|
|Interest in Enterprise|{{my.Interest in Enterprise}}|+50|Behavior|Visits - about.gitlab.com/free-trial/|Trigger|Once|
|Multiple Career Page Visits|{{my.Multiple Web Visits - Career}}|-25|Behavior|Vists 3x about.gitlab.com/jobs/|Trigger|Once|
|Subscribe - Live Event|{{my.Subscribe - Live Event}}|+10|Behavior|Live Events / Conferences (L) is True|Trigger|Once|
|Subscribe - Newsletter|{{my.Subscribe - Newsletter}}|+10|Behavior|Newsletter (L) is True|Trigger|Once|
|Subscribe - Security|{{my.Subscribe - Security}}|+10|Behavior|Security Alerts (L) is True|Trigger|Once|
|Subscribe - Webcast|{{my.Subscribe - Webcast}}|+10|Behavior| Webcasts (L) is True|Trigger|Once|
|Contact Sales Form|{{my.Contact Request Form}}|+100|Behavior|Fills out form: FORM 1415: Contact Request - Light4|Trigger|Once|
|Professional Services Request|{{my.Contact Request Form}}|+100|Behavior|Fills out Form: FORM 1476: prof_serv_rqst|Trigger|Once|
|Request - Public Sector|{{my.Contact Request Form}}|+100|Behavior|Fills out Form: wf_federal_sales.FORM 1411: PubSec Contact|Trigger|Once|
|Trial - Enterprise|{{my.Trial Form}}|+100|Behavior|Fills out Form(2): FORM 1318: Self-Hosted Enterprise Trial Form<br>FORM 2150: Self-Hosted Enterprise Trial Form v2|Trigger|Once|
|Trial - Enterprise (in Product)|{{my.Trial Form}}|+100|Behavior|Trial - Enterprise = True AND<br>SFDC Created date in last 24 hours AND<br>Does not meet Trial-Enterprise Criteria|Batch|Every Morning / Once|
|Trial - GitLab.com|{{my.Trial Form}}|+100|Behavior|Trial - Gitlab.com = TRUE AND<br>SFDC Created in last 24 hours|Batch|Every Morning / Once|
|Generic Email Address|{{my.Generic Email}}|-5|Demographic|Has Generic Email Domain|Trigger|Once|
|Title - VP, Manager, Director, Senior, Head, CIO, CEO, CFO, CSO, Founder, CTO, Chief, Executive or Lead (including French)|{{my.Title - High Tier}}|+50|Demographic|Title contains: VP, Vice President, Manager, Director, Senior, Head, CIO, CEO, CFO, CSO, Founder, CTO, Chief or Lead|Trigger|Once|
|Title - VP, Manager, Director, Senior, Head, CIO, CEO, CFO, CSO, Founder, CTO, Chief, Executive or Lead (including French)|{{my.Title - High Tier}}|+50|Demographic|Not in Trigger Campaign AND <br>Title Contains: VP, Vice President, Manager, Director, CIO, CEO, CFO, CSO, Founder, CTO, Chief or Head|Batch|Every Morning / Once|
|Title - Developer, Engineer (including French)|{{my.Title - Low Tier}}|-10|Demographic|Title Contains: developer, engineer AND <br> Title not contains: Executive, Manager, Director |Trigger|Once|
|Unsubscribes from Emails|{{my.Unsubscribed}}|-25|Behavior|Unsubscribes from Any Email OR<br>Unsubscibe = TRUE|Trigger|Once|


### Folder Structure

Marketo Marketing Activities are broken up into three sections: `Operational Programs`, `Active Marketing Programs` and `Archive`.
Below is the folder structure to hold and categorize different operational programs and marketing programs.

- Active Marketing Programs
    - Account Based Marketing (ABM)
    - Conference
    - Emails
        - Adhoc Emails
        - General Newsletter (Bi-weekly)
        - Remote Newsletter (Monthly)
        - Security Releases
    - Field Event
    - Gated Content
    - Integrated Campaigns
    - Nurtures
    - Owned Events
    - Virtual Events
        - GitLab Webcasts
        - On Demand Reseller Webcasts
        - Sponsored Virtual Conference
        - Sponsored Webcast
    - Web Forms
- Operational - Do not edit
    - Data Management
    - Sales Insight
    - Scoring
- Archive

*Nested under each folder there are programs. Quarterly folders are created at the end of the quarter to help with organization. Quarterly folders will be archived after two quarters. In the future if we have additional types of folders to add, we can do so.* 

### Targeted Email Lists
The Field Marketing and Marketing Program teams use targeted email lists as a tool when pursuing specific regions, sectors or companies. The Marketing Operations team will handle the creation of targeted email lists in Marketo after they are requested by the Field Marketing and Program Managers via an issue in the Marketing Operations project. Procedures for these targeted lists are as follows:

* FMM provides MPM with target cities, exclusions and inclusions. For ABM lists, the Account ID and email domain will be supplied
* FMM or MPM creates a new issue for MOps from `DMA Request` template
* MOps provides the draft list to the FMM and MPM for review and further exclusions
* MOps creates a Smart List in Marketo and alerts via issue
* MPM adds the records from the final list to the relevant SFDC campaign as "Marketing Invited" (being careful not to overwrite anyone that may already be in the campaign as "Registered") and sends the email

#### SLA for Targeted Lists: 
* List request is required 7 days prior to email deployment - FMM / MPM
* Final Smart List is available 2 days prior to email deployment - MOps

### Geographic DMA List   

The Geographic DMA (direct marketing area) were built for the Field Marketing and Marketing Program team to target & send emails/invitations related to Field &/or Corporate marketing events. 
The **MktgOps** team is responsible for creating & maintaining these lists. 

If a new DMA list is needed, please open an issue in the Marketing Operations project & utilize the [DMA_request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=dma_request). 

#### AMER
##### East
- Atlanta, Geogia
- Baltimore, Maryland
- Boston, Massachusetts 
- Charlotte, North Carolina
- Chicago, Illinois
- Cincinnati, Ohio
- Dallas, Texas
- District Of Columbia
- Houston, Texas
- Maryland (Eastern area, PubSec)
- Miami, Fla
- Montreal, Quebec, Canada
- Nashville, Tennessee
- New York City
- Philadelphia, Pennsylvania 
- Quebec City, Quebec, Canada
- Raleigh, North Carolina
- San Antonio, Texas
- Tampa, Florida
- Toronto, Ontario, Canada
- Virginia (Northern area, PubSec)
- Virginia (Southeast area, PubSec)

##### West
- Boise, Idaho
- Calgary, Alberta, Canada
- Denver, Colorado
- Des Moines, Iowa
- Irvine, California
- Los Angeles, California
- Minneapolis, Minnesota
- Phoenix, Arizona
- Portland, Oregon
- Salt Lake City, Utah
- San Diego, California
- San Francisco, California
- San Jose, California
- Seattle, Washington
- St. Louis, Missouri
- Vancouver, British Columbia, Canada

#### APAC
- Adelaide, Australia
- Auckland, New Zealand
- Bangalore, India
- Bangkok, Thailand
- Beijing, China
- Brisbane, Australia
- Busan, South Korea
- Canberra, Australia
- Chennai, India
- Christchurch, New Zealand
- Darwin, Australia
- Guangzhou, China
- Hanoi, Vietnam
- Ho Chi Minh City / Saigon, Vietnam
- Hobart, Australia
- Hong Kong
- Kolkata, India
- Kowloon, Hong Kong
- Kuala Lumpur, Malaysia
- Manila, Philippines
- Melbourne, Australia
- Mumbai, India
- New Delhi, India
- Oksaka, Japan
- Perth, Australia
- Quezon City, Philippines
- Seoul, South Korea
- Shanghai, China
- Shenzen, China
- Singapore
- Sydney, Australia
- Tianjin, China
- Tokyo, Japan
- Wellington, New Zealand
- Yokohama, Japan

#### EMEA
- All Netherlands
- All of United Kingdom
- Amsterdam, Netherlands
- Barcelona, Spain
- Berlin, Germany
- Cape Town, South Africa
- Helsinki, Finland
- London, United Kingdom
- Manchester, United Kingdom
- Munich, Germany
- Stockholm, Sweden
- Stuttgart, Germany
- Toulouse, France
- Vienna, Austria

### Account Based Marketing List   

ABM lists are built by request for the Field Marketing and Marketing Program team to target & send emails/invitations to accounts deemed to be high priority by Sales. 
The **MktgOps** team is responsible for creating & maintaining these lists. 

If a new ABM list is needed, please open an issue in the Marketing Operations project & utilize the [DMA_request issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=dma_request).
