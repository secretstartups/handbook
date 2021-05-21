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
<p id="hours-saved" saved="35">-</p>
<p class="text-center text-5xl text-bigger">Work-hours saved <br/> per month</p>
</div>

## Collaborations

The results achieved by this team are a product of the various collaborations with different business partners at GitLab. We cannot take full credit for the work that has been completed in this list, but we think that the contributions of the integrations engineering team have made these projects possible and for that reason we include them in this list.

## Projects


### FY2022 - Q1

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
Automatically fetches status updates from program epics and rolls them up into one single status issue. This reduces manual work for teams as they prepare status rollups. [Learn more about Rolly](/business-technology/how-we-work/rolly).

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

---
