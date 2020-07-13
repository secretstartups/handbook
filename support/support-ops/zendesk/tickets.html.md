---
layout: handbook-page-toc
title: Zendesk Tickets
---

# Zendesk Tickets

Tickets are the core part of what we use Zendesk for.

## Ticket Settings

* Comments
  * Formatting options for agents: Markdown
  * Enable emoji text replacement
  * Agent comments via web are public by default
  * Agent comments via email are public by default
* Attachments
  * Customers can attach files
  * Require authentication to download
* Tags
  * Enable tags on tickets
* CCs
  * Enable CCs on tickets
  * Only agents can add CCs
  * CC blacklist: noreply@google.com
  * CC email subject: `[{{ticket.account}}] Update: {{ticket.title}}`
  * CC email text:
    > You are registered as a CC on this support request ({{ticket.url}}). Reply to this email to add a comment to the request.
    >
    > {{ticket.comments_formatted}}
    >
    >
* Assignment
  * Auto-assign tickets upon solve
  * Allow re-assignment back to the general group
* Suspended Ticket Notifications
  * How often you want to receive email about new suspended tickets. `Never`
* Ticket IDs: 161869
* Side conversations
  * Enable Slack

## Ticket Fields

### [Subject](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378203)

* User title: Subject
* Type: subject
* Permissions: Editable for end users
* Required to submit a request

### [Description](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378213)

* User title: Description
* Type: multi-line
* User description: Please enter the details of your request. Include as much information as possible, including error messages, configuration snippets, or log entries. Please attach any error messages, configuration snippets, or log entries using the attach button below
* Permissions: Editable for end users
* Required to submit a request

### [Status](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378223)

* User title: Status
* Type: status
* User description: Request status
* Permissions: Agent only

### [Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378233)

* User title: Type
* Type: tickettype
* User description: Request type
* Permissions: Agent only

### [Priority](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378243)

* User title: Priority
* Type: priority
* User description: Request priority
* Permissions: Agent only

### [Group](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378253)

* User title: Group
* Type: group
* User description: Request group
* Permissions: Agent only

### [Assignee](https://gitlab.zendesk.com/agent/admin/ticket_fields/23378263)

* User title: Assignee
* Type: assignee
* User description: Agent assigned to your request
* Permissions: Read-only for end users
* Required to solve a ticket

### [GitLab.com issue](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005835520)

* User title: GitLab.com issue

* Type: dropdown
* Permissions: Agent only
* Field values:
  * CI Minutes assistance
    * Tag: `ci_minutes_assistance`
  * Mid-cycle user management
    * Tag: `mid-cycle_user_management`
  * Group management questions
    * Tag: `group_management_questions`
  * License misallocation to .com
    * Tag: `license_misallocation_to_.com`
  * Unable to access billing page
    * Tag: `unable_to_access_billing_page`
  * Unexpected license downgrade
    * Tag: `unexpected_license_downgrade`

### [Professional Services Issues Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/360009152259)

* User title: You require Professional Services for?
* Agent description: Professional Services Issues explained.
* Type: dropdown
* User description: Please select an appropriate option relevant to request.
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Education Services
    * Tag: `ps_education_services`
  * Other Professional Services
    * Tag: `ps_other_services`

### [Tell us about your GitLab subscription (SM)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005182220)

* User title: Tell us about your GitLab subscription
* Type: dropdown
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Ultimate customer
    * Tag: `ultimate_customer`
  * Premium customer
    * Tag: `premium_customer`
  * Starter Customer
    * Tag: `starter_customer`
  * Sales Assisted Trial
    * Tag: `sm_sales_assisted_trial`
  * Reseller
    * Tag: `sm_reseller`

### [Hosted URL](https://gitlab.zendesk.com/agent/admin/ticket_fields/43893008)

* User title: Hosted URL
* Type: regexp
* User description: The URL of your hosted instance. Examples: https://my_instance.gitlabhosted.com, https://my_instance.githost.io, https://my_custom_url.com
* Permissions: Editable for end users
* Required to submit a request
* Regex: ^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,15}(([0-9]{1,5})?\/.*)?$

### [GitLab.com Problem Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/44087827)

* User title: Problem Type
* Type: dropdown
* User description: Please choose the type of problem you're having with GitLab
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * 500 error
    * Tag: `500_error`
  * Did not receive confirmation email
    * Tag: `no_confirmation_email`
  * Feature request
    * Tag: `feature_request`
  * Forgot password
    * Tag: `forgot_password`
  * Two-Factor Authentication (Account Recovery)
    * Tag: `two_factor`
  * GitLab Bug
    * Tag: `bug`
  * Project import failed
    * Tag: `import_failed`
  * Dormant Username Requests
    * Tag: `inactive_username_request`
  * General Question/Other
    * Tag: `general_question`

### [.Com - Self-hosted transfer requests](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005835540)

* User title: .Com - Self-hosted transfer requests
* Type: dropdown
* Permissions: Agent only
* Field values:
  * <45 days (Pass to Billing)
    * Tag: `_45_days__pass_to_billing_`
  * >45 days (Pass to Sales)
    * Tag: `_45_days__pass_to_sales_`

### [Free - Problem Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005242139)

* User title: Problem Type
* Type: dropdown
* User description: If you are seeking help with GitLab Community Edition, note that the GitLab Support Team is unable to directly assist with issues with specific installations of these versions: https://about.gitlab.com/support/statement-of-support.html#core-and-community-edition-users
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Two Factor Authentication (Account Recovery)
    * Tag: `free_two_factor_authentication`
  * Didn't receive confirmation email
    * Tag: `free_confirmation_email`
  * Broken features/states for specific users or repositories
    * Tag: `free_broken_features/states`
  * Issues with GitLab.com availability
    * Tag: `free_gitlab.com_availability`
  * Dormant Username Requests
    * Tag: `free_dormant_username_requests`
  * Forgot Password
    * Tag: `free_forgot_password`

### [Billing-related inquiry](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005879579)

* User title: Billing-related inquiry
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Invoice modification
    * Tag: `invoice_modification`
  * Payment method error
    * Tag: `payment_method_error`
  * Monthly billing requests
    * Tag: `monthly_billing_requests`

### [GitLab.com Email Address](https://gitlab.zendesk.com/agent/admin/ticket_fields/43969307)

* User title: GitLab.com User Email Address
* Type: regexp
* User description: The email address associated with your GitLab.com account, if different from the contact email address specified above. 
* Permissions: Editable for end users
* Regex: \S+@\S+\.\S+

### [GitLab Issues](https://gitlab.zendesk.com/agent/admin/ticket_fields/24032033)

* User title: GitLab Issues
* Type: textarea
* Permissions: Agent only

### [Document this](https://gitlab.zendesk.com/agent/admin/ticket_fields/33257507)

* User title: Document this
* Type: checkbox
* Tag: document_this
* Permissions: Agent only

### [Preferred Region for Support](https://gitlab.zendesk.com/agent/admin/ticket_fields/360018253094)

* User title: Preferred Region for Support
* Type: dropdown
* User description: Select 'All regions' if you do not wish to limit responses to a specific region's office hours. Specifying a region helps us respond during your team's office hours. https://about.gitlab.com/support/#definitions-of-gitlab-support-hours
* Permissions: Editable for end users
* Field values:
  * Americas, USA
    * Tag: `americas__usa`
  * Asia Pacific
    * Tag: `asia_pacific`
  * Europe, Middle East, Africa
    * Tag: `europe__middle_east__africa`
  * All Regions
    * Tag: `all_regions`

### [GitLab Version](https://gitlab.zendesk.com/agent/admin/ticket_fields/43970347)

* User title: GitLab Version
* Type: regexp
* User description: The exact GitLab version you're currently running. Use x.y.z format. For example, 11.7.0  Determine your version by visiting your GitLab instance help page (https://<instance_url>/help) or the admin area. 
* Permissions: Editable for end users
* Required to submit a request
* Regex: \d+\.\d+\.\d+

### [Special GitLab Program inquiries](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005879599)

* User title: Special GitLab Program inquiries
* Type: dropdown
* Permissions: Agent only
* Field values:
  * EDU account inquiries (pass to EDU)
    * Tag: `edu_account_inquiries__pass_to_edu_`
  * OSS account inquiries (pass to OSS)
    * Tag: `oss_account_inquiries__pass_to_oss_`

### [Reason For Refund](https://gitlab.zendesk.com/agent/admin/ticket_fields/360008828213)

* User title: Reason For Refund
* Agent description: https://gitlab.com/gitlab-com/support/support-team-meta/issues/1255
* Type: dropdown
* Permissions: Editable for end users
* Required to solve a ticket
* Field values:
  * Renewal purchased in error
    * Tag: `renewal_purchased_in_error`
  * Purchased wrong product
    * Tag: `purchased_wrong_product`
  * Duplicate subscription purchased
    * Tag: `duplicate_subscription_purchased`
  * Not satisfied with the product / product did not work as expected
    * Tag: `not_satisfied_with_the_product_/_product_did_not_work_as_expected`
  * Purchased a personal plan instead of a group plan
    * Tag: `purchased_a_personal_plan_instead_of_a_group_plan`
  * Other (Please specify in description)
    * Tag: `other__please_specify_in_description_`

### [Company Name](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005243959)

* User title: Company Name associated with your subscription
* Type: text
* Permissions: Editable for end users

### [Renewal help](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005878839)

* User title: Renewal help
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Escalated to sales for invoice
    * Tag: `escalated_to_sales_for_invoice`
  * Renewal walkthough/guide
    * Tag: `renewal_walkthough/guide`

### [GitLab Plan](https://gitlab.zendesk.com/agent/admin/ticket_fields/360004394559)

* User title: GitLab Plan
* Agent description: GitLab Plan
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Premium
    * Tag: `premium_plan`
  * Starter
    * Tag: `starter_plan`
  * Ultimate
    * Tag: `ultimate_plan`
  * Core
    * Tag: `core_plan`
  * Gold
    * Tag: `gold_plan`
  * Bronze
    * Tag: `bronze_plan`
  * Silver
    * Tag: `silver_plan`
  * Free
    * Tag: `free_plan`

### [True-up troubleshooting](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005835080)

* User title: True-up troubleshooting
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Incorrect true-up purchase (resolvable in devapp)
    * Tag: `true-up_devapp`
  * Incorrect true-up purchase (pass to sales for invoice)
    * Tag: `true-up_sales_for_invoice`

### [License troubleshooting](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005878859)

* User title: License troubleshooting
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Active/Trueup
    * Tag: `license_troubleshoot_active/trueup`
  * Prior User Count
    * Tag: `license_troubleshoot_prior-user-count`
  * Never Generated
    * Tag: `license_troubleshoot_never_generated`

### [Sales contact name](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005183820)

* User title: Sales Contact Name
* Type: text
* User description: Please enter the name of the member of our Sales team who is assisting you with your trial
* Permissions: Editable for end users

### [Tell us about your GitLab subscription](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005241679)

* User title: Tell us about your GitLab subscription
* Type: dropdown
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Gold customer
    * Tag: `gold_customer`
  * Silver customer
    * Tag: `silver_customer`
  * Bronze customer
    * Tag: `bronze_customer`
  * Free user
    * Tag: `free_customer`
  * Sales Assisted Trial
    * Tag: `com_sales_assisted_trial`

### [Self Managed Runner Issue](https://gitlab.zendesk.com/agent/admin/ticket_fields/360007406419)

* User title: Is this a Runner Issue?
* Agent description: Self-Managed Runner Issue Confirmation
* Type: dropdown
* User description: To confirm if this issue belongs to Runner Install type
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Yes
    * Tag: `self-managed_runner_issue_yes`
  * No
    * Tag: `self-managed_runner_issue_no`

### [Other (Licensing)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005879139)

* User title: Other (Licensing)
* Type: dropdown
* Permissions: Agent only
* Field values:
  * General GitLab Inquiry
    * Tag: `general_gitlab_inquiry`
  * Technical GitLab Inquiry
    * Tag: `technical_gitlab_inquiry`

### [Product Stage](https://gitlab.zendesk.com/agent/admin/ticket_fields/360020464233)

* User title: Product Stage
* Type: multiselect
* Permissions: Agent only
* Field values:
  * Manage
    * Tag: `product_stage_manage`
  * Plan
    * Tag: `product_stage_plan`
  * Create
    * Tag: `product_stage_create`
  * Verify
    * Tag: `product_stage_verify`
  * Package
    * Tag: `product_stage_package`
  * Release
    * Tag: `product_stage_release`
  * Configure
    * Tag: `product_stage_configure`
  * Monitor
    * Tag: `product_stage_monitor`
  * Secure
    * Tag: `product_stage_secure`
  * Defend
    * Tag: `product_stage_defend`
  * Growth
    * Tag: `product_stage_growth`
  * Enablement
    * Tag: `product_stage_enablement`
  * Not product stage
    * Tag: `no_product_stage`

### [Hosted Instance Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/43892848)

* User title: Hosted Instance Type
* Type: dropdown
* User description: The type of GitLab Hosted instance you're experiencing trouble with. 
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Community Edition (CE)
    * Tag: `hosted_ce`
  * Enterprise Edition (EE)
    * Tag: `hosted_ee`
  * CI Runner
    * Tag: `hosted_runner`

### [Escalated to Sales](https://gitlab.zendesk.com/agent/admin/ticket_fields/360004445300)

* User title: Escalated to Sales
* Type: checkbox
* Tag: escalated_to_sales
* Permissions: Agent only

### [ARR](https://gitlab.zendesk.com/agent/admin/ticket_fields/360020288373)

* User title: ARR
* Agent description: How much the customer pays per year
* Type: decimal
* Permissions: Agent only

### [Self-managed Problem Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/360017156474)

* User title: Problem Type
* Agent description: Self-managed problem type
* Type: dropdown
* User description: Please select the option that best fits your request (if more than one we recommend opening two tickets)
* Permissions: Editable for end users
* Required to solve a ticket
* Required to submit a request
* Field values:
  * Installation help (Omnibus, Geo HA, Kubernetes, AWS, GCP, Azure)
    * Tag: `installation_help__omnibus__geo_ha__kubernetes__aws__gcp__azure_`
  * Upgrades, migrations, importing and exporting projects and instances
    * Tag: `upgrades__migrations__importing_and_exporting_projects_and_instances`
  * Authentication and Authorization (LDAP, SAML, SSO, user accounts etc)
    * Tag: `authentication_and_authorization__ldap__saml__sso__user_accounts_etc_`
  * Performance and Errors (GitLab is running slowly or I'm getting errors)
    * Tag: `performance_and_errors__gitlab_is_running_slowly_or_i_m_getting_errors_`
  * Configuration help (GitLab.rb, GitLab Pages, admin panel)
    * Tag: `configuration_help__gitlab.rb__gitlab_pages__admin_panel_`
  * CI/CD (config, ci yml, runners, Auto DevOps, testing, deploy, container registry)
    * Tag: `ci/cd__config__ci_yml__runners__auto_devops__testing__deploy__container_registry_`
  * Monitoring (Logging, Prometheus, Grafana, Tracing)
    * Tag: `monitoring__logging__prometheus__grafana__tracing_`
  * Secure (SAST, DAST, Scanning, License Management)
    * Tag: `secure__sast__dast__scanning__license_management_`
  * Project management 'plan' features, Git, Merge Requests, Web IDE
    * Tag: `project_management__plan__features__git__merge_requests__web_ide`
  * Other
    * Tag: `other`

### [Company name (SM)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005184380)

* User title: Company name
* Type: text
* User description: Company name can be found in the Admin Area under License Information
* Permissions: Editable for end users

### [Requested Dormant Username](https://gitlab.zendesk.com/agent/admin/ticket_fields/360004257919)

* User title: Requested Dormant Username
* Type: text
* User description: Enter the username you would like to request, without the preceding URL (e.g., "User" instead of "gitlab.com/User")
* Permissions: Editable for end users

### [Self Managed GitLab Install Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/360007406719)

* User title: What is your self-managed GitLab Install type?
* Agent description: Self Managed GitLab Install Type
* Type: dropdown
* User description: Please describe your GitLab install type.
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Omnibus
    * Tag: `self-managed_gitlab_install_type_omnibus`
  * Docker
    * Tag: `self-managed_gitlab_install_type_docker`
  * Kubernetes
    * Tag: `self-managed_gitlab_install_type_kubernetes`
  * Source
    * Tag: `self-managed_gitlab_install_type_source`

### [Customer Priority](https://gitlab.zendesk.com/agent/admin/ticket_fields/360014776453)

* User title: Priority
* Agent description: Allow customers to say priority
* Type: dropdown
* User description: Definitions of priority for premium support: https://about.gitlab.com/support/#priority-support
Support may update chosen priority to meet these definitions.
* Permissions: Editable for end users
* Field values:
  * Low
    * Tag: `low`
  * Medium
    * Tag: `medium`
  * High
    * Tag: `high`

### [Transactions & Licensing - Product](https://gitlab.zendesk.com/agent/admin/ticket_fields/360021283973)

* User title: Transactions & Licensing - Product
* Type: dropdown
* Permissions: Agent only
* Required to solve a ticket
* Field values:
  * GitLab.com
    * Tag: `transaction_product_gitlab.com`
  * Self-managed
    * Tag: `transaction_product_self_managed`

### [Escalated to Education](https://gitlab.zendesk.com/agent/admin/ticket_fields/360004445320)

* User title: Escalated to Education
* Type: checkbox
* Tag: escalated_to_education
* Permissions: Agent only

### [Subscription Number](https://gitlab.zendesk.com/agent/admin/ticket_fields/360008812434)

* User title: Subscription Number
* Agent description: Subscription Number
* Type: text
* User description: This number is located on your most recent invoice and is in the form of A-SXXXXXXXX
* Permissions: Editable for end users

### [Upgrade assistance](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005878939)

* User title: Upgrade assistance
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Self-service upgrade
    * Tag: `self-service_upgrade`
  * Sales-assisted upgrade
    * Tag: `sales-assisted_upgrade`

### [Trial - related inquiries](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005878959)

* User title: Trial - related inquiries
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Trial start
    * Tag: `trial_start`
  * Trial extension
    * Tag: `trial_extension`
  * Trial cancelation
    * Tag: `trial_cancelation`
  * Trial downgrade
    * Tag: `trial_downgrade`

### [Self Managed Runner Install Type](https://gitlab.zendesk.com/agent/admin/ticket_fields/360007388340)

* User title: What is your Runner Install type?
* Agent description: Self Managed Runner Install Type
* Type: dropdown
* User description: Please confirm your Runner Install type.
* Permissions: Editable for end users
* Required to submit a request
* Field values:
  * Linux Package or Manual Install
    * Tag: `self-managed_runner_type_linux_package_or_manual_install`
  * Kubernetes
    * Tag: `self-managed_runner_type_kubernetes`
  * Docker
    * Tag: `self-managed_runner_type_docker`
  * Windows Manual Install
    * Tag: `self-managed_runner_type_windows_manual_install`
  * Other
    * Tag: `self-managed_runner_type_other`

### [Portal Bug ](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005693879)

* User title: Portal Bug 
* Agent description: Check this box if the issue the customer is experiencing is a bug in the portal
* Type: checkbox
* Tag: portal_bug
* Permissions: Agent only

### [Cancelation/refund requests](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005878979)

* User title: Cancelation/refund requests
* Type: dropdown
* Permissions: Agent only
* Field values:
  * Self-managed downgrade requests
    * Tag: `self-managed_downgrade`
  * .com downgrade requests
    * Tag: `.com_downgrade`
  * Customer accidentally purchased the wrong plan
    * Tag: `purchased_wrong_plan`
  * Telemetry-related refund request/cancelation
    * Tag: `telemetry_refund_cancelation`

### [Email associated with your subscription](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005248199)

* User title: Email associated with your subscription
* Type: text
* Permissions: Editable for end users

### [GitLab.com Username](https://gitlab.zendesk.com/agent/admin/ticket_fields/43892688)

* User title: GitLab.com Username
* Type: regexp
* User description: Your GitLab.com account username. 
* Permissions: Editable for end users
* Required to submit a request
* Regex: \S+

### [Email associated with your GitLab instance](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005189080)

* User title: Email associated with your GitLab instance
* Type: text
* Permissions: Editable for end users

### [Sales contact email](https://gitlab.zendesk.com/agent/admin/ticket_fields/360005248219)

* User title: Sales contact email
* Type: text
* User description: Please enter the email of the member of our Sales team who is assisting you with your trial
* Permissions: Editable for end users

### [Transactions Issue Type ](https://gitlab.zendesk.com/agent/admin/ticket_fields/360020421853)

* User title: Transactions Issue Type 
* Agent description: https://gitlab.com/gitlab-com/business-ops/bizops-bsa/portal-analysis/issues/14
* Type: dropdown
* Permissions: Agent only
* Required to solve a ticket
* Field values:
  * Renewal help
    * Tag: `transaction_issue_renewal_help`
  * License troubleshooting
    * Tag: `transaction_issue_licensing`
  * Upgrade
    * Tag: `transaction_issue_upgrade`
  * Trial - related inquiries
    * Tag: `transaction_issue_trial`
  * Cancelation/refund requests
    * Tag: `transaction_issue_cancellation`
  * Contact Management
    * Tag: `transaction_issue_contact_management`
  * Billing-related inquiry
    * Tag: `billing-related_inquiry`
  * Gitlab.com Issue
    * Tag: `transaction_issue_.com_troubleshooting`
  * .Com - Self-hosted transfer requests
    * Tag: `transaction_issue_transfer`
  * New business inquiries
    * Tag: `transaction_issue_new_business_inquiries`
  * EDU/OSS
    * Tag: `transaction_issue_special_programs`
  * Other
    * Tag: `transaction_issue_other`
  * Product/Process question
    * Tag: `transaction_issue_product/process_question`
  * Customers portal issue
    * Tag: `transaction_issue_customers_portal_issue`
  * Associate namespace
    * Tag: `transaction_issue_associate_namespace`
  * Downgrade
    * Tag: `transaction_issue_downgrade`
  * Sales assistance required
    * Tag: `transaction_issue_sales_assistance_required`

### [GitLab.com Project Path](https://gitlab.zendesk.com/agent/admin/ticket_fields/43891688)

* User title: GitLab.com Project Path
* Type: regexp
* User description: The path to the project you're having trouble with, in the format 'group/project'.
* Permissions: Editable for end users
* Regex: \S+\/\S+

### [Channel (Received at email)](https://gitlab.zendesk.com/agent/admin/ticket_fields/45195248)

* User title: Channel (Received at email)
* Agent description: Email tickets were received at
* Type: dropdown
* Permissions: Agent only
* Field values:
  * support@gitlab.com
    * Tag: `support_gitlab_com`
  * <redacted>
    * Tag: `emergency_gitlab_com`
  * renewals@gitlab.com
    * Tag: `renewals_gitlab_com`
  * mail-list@gitlab.com
    * Tag: `mail-list_gitlab_com`
  * contact@gitlab.com
    * Tag: `contact_gitlab_com`
  * subscribers@gitlab.com
    * Tag: `subscribers_gitlab_com`
  * security@gitlab.com
    * Tag: `security_gitlab_com`
  * trial@gitlab.zendesk.com
    * Tag: `trial_gitlab_zendesk_com`
  * Web Form
    * Tag: `web_form`
  * support@gitlab.zendesk.com
    * Tag: `support_gitlab_zendesk_com`
  * Created by agent
    * Tag: `created_by_agent`
  * support@githost.io
    * Tag: `support_githost_io`
  * subscribers@gitlab.zendesk.com
    * Tag: `subscribers_gitlab.zendesk.com`

### [Organization Name (partners)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360012167559)

* Description: https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/2445
* User title: What is the name of the organization this is for? Name (partners)
* Type: text
* Permissions: Editable for end users
* Required to submit a request

### [Organization Email (partners)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360012194200)

* Description: https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/2445
* User title: What is the email address of the customer with whom we should work at the Organization?
* Type: text
* Permissions: Editable for end users
* Required to submit a request

### [Partner troubleshooting](https://gitlab.zendesk.com/agent/admin/ticket_fields/360012194220)

* Description: https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/2445
* User title: Troubleshooting Details
* User description: Please describe the steps you've taken so far in working on this issue with the customer.
* Type: multi-line
* Permissions: Editable for end users
* Require to submit a request

### [Customer Name (partners)](https://gitlab.zendesk.com/agent/admin/ticket_fields/360012167579)

* Description: https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/2445
* User title: What is the customer's name?
* Type: text
* Permissions: Editable for end users
* Require to submit a request
