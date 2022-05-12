---
layout: handbook-page-toc
title: 'Provisioning and Deprovisioning Agents'
category: Zendesk
subcategory: Agents
description: 'Details on the provisioning and deprovisioning agents in Zendesk'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As maintainers of Zendesk, it is important to understand how provisioning and
deprovisioning is done.

## Provisioning in Zendesk Global

You should never manually provision an agent in Zendesk, as this is handled via
Okta. This is required, as Okta will act as the authentication mechanism for
signing into any Zendesk instance.

If you find a need to change the role of a Zendesk agent, please follow the
workflow detailed at [Changing Zendesk Agent roles](zendesk_roles.html).

### Light Agents for Zendesk Global

To obtain a Light Agent in Zendesk Global, the requester must send an email to
`gitlablightagent.2lba7m@zapiermail.com`. After doing so, they will receive an
automated reply with the result of your request. It must be sent via a GitLab
Google / Gmail account. Any other address will be declined. The Subject and
Body fields of the email can be empty in the email itself, as they have no
bearing on the process for this.

Once set up, the requester will need to wait 24 hours for the account to be assigned the Zendesk Global app in Okta. Once the Zendesk Global app is assigned, the requester should be able to log in. If that doesn't work correctly for the requester, they should reach out via the in slack via
[#support-operations](https://gitlab.slack.com/archives/C018ZGZAMPD).
In most cases, people who don't get access within the 24 hours already had an
end-user account which prevents the automation from working as expected.

#### How does this work?

The whole process is actually done via [Zapier](http://zapier.com/), using the
[Light Agent Provisioning](https://zapier.com/app/editor/104514510) zap. It
works using the following process:

1. A new inbound email is detected. From this, the `name` and `email` are
   passed to the next stage.
1. A python script (see below) runs using this information to determine the
   steps needed. The output from this script is then passed to the next stage.
1. In the final stage, an outbound email is sent to the requester. The contents
   of this email can be seen below.

<details>
<summary>The Python script used</summary>
<div><pre><code>
def check_email_domain(email):
  email_domain = email.split('@')[1]
  if email_domain != "gitlab.com":
    return 'fail'
  return 'pass'

def check_user(name, email):
  url = 'https://gitlab.zendesk.com/api/v2/users/search.json?query=email:' + email
  req = requests.get(url, auth=(input_data['ZD_USERNAME'], input_data['ZD_TOKEN']))
  data = req.json()
  if data['users'] == []:
    # User does not exist
    make_light_agent(name, email)
    return {'result': 'Account created and upgraded to light agent'}
  role = data['users'][0]['role']
  if role == 'end-user':
    # Need to upgrade role
    make_light_agent(name, email)
    return {'result': 'Account created and upgraded to light agent'}
  elif role == 'agent':
    # Already an agent
    return {'result': 'Looks like you are already a full agent.'}

def make_light_agent(name, email):
  url = 'https://gitlab.zendesk.com/api/v2/users/create_or_update.json'
  data = {"user": {"name": name, "email": email, "role": "agent", "custom_role_id": 360004984553}}
  req = requests.post(url, json=data, auth=(input_data['ZD_USERNAME'], input_data['ZD_TOKEN']))
  if r.status_code != 200:
    return {"result": "Something went wrong, please ping in slack channel #support_operations"}
  else:
    return {"result": "Light agent provisioned"}

email = input_data['email']
name = input_data['name']
if check_email_domain(email) == 'pass':
  output = check_user(name, email)
else:
  output = {'result': 'Invalid email domain. You must use a gitlab.com email address.'}
output
</code></pre></div>
</details>

<details>
<summary>Outbound email contents</summary>
<blockquote>
<p>Hi,</p>
<p></p>
<p>Thanks for requesting a Zendesk Light Agent account. This is the result of your request:</p>
<p></p>
<p>RESULT_FROM_PYTHON_SCRIPT</p>
<p></p>
<p>You now need to wait 24 hours for the account to be provisioned to Okta. You'll then see Zendesk in your list of Okta applications and you can sign in from there.</p>
<p></p>
<p>Any questions or problems please contact Support Operations in Slack #support_operations.</p>
</blockquote>
</details>

## Provisioning in Zendesk US Federal

### Agents for Zendesk US Federal

As these require the
[tech stack provisioner](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml)
to manually provision these, an
[Access Request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new)
is required.

Once one has been received, the process will go as follows:

1. Email `people-exp@gitlab.com` the following:
   * Subject: US Citizenship Verification Request
   * Body:
     > Greetings all!
     >
     > Can you verify if NAME is a US Citizen? They are requesting access to the
     > Federal Zendesk instance via ISSUE which does require it.
     >
     > Thanks!
   * Replace NAME with the requester's name
   * Replace ISSUE with the link to the Access Request issue
1. Note the Access Request issue that you have contacted the People team to
   verify US citizenship.
1. If the People team verifies the citizenship:
   * Create the Light Agent manually in the Zendesk US Federal instance.
   * Go into Okta and assign the app to the requester
   * Update the issue letting them know it has been provisioned.
1. If the People team cannot verify the citizenship:
   * Comment on the Access Request issue noting citizenship could not be
     confirmed and that the issue will be closed, as no further action can be
     taken without verification from the People team.

## Deprovisioning

You will, from time to time, get a request to deprovision an agent (these will
mostly stem from Offboarding tasks). To deprovision an agent, go to that
agents's page in Zendesk and do the following:

* Unassign any active tickets (less than Closed) from that agent
* Remove agent's tags from Tags section
* Demote the agent's role to that of end-user
* Suspend the end-user
* After doing so, take a screenshot of the user page (the screenshot should
  show that the user is now an end-user * and suspended). Post this screenshot
  in the offboarding issue to verify they have been deprovisioned.

These steps are the same for any Zendesk instance.
