---
layout: handbook-page-toc
title: "Integrations Engineering Results"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

<script type="text/javascript">
    document.addEventListener(
    'DOMContentLoaded',
    () => {
        $(document).ready(function() {
            $.extend($.easing,
            {
                def: 'easeOutQuad',
                easeOutQuad: function (x, t, b, c, d) {
                    return -c *(t/=d)*(t-2) + b;
                },
                easeOutQuint: function (x, t, b, c, d) {
                    return c*((t=t/d-1)*t*t*t*t + 1) + b;
                },
            });

            var countProps = {
                hoursSaved: 0,
            };

            var hoursSavedTarget = $('#hours-saved').attr('saved');

            $(countProps).animate({
                hoursSaved: hoursSavedTarget
            }, {
                duration: 1000,
                easing: 'easeOutQuad',
                step: function() {
                    $('#hours-saved').text(Math.ceil(this.hoursSaved));
                }
            });
        });
    }
);
</script>

<style>
#hours-saved-container {
    border: 8px solid green;
    border-radius: 50%;
    width: 350px;
    height: 350px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin-left: auto;
    margin-right: auto;
    margin-top: 50px;
}

#hours-saved {
    font-size: 18rem;
    text-align: center;
    line-height: 1;
}

.text-bigger {
    font-size: 3rem;
}
</style>

# Integrations Engineering Results

{::options parse_block_html="true" /}

<div id="hours-saved-container">
<p id="hours-saved" saved="78">-</p>
<p class="text-center text-5xl text-bigger">Work-hours saved <br/> per month</p>
</div>

## Collaborations

The results achieved by this team are a product of the various collaborations with different business partners at GitLab. We cannot take full credit for the work that has been completed in this list, but we think that the contributions of the integrations engineering team have made these projects possible and for that reason we include them in this list.

## SAML SSO

This is a running list of applications we have enabled SSO for. All of this work brings us to a better spot from a compliance, security and auditability perspective. It also brings efficiency improvements as we reduce the need for manual onboarding and offboarding work across the broader team.

- Mavenlink
- Xactly CEA
- Allocadia
- Docusign
- Outreach
- CustomersDot
- LicenseApp
- OneTrust
- Zuora (all environments)
- Coupa
- NetSuite
- Workato
- EdCast
- Navex Global

**Work-hours saved per month:** 25

## Projects

### FY2022 - Q3

#### Product Qualified Leads real-time API

**Synopsis:**

The development of an API where the product team can send leads from the product which will reliably map and deliver those leads to Marketo.

**Impacted team(s):**

- Marketing Ops
- Data
- Business Technology

**Value Realised**:
- Greater ability to run targeted marketing campaigns
- Allow us to realize more revenue by reaching out to leads


### FY2022 - Q2

#### GitLab Internal Handbook

**Synopsis:**

Stood up a GitLab pages project to serve as an internal non-public handbook which uses Okta and SAML SSO to restrict access to the GitLab internal team. This will allow the team to keep information confidential but still follow the handbook-first way of working.

**Impacted team(s)**

All of GitLab

#### Marketing Database Leads Pump

**Synopsis:**

The marketing data pump is a reusable automation developed in tandem with the Data team which allows us to quickly and easily send subsets of lead data from the Enterprise Data Warehouse into Marketo. This will allow the Marketing Ops team to quickly set up and target GitLab customers for nurture campaigns.

**Impacted team(s):**

- Marketing Ops
- Data
- Business Technology

**Value Realised**:
- Tens of hours of work per month if done manually
- Greater ability to run targeted marketing campaigns
- Future unrealised revenue
- Better agility for our Marketing team to execute campaigns at short notice

#### LicenseApp Roles Refactor

**Synopsis:**

The Fulfillment engineering team introduced a read-only role to the License App which allows GitLab to fully comply with regulations. We supported them via the reorganization of Okta and enabling of their SSO goals. In addition to this we performed a full reorganization of access to the LicenseApp for Support, CS and Sales to ensure that team members had the correct access level.

**Impacted team(s):**
- Fulfillment Engineering
- IT
- Compliance
- Sales
- Support

---

### FY2022 - Q1

#### Billing Invoice PDF Downloader

**Synopsis:**

Every month the automation pulls all PDF invoices from Zuora for the UK and DE entities and compiles them into a Zip file on Google Drive to save the Billing team time and effort at the end of the month.

**Impacted team(s):**

- Accounts Receivable

**Work-hours saved per month:** 3

#### BambooHR > Navex Global

**Synopsis:**

Automatically adds and removes team members to Navex Global to avoid manual work for the team and streamline the onboarding process.

**Impacted team(s):**  

- Legal

**Work-hours saved per month:** 5

#### BambooHR > EdCast (GitLab Learn)

**Synopsis:**

Automatically adds and removes team members to EdCast to avoid manual work for the team and streamline the onboarding process.

**Impacted team(s):**  

- L&D

**Work-hours saved per month:** 5

#### Rolly the rollup bot

**Synopsis:**

Automatically fetches status updates from program epics and rolls them up into one single status issue. This reduces manual work for teams as they prepare status rollups. [Learn more about Rolly](/handbook/business-technology/how-we-work/rolly/).

**Impacted team(s):**  

- Business Technology

**Work-hours saved per month:** 5

#### GitLab Workato Custom Connector

**Synopsis:**

A custom connector to accelerate the development of GitLab integrations within Workato.

**Impacted team(s):**

- Business Technology

**Work-hours saved per month:** 5

---

### FY2021 - Q4

#### Zuora Billing > Netsuite

**Synopsis:**

Automates the synchronization of billing journal entries to Netsuite for month close.

**Impacted team(s):**  

- Billing
- Accounting

**Work-hours saved per month:** TBD

---

### FY2021 - Q3

#### Bamboo HR <> Expensify <> Netsuite Sync

**Synopsis:**

Utilising Workato to automatically synchronise team members and their managers from Bamboo HR into the correct Expensify policy as well as creating a vendor record in Netsuite.

**Impacted team(s):**  

- Accounts Payable
- Accounting

**Work-hours saved per month:** 20
