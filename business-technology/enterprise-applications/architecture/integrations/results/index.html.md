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
                duration: 3000,
                easing: 'easeOutQuint',
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
<p id="hours-saved" saved="20">-</p>
<p class="text-center text-5xl text-bigger">Work-hours saved <br/> per month</p>
</div>

## Collaborations

The results achieved by this team are a product of the various collaborations with different business partners at GitLab. We cannot take full credit for the work that has been completed in this list, but we think that the contributions of the integrations engineering team have made these projects possible and for that reason we include them in this list.

## Projects

### FY2021 - Q3

#### Bamboo HR <> Expensify <> Netsuite Sync

**Synopsis:**  
Utilising Workato to automatically synchronise team members and their managers from Bamboo HR into the correct Expensify policy as well as creating a vendor record in Netsuite.

**Impacted team(s):**  

- Accounts Payable
- Accounting

**Work-hours saved per month:** 20

---

#### Zuora Billing Preview Run Automation

**Synopsis:**  
Allow the Zuora team to trigger billing preview runs from Slack, and receive a link to the resulting report on completion in slack as well.
In addition to that, we join on some additional columns that aren't available in the normal report.

**Impacted team(s):**  

- Billing

**Work-hours saved per month:** TBD
