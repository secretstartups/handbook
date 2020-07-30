---
layout: handbook-page-toc
title: Zendesk ticket Forms
---

# Zendesk Ticket Forms

Ticket forms are the forms utilized by the user to create tickets (when using
the web UI). These then translate the responses on the form into ticket
metadata. 

## Current Ticket Forms

### [Gitlab.com (SAAS) Account Related Form](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000803379)

* Title: Gitlab.com (SaaS) User Accounts and Login Issues

<details>
<summary> <b>Fields</b> </summary>

* GitLab.com Email Address
  * Editable for end users
* Tell us about your GitLab subscription
  * Required for end users, Editable for end users
* Company Name
  * Editable for end users
* Email associated with your subscription
  * Editable for end users
* GitLab.com Account Problem Type
  * Required for agents and end users, Editable for end users
* GitLab.com Username
  * Required for end users, Editable for end users
* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Customer Priority
  * Editable for end users
* Preferred Region for Support
  * Editable for end users

</details>
<details>
<summary> <b>Conditions</b> </summary>

* Tell us about your GitLab subscription
  * If value is `Gold customer` Then show
    * Company Name (Required)
    * Email associated with your subscription (Required)
    * GitLab.com Account Problem Type (Required)
    * GitLab.com Username (Required)
    * Customer Priority 
    * Preferred Region for Support (Required)
    * GitLab.com Email Address (Required)
  * If value is `Silver customer` Then show
    * GitLab.com Email Address (Required)
    * Company Name (Required)
    * Email associated with your subscription (Required)
    * GitLab.com Account Problem Type (Required)
    * GitLab.com Username (Required)
    * Customer Priority 
    * Preferred Region for Support (Required)
  * If value is `Bronze customer` Then show
    * GitLab.com Email Address (Required)
    * Company Name (Required)
    * Email associated with your subscription (Required)
    * GitLab.com Account Problem Type (Required)
    * GitLab.com Username (Required)
    * Customer Priority 
    * Preferred Region for Support (Required)
  * If value is `Sales Assisted Trial` Then show
    * GitLab.com Email Address (Required)
    * Company Name (Required)
    * Email associated with your subscription (Required)
    * GitLab.com Account Problem Type (Required)
    * GitLab.com Username (Required)
    * Customer Priority 
    * Preferred Region for Support (Required)
  * If value is `Free user` Then show
    * GitLab.com Email Address (Required)
    * GitLab.com Account Problem Type (Required)
    * GitLab.com Username (Required)
    * Customer Priority 
    * Preferred Region for Support (Required)


</details>

### [GitLab.com (SaaS)](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334447)

* Title: Support for GitLab.com (SaaS)

<details>
<summary> <b>Fields</b> </summary>

* Tell us about your GitLab subscription
  * Required for end users, Editable for end users
* Company Name
  * Editable for end users
* Email associated with your subscription
  * Editable for end users
* GitLab.com Problem Type
  * Required conditionally, Editable for end users
* Free - Problem Type
  * Required conditionally, Editable for end users
* Requested Dormant Username
  * Required conditionally, Editable for end users
* GitLab.com Project Path
  * Editable for end users
* Sales contact name
  * Editable for end users
* Sales contact email
  * Editable for end users
* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* Priority
  * System field
* Customer Priority
  * Editable for end users
* Product Stage
* GitLab.com Username
  * Required conditionally, Editable for end users
* GitLab Issues
* Preferred Region for Support
  * Required conditionally, Editable for end users
* ARR
* Document this
* GitLab Plan
* Channel (Received at email)

</details>
<details>
<summary> <b>Conditions</b> </summary>

* GitLab.com Problem Type
  * If value is `Dormant Username Requests`, then show `Requested Dormant
    Username`
  * If value is `500 error`, then show `GitLab.com Project Path`
  * If value is `Project import failed`, then show `GitLab.com Project Path`
  * If value is `GitLab Bug`, then show `GitLab.com Project Path`
  * If value is `Feature request`, then show `GitLab.com Project Path`
  * If value is `General Question/Other`, then show `GitLab.com Project Path`
  * If value is `Forgot password`, then show `GitLab.com Project Path`
* Free - Problem Type
  * If value is `Dormant Username Requests` then show `Requested Dormant
    Username`
  * If value is `Broken features/states for specific users or repositories`,
    then show `GitLab.com Project Path`
  * If value is `Forgot Password`, then show `GitLab.com Project Path`
* Tell us about your GitLab subscription
  * If value is `Gold customer`, then show:
    * Company Name 
    * Email associated with your subscription 
    * Type 
    * Priority 
    * Customer Priority 
    * Product Stage 
    * GitLab.com Problem Type (Required when solved)
    * GitLab.com Username 
    * Channel (Received at email) 
    * GitLab Plan 
    * Document this 
    * ARR 
    * Preferred Region for Support 
    * GitLab Issues 
  * If value is `Silver customer`, then show:
    * Company Name 
    * Email associated with your subscription 
    * Type 
    * Priority 
    * Customer Priority 
    * Channel (Received at email) 
    * GitLab Plan 
    * Document this 
    * ARR 
    * Preferred Region for Support 
    * GitLab Issues 
    * GitLab.com Username 
    * GitLab.com Problem Type (Required when solved)
    * Product Stage 
  * If value is `Bronze customer`, then show:
    * Company Name 
    * Email associated with your subscription 
    * Type 
    * Priority 
    * Customer Priority 
    * Product Stage 
    * GitLab.com Problem Type (Required when solved)
    * GitLab.com Username 
    * Channel (Received at email) 
    * GitLab Plan 
    * Document this 
    * ARR 
    * Preferred Region for Support 
    * GitLab Issues 
  * If value is `Free user`, then show:
    * Type 
    * Priority 
    * Customer Priority 
    * Product Stage 
    * Free - Problem Type (Required when solved)
    * GitLab.com Username 
    * GitLab Issues 
    * Preferred Region for Support 
    * ARR 
    * Document this 
    * GitLab Plan 
    * Channel (Received at email) 
    * GitLab.com Project Path 
  * If value is `Sales Assisted Trial`, then show:
    * Company Name 
    * Email associated with your subscription 
    * Sales contact name 
    * Sales contact email 
    * Type 
    * Priority 
    * Customer Priority 
    * Product Stage 
    * GitLab.com Problem Type (Required when solved)
    * GitLab.com Username 
    * GitLab Issues 
    * Preferred Region for Support 
    * ARR 
    * Document this 
    * GitLab Plan 
    * Channel (Received at email) 

</details>

### [Self-Managed](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/426148)

* Title: Support for a self-managed GitLab instance

<details>
<summary> <b>Fields</b> </summary>

* Tell us about your GitLab subscription (SM)
  * Required for end users, Editable for end users
* Company name (SM)
  * Editable for end users
* Email associated with your GitLab instance
  * Editable for end users
* Sales contact name
  * Editable for end users
* Sales contact email
  * Editable for end users
* Subject
  * System field, Required for end users
* Self Managed Runner Issue
  * Required conditionally, Editable for end users
* Self Managed Runner Install Type
  * Required conditionally, Editable for end users
* Self Managed GitLab Install Type
  * Required conditionally, Editable for end users
* Self-managed Problem Type
  * Required conditionally, Editable for end users
* Description
  * System field, Required for end users
* Product Stage
* Type
  * System field
* Priority
  * System field
* Customer Priority
  * Editable for end users
* GitLab Version
  * Required conditionally, Editable for end users
* GitLab Issues
* Preferred Region for Support
  * Required conditionally, Editable for end users
* ARR
* Document this
* GitLab Plan
* Channel (Received at email)

</details>

<details>
<summary> <b>Conditions</b> </summary>

* Tell us about your GitLab subscription (SM)
  * If value is `Ultimate customer`, then show:
    * Company name (SM) 
    * Email associated with your GitLab instance 
    * Self-managed Problem Type (Required when solved)
    * Channel (Received at email) 
    * ARR 
    * GitLab Plan 
    * Document this 
    * Preferred Region for Support 
    * GitLab Issues 
    * GitLab Version 
    * Customer Priority 
    * Priority 
    * Product Stage 
    * Type 
  * If value is `Premium customer`, then show:
    * Company name (SM) 
    * Email associated with your GitLab instance 
    * Self-managed Problem Type (Required when solved)
    * Product Stage 
    * Type 
    * Priority 
    * Customer Priority 
    * GitLab Version 
    * GitLab Issues 
    * Preferred Region for Support 
    * ARR 
    * Document this 
    * GitLab Plan 
    * Channel (Received at email) 
  * If value is `Starter Customer`, then show:
    * Company name (SM) 
    * Email associated with your GitLab instance 
    * Self-managed Problem Type (Required when solved)
    * Product Stage 
    * Type 
    * Priority 
    * Customer Priority 
    * GitLab Version 
    * GitLab Issues 
    * Preferred Region for Support 
    * ARR 
    * Document this 
    * GitLab Plan 
    * Channel (Received at email) 
  * If value is `Sales Assisted Trial`, then show:
    * Company name (SM) 
    * Email associated with your GitLab instance 
    * Sales contact name 
    * Sales contact email 
    * Self-managed Problem Type (Required when solved)
    * Product Stage 
    * Type 
    * Priority 
    * Customer Priority 
    * GitLab Version 
    * GitLab Issues 
    * Preferred Region for Support 
    * ARR 
    * Document this 
    * GitLab Plan 
    * Channel (Received at email) 
  * If value is `Reseller`, then show:
    * Company name (SM) 
    * Email associated with your GitLab instance 
    * Self-managed Problem Type (Required when solved)
    * Product Stage 
    * Channel (Received at email) 
    * GitLab Plan 
    * Document this 
    * ARR 
    * Preferred Region for Support 
    * GitLab Issues 
    * GitLab Version 
    * Customer Priority 
    * Priority 
    * Type 

</details>

### [License Renewals and Upgrades](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000071293)

* Title: Licensing and Renewals Problems

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* License troubleshooting
* Transactions Issue Type
  * Required for agents
* Transactions & Licensing - Product
  * Required for agents
* True-up troubleshooting
  * Upgrade assistance
* Trial - related inquiries
* Cancelation/refund requests
* GitLab.com issue
* .Com - Self-hosted transfer requests
* Special GitLab Program inquiries
* Other (Licensing)
* Billing-related inquiry
* Customer Priority
  * Editable for end users
* Priority
  * System field
* GitLab Issues
* Escalated to Education
* Escalated to Sales
* Portal Bug
* Preferred Region for Support
  * Editable for end users
* ARR
* Channel (Received at email)

</details>

<details>
<summary> <b>Conditions</b> </summary>

* Transactions Issue Type
  * If value is `License troubleshooting`, then show `License troubleshooting`
  * If value is `Upgrade`, then show `Upgrade assistance`
  * If value is `Trial - related inquiries`, then show `Trial - related
    inquiries`
  * If value is `Cancelation/refund requests`, then show `Cancelation/refund
    requests`
  * If value is `Other`, then show `Other (Licensing)`
  * If value is `Gitlab.com Issue`, then show `GitLab.com issue`
  * If value is `.Com - Self-hosted transfer requests`, then show `.Com -
    Self-hosted transfer requests`
  * If value is `EDU/OSS`, then show `Special GitLab Program inquiries`
  * If value is `Billing-related inquiry`, then show `Billing-related inquiry`

</details>

### [Accounts Receivable / Refunds](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000258393)

* Title: Payment Failures and Refunds

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Subscription Number
  * Editable for end users
* Transactions & Licensing - Product
  * Required for agents
* Transactions Issue Type
  * Required for agents
* True-up troubleshooting
* Upgrade assistance
* Trial - related inquiries
* Renewal help
* License troubleshooting
* Cancelation/refund requests
* Billing-related inquiry
* GitLab.com issue
* .Com - Self-hosted transfer requests
* Special GitLab Program inquiries
* Other (Licensing)
* Reason For Refund
  * Required for agents, Editable for end users
* Description
  * System field, Required for end users
* Type
  * System field
* GitLab Issues
* Portal Bug
* Priority
  * System field
* ARR
* Channel (Received at email)

</details>

<details>
<summary> <b>Conditions</b> </summary>

* Transactions Issue Type
  * If value is `License troubleshooting`, then show `License troubleshooting`
  * If value is `Upgrade`, then show `Upgrade assistance`
  * If value is `Trial - related inquiries`, then show `Trial - related inquiries`
  * If value is `Cancelation/refund requests`, then show `Cancelation/refund requests`
  * If value is `Billing-related inquiry`, then show `Billing-related inquiry`
  * If value is `Gitlab.com Issue`, then show `GitLab.com issue`
  * If value is `.Com - Self-hosted transfer requests`, then show `.Com - Self-hosted transfer requests`
  * If value is `EDU/OSS`, then show `Special GitLab Program inquiries`
  * If value is `Other`, then show `Other (Licensing)`
* Transactions & Licensing - Product
  * If value is `GitLab.com`, then show `Transactions Issue Type`
  * If value is `Self-managed`, then show `Transactions Issue Type`

</details>

### [Security Issue](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000515493)

* Title: Contact the Security team

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* Priority
  * System field
* Customer Priority
  * Editable for end users
* Preferred Region for Support
  * Editable for end users
* GitLab Issues
* ARR
* Channel (Received at email)

</details>

### [GitLab Hosted (GitHost.io)](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334487)


<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* Priority
  * System field
* Customer Priority
  * Editable for end users
* Hosted Instance Type
  * Required for end users, Editable for end users
* Hosted URL
  * Required for end users, Editable for end users
* GitLab Issues
* Preferred Region for Support
  * Editable for end users
* ARR
* Document this
* Channel (Received at email)

</details>

### [Other Request](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334427)

* Title: Other Request
* This is the default

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* Priority
  * System field
* Customer Priority
  * Editable for end users
* GitLab Issues
* GitLab.com Project Path
  * Editable for end users
* Preferred Region for Support
  * Editable for end users
* Document this
* ARR
* GitLab Plan
* Channel (Received at email)

</details>


### [GitLab Community Edition (CE)](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334467)

* Title: GitLab Community Edition (CE)
* This is Agent only

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* GitLab Issues
* Document this
* ARR
* GitLab Plan
* Channel (Received at email)

</details>

### [Support for GitLab Professional Services](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000647759)

* Title: Support for GitLab Professional Services
* This is Agent only

<details>
<summary> <b>Fields</b> </summary>

* Subject
  * System field, Required for end users
* Description
  * System field, Required for end users
* Type
  * System field
* Priority
  * System field
* Professional Services Issues Type
  * Required for end users, Editable for end users
* GitLab Plan
* Email associated with your subscription
  * Editable for end users

</details>

### [Open Partner Form](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000818199)

* Title: Support for Open Partners

<details>
<summary> <b>Fields</b> </summary>

* Organization Name (partners)
  * Required for end users, Editable for end users
* Organization Email (partners)
  * Required for end users, Editable for end users
* Customer Name (partners)
  * Required for end users, Editable for end users
* Subject
  * System field, Required for end users
* Priority
  * System field
* Description
  * System field, Required for end users
* GitLab Version
  * Required for end users, Editable for end users
* Self Managed GitLab Install Type
  * Required for end users, Editable for end users
* Preferred Region for Support
  * Editable for end users
* Customer Priority
  * Editable for end users
* GitLab Issues
* ARR
* Document This
* GitLab Plan
* Channel (Received at email)
* Partner troubleshooting
  * Required for end users, Editable for end users

</details>

### [Select Partner Form](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000837100)

* Title: Support for Select Partners

<details>
<summary> <b>Fields</b> </summary>

* Organization Name (partners)
  * Required for end users, Editable for end users
* Subject
  * System field, Required for end users
* Priority
  * System field
* Description
  * System field, Required for end users
* GitLab Version
  * Required for end users, Editable for end users
* Self Managed GitLab Install Type
  * Required for end users, Editable for end users
* Preferred Region for Support
  * Editable for end users
* Customer Priority
  * Editable for end users
* GitLab Issues
* ARR
* Document This
* GitLab Plan
* Channel (Received at email)
* Partner troubleshooting
  * Required for end users, Editable for end users

</details>
