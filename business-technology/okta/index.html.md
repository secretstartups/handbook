---
layout: handbook-page-toc
title: "Okta"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is Okta?

From the Okta website

> Okta is the foundation for secure connections between people and technology.
> It’s a service that gives employees, customers, and partners secure access to the tools they need to do their most important work.

In practice - Okta is an Identity and Single Sign On solution for applications and Cloud entities.
It allows GitLab to consolidate authentication and authorisation to applications we use daily through a single dashboard and ensure a consistent, secure and auditable login experience for all our GitLab team members.

### How is GitLab using Okta?

GitLab is using Okta for a few key goals :

- We can use Okta to enable Zero-Trust based authentication controls upon our assets, so that we can allow authorised connections to key assets with a greater degree of certainty.
- We can better manage the login process to the 80+ and growing cloud applications that we use within our tech stack.
- We can better manage the provisioning and deprovisioning process for our users to access these application, by use of automation and integration into our HRIS system.
- We can make trust and risk based decisions on authentication requirements to key assets, and adapt these to ensure a consistent user experience.

### What are the benefits to me using Okta as a user?

- A single Dashboard that is provided to all users, with all the applications you need in a single place.
- Managed SSO and Multi-Factor Authentication that learns and adapts to your login patterns, making life simpler to access the assets you need.
- Transparent Security controls with a friendly user experience.

### What are the benefits to me as an application administrator to using Okta?

- Automated provisioning and group management
- Ability to transparently manage shared credentials to web applications without disclosing the credentials to users
- Centralised access for users, making it easy to add, remove and change the application profile without the need to update all users.

## How do I get my Okta account set up?

All GitLab team-members will have an Okta account set up as part of their onboarding process. You should already have an activation email in both your Gmail and Personal Accounts.  For efficiency, please follow the onboarding process for setting up Okta and set up 1Password first and follow that up with Okta.  Please also set up Okta from your computer rather than your mobile or the mobile app, as you will be guided to set up the mobile app as part of the onboarding process.

GitLab requires all team members to use either YubiKey or Biometrics as your OKTA authentication (handbook/business-technology/okta/#i-want-to-add-touch-id--face-id--yubikey-to-okta)

### I want to add Touch ID / Face ID / YubiKey to Okta

**Using [WebAuthn](https://www.okta.com/sites/default/files/pdf/How_WebAuthn_Works_0.pdf) authentication is required for all team members.**

1. Touch ID on Mac currently requires Chrome or Safari. There is a known [issue](https://bugzilla.mozilla.org/show_bug.cgi?id=1536482) with Firefox preventing it from working with Touch ID. Yubikeys can be used with all browsers.

1. While logged in to Okta from the device you wish to add, access the [Settings](https://gitlab.okta.com/enduser/settings) page.
1. In the 'Security Methods' section of the page, choose `Set up` or `Set up another` next to `Security Key or Biometric`.
1. You may then be presented with another prompt to confirm if you wish to `Set up another`, followed by an `Enroll` prompt.
1. After pressing `Enroll`, a prompt from your web browser will appear.
1. For Touch ID or Face ID, choose `This Device`. For a [Yubikey](https://about.gitlab.com/handbook/tools-and-tips/#u2f-devices), choose `USB security key`.

    <img src="/handbook/business-technology/Okta-Add-Biometric-1.png" alt="Okta Add Biometric #1" width="300"/>

1. For Touch ID or Face ID, another prompt will appear asking you to authenticate using Touch ID or Face ID.

    <img src="/handbook/business-technology/Okta-Add-Biometric-2.png" alt="Okta Add Biometric #2" width="300"/>

1. For Security Key, relevant prompts will appear.

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-1.png" alt="Okta Security Key #1" width="300"/>

1. You may be prompted for a PIN, and then finally click `Allow`. 

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-2.png" alt="Okta Security Key #2" width="300"/>


Follow the GitLab Okta [FAQ](/handbook/business-technology/okta/okta-enduser-faq/).

We have also prepared Introductory Videos on [Setting up MFA/Yubikeys](https://youtu.be/9UyKml_aO3s), [Configuring Applications](https://youtu.be/xS2CarGUPLc) and [Dashboard Tips](https://youtu.be/xQQwa_pbe2U).


## I forgot my password/my login doesn't work, what do I do?

There is a "need help signing in?" button on the login screen.
If you expand this there is a link to an automated password reset process via email.
You will need to know the answers to your security question(s) to use this.

We recommend that you store your Okta password in 1Password.
Please review the [1Password Guidelines](/handbook/security/#1password-guidelines) for best ways to use Okta and 1Password together.

### I forgot my Security Questions, how do I reset my password?

Firstly, review the [1Password Guidelines](/handbook/security/#1password-guidelines).
Then head to `#it_help` in Slack and ask for a temporary password to be issued.
You will be issued a temporary password at which point you can reset your access.

## I need to reconfigure Okta 2FA/MFA! What do I do?

### I still have my old phone and its not wiped

Great! First sign into your Okta account by going to [https://gitlab.okta.com/enduser/settings](https://gitlab.okta.com/enduser/settings). Use your email, password, and the 2FA code on your old phone. You may be prompted for your Okta password and 2FA (On old device).

<div style="text-align:center;">
  <img src="/handbook/business-technology/okta-security-methods.png" alt="Security methods" width="500"/>
</div>
<br>

Look to the right, or scroll down until you see "Security Methods". Once you're there click "remove" to disable that specific 2FA and then click setup to configure the new 2FA code on your new phone.

<div style="text-align:center;">
  <img src="/handbook/business-technology/Extra-verification-Okta.png" alt="Okta 2FA" width="700"/>
</div>
<br>


### I want to increase my security by removing Google Authenticator as a valid factor, and primarily use Biometric and Security Keys for authentication

Great - these factors are phishing resistant! To do so, choose "Remove" next to the relevant factor under "Extra Verification". If you plan to use biometric solely, we recommend having at least one Yubikey as a backup in order to be able to add a new device in a self-service way.

### I don't have my old phone but have a YubiKey

If you wiped and returned your old mobile device you could use a [Yubikey](https://www.yubico.com/products/) as another form of authentication (if you have one set one up). Use that to access your settings page and follow the steps above to reset your Okta MFA.

### Lost access to all your 2FA/MFA?

- Head to `#it_help` in Slack and ask for a 2FA Reset.
- Once Okta 2FA is reset please reconfigure it by logging into your Okta account and setting up either a YubiKey or Biometrics


## Managing Okta Access Using Google Groups

The GitLab Team Member Enablement team has created a new process for Owners and Provisioners to manage access to Okta applications. If you are listed as an Owner/Provisioner for an application in the [tech stack](https://docs.google.com/spreadsheets/d/1mTNZHsK3TWzQdeFqkITKA0pHADjuurv37XMuHv12hDU/edit#gid=1906611965) you will be using the method below to add users to a Google group, which will then sync this group to Okta and assign the application to users. This process was created to empower business application owners to effect Access Requests which require Okta application assignment.

- Sign in to [Google Groups](https://groups.google.com/).
- Click My groups.
- Click the name of the group were you want to add/remove a user. (Note that all Google groups which manage users in Okta application start with okta-xxxxx-users)
- Next press the `People tab` on the left side and select `Members`.
<img src="https://gitlab.com/plaurinavicius/image-sources-for-runbooks/-/raw/master/Screenshot_2020-11-05_at_14.27.05.png" alt="Screenshot" width="150"/>

- This will show you all the members currently in the group.
- To add a member press the `Add Members` button. To remove access mouse over a user and press on the little white box that appears, this will mark the user. After that on the right side press the remove member button (Looks like a circle with a horizontal line across).

When a member is added/removed from the group it may take up to 1 hour for the sync to happen between Google and Okta. Once the sync happens the user will see the application in Okta, if removed the opposite.
If you have any questions or require assistance please reach out to the IT team in the #it-help Slack channel.


### My Okta account has been locked out because of failed attempts, what do I do?

Head to `#it_help` and ask to have your account unlocked.
As a precaution, you will also need to change your Okta Password.

## Why isn't an application I need available in Okta?

Create a [new application setup issue](https://gitlab.com/gitlab-com/business-technology/change-management/issues/new?issuable_template=change_management_okta) and fill in as much information as you can.

Okta is currently configured with assigned groups/roles based on a team member's role/group.
Refer to the [Access Change Request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/#access-change-request) section of the handbook for additional information on why an application may not be available in Okta.

### How do I get my application set up within Okta?

If you are an application owner please submit a [new application setup issue](https://gitlab.com/gitlab-com/business-technology/change-management/issues/new?issuable_template=change_management_okta) on the Okta project page for your application.
We will work with you to verify details and provide setup instructions.

### I have an application that uses a shared password for my team, can I move this to Okta?

Yes you can!
Submit a [new application setup issue](https://gitlab.com/gitlab-com/business-technology/change-management/issues/new?issuable_template=change_management_okta) on the Okta project page for your application.
We will work with you to verify details and provide setup instructions.

## I'm getting asked to MFA authenticate a lot, is that normal?

The way we have Okta setup should require you to authenticate once with MFA when you start your working day, and that session should last for the rest of your work day.
It's recommended that you login via the [Okta Dashboard](https://gitlab.okta.com/) at the beginning of your day, and then use either the dashboard or the Okta plugin for applications during your work day.

For some applications, we enforce an additional MFA step periodically because of the sensitivity of the data in them.
We are also trialling a risk-based authentication algorithm that may ask you to re-authenticate if anomalous behaviour is detected on your account or Okta detects an unusual login pattern.
At this stage, BambooHR and Greenhouse require an additional authentication step.

If you are having problems with being asked for multiple MFA authentications during the day, please [log an issue](https://gitlab.com/gitlab-com/business-technology/change-management/issues) and we can look into it.

### Why does GitLab.com ask for an additional MFA when I login via Okta?

Your gitlab.com account will have 2FA installed as required by our policy.
Note that the 2FA for GitLab.com is different to the MFA you use to log into Okta.
[This issue](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7397) has been opened to propose a solution.

## Where do I go if I have any questions?

- For Okta  help, setup and integration questions: `#it_help` slack channel

