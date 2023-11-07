---

title: "Customer NPS/CSAT surveys"
description: "A deep dive into the NPS/CSAT scores, how they are defined and calculated."
---







For an overview of how CSMs use Customer360 (or C360), please refer to the [Gainsight CSM C360 Overview Page](https://about.gitlab.com/handbook/customer-success/csm/gainsight/c360-overview)

## Customer NPS/CSAT surveys

Customers at GitLab periodically receive surveys sent via Gainsight by the Digital CS Team to gauge customer sentiment. The Net Promoter Score, or NPS, are surveys sent directly to customers to measure customer loyalty, satisfaction, and enthusiasm with GitLab at different points in the customer lifecycle.

Customer Satisfaction score, or CSAT, are surveys sent directly to customers to measure satisfaction of a service, product, interaction or experience with GitLab. A customer may receive a CSAT survey at any point in their life cycle depending on the survey’s configuration.

In order for customers to receive these surveys, a [`GitLab admin` role needs to be assigned](https://about.gitlab.com/handbook/sales/field-operations/customer-success-operations/cs-ops-programs/#gitlab-admin-contacts) in Gainsight to the appropriate contacts.

It is the CSM/CSE’s responsibility to ensure the role assignment is completed. This process is a task in the Customer Onboarding playbook, and also in the Customer Renewal playbook. If an account doesn’t have a CSM or CSE, the AE must configure the role.

### What is NPS?

- Net Promoter Score is a [standardized](https://en.wikipedia.org/wiki/Net_promoter_score) numerical value from 1 to 10.
- It is always one question - "How likely are you to recommend (company) to a friend or colleague?"
- A **Promoter** responds with a score of 9 or 10 and can signify a loyal and enthusiastic customer.
- A **Passive** responds with 7 or 8. They are satisfied, but not happy enough to be a promoter. It is a great target area for improving and learning from these customers.
- A **Detractor** responds anywhere from 0 to 6, are unlikely to buy again, and may also discourage others from buying
- It is an attribute that can give a view into how a portion of the customer lifecycle has gone or may go, such as onboarding (early enablement), preparation to renew, and the renewal process.
- The rolled-up score can give insight into trends, such as onboarding or enablement being bumpy.
- In companies that have more complex/longer onboarding processes, the NPS typically starts lower and rises as the customer begins to feel more return on investment later in the life cycle.
- A trackable aggregate metric for all customers at GitLab.

##### What is NPS not?

- A determination of customer health. It is simply another attribute.
- A method of pinpointing specific product issues.

#### What is CSAT?

- Customer Satisfaction is a qualitative metric to ascertain a deeper understanding of the customer sentiment at a point in the life cycle.
- It is a transactional attribute to understand how a specific action, product, or experience in the customer lifecycle has gone.
- Any type of question or questions can be a CSAT survey. There are no standards for questions or metrics. It is entirely based on what GitLab is trying to learn about the customer from a question.

##### What is CSAT not?

- A standardized quantitative metric for Customer Satisfaction.


### NPS Surveys

Customers receive NPS surveys at multiple points in their customer lifecycle and may include additional CSAT surveys. They are as follows:

- **Post-Onboarding**  
   - NPS: Considering your experience with us so far, how likely are you to recommend GitLab to a friend or colleague?
   - CSAT: Overall, how satisfied are you with your onboarding experience?
   - CSAT: How can we improve your readiness to adopt the product?
   - Sent to net-new customers one day after [Time to First Value (TTFV)](https://about.gitlab.com/handbook/customer-success/csm/onboarding/#time-to-first-value) has been identified by using product data, or on day 90, whichever comes first.
      - Provides an early warning system for the customer beyond what CSM/CSE or AE sentiment or product usage data can tell us.

- **Pre-Renewal**
   - NPS: How likely are you to recommend GitLab to a friend or colleague?
   - CSAT: How satisfied are you with GitLab?
   - Sent 120 days before renewal.
      - An additional attribute to our knowledge of the health of the renewal and enables an additional lens of focus for prioritization.

- **Post-Renewal**
   - NPS: Considering your experience with us so far, how likely are you to recommend GitLab to a friend or colleague?
   - Sent 60 days after contract renewal.
      - Provides an attribute of sentiment into the success of the renewal and insight for continued prioritization.


#### Dedicated CSAT Surveys

- **Post-Churn Survey**
   - What is the primary reason for canceling your subscription?
   - What could we do better to improve?
- **Post-Scale CSE Engagement**
   - Please take a few seconds to select the answer that best aligns with your experience


#### Other NPS Surveys at GitLab

Other teams within GitLab also conduct NPS surveys that differ from those sent by the Digital CS Team. The UX Research team conducts a quarterly Paid NPS (PNPS) which surveys a random sampling of GitLab users associated with paid accounts. For more information about UXR PNPS, please go to the [Product Operations Survey Workflows handbook page](/handbook/product/product-operations/surveys/workflows/#paid-nps-survey-pnps).

### How to View NPS and CSAT Surveys

#### If you have Gainsight access

- For CSMs/CSEs: NPS and CSAT scores are written to a scorecard in the Customer 360 and trigger Calls to Action (CTA’s) based on the feedback
   - Negative NPS Scores (0-6 OR Very Dissatisfied, Dissatisfied, Neutral) will create a CTA for the CSM Manager to follow-up with the contact.
   - Positive NPS Scores (7-10 OR Satisfied, Very Satisfied) will create a CTA for the CSM to follow-up with the contact.
- Survey responses can also be found in the embedded Gainsight widget on any account page in Salesforce.
- Individual survey responses, questions, and company-wide NPS trends can be viewed in the <b>Surveys</b> portion of Gainsight.

#### If you *don't* have Gainsight access

- All scores are posted to the [#cs_programs_nps_results](https://gitlab.slack.com/archives/C022XR11MJA) channel in Slack. Members of each account team are @-mentioned in the survey results message facilitated by Troops. You must be a member of this channel to receive notifications. *Note: Given GitLab’s Slack data retention policy, results will only be available for 90 days after each response.*
   - PubSec customers are sent to a private channel. Ask your manager to learn how to access these results.
