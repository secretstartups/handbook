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

Follow the GitLab Okta [Getting Started Guide](https://docs.google.com/document/d/1x2NJan0job5nM5tT8HF6yofg-Y2aAsSVKc6qNnCuoxo/) and [FAQs](/handbook/business-technology/okta/okta-enduser-faq/).

We have also prepared Introductory Videos on [Okta Setup](https://youtu.be/upJ4p3lKYKw), [Setting up MFA/Yubikeys](https://youtu.be/9UyKml_aO3s), [Configuring Applications](https://youtu.be/xS2CarGUPLc) and [Dashboard Tips](https://youtu.be/xQQwa_pbe2U).

We recommend particularly that once your account is set up, you set up an additional MFA factor (either YubiKey or Google Authenticator/TOTP) in case there's an issue with one of your MFA factors.

### Setting up my Okta Account requires me to use the app Okta Verify on my phone, and I don't like that.

Our Okta implementation defaults to using Okta Verify as the Required MFA factor.
Okta Verify is a safe and secure application that allows push notifications and one-time tokencodes on your phone to validate your login.
It is supported on iPhone, Android and Windows Phones.

For some people, there are issues with installing a verification app on their phone.
If there is some reason that this is not appropriate for your geography or other reasons, please submit an issue to [Opt Out](https://gitlab.com/gitlab-com/business-technology/team-member-enablement/issue-tracker/issues/new?issuable_template=okta_verify_optout) and we can add you to an authentication group that will make Okta Verify optional.
Please note that we still recommend that you set up at least two MFA factors, in case something happens to one of your factors.

### I occassionally get an additional challenge in Okta Verify when signing in, why and how do I deal with it?

Okta Verify will provide an additional challenge when a high-risk sign-on is performed (new device, changing locations, etc.) Example: computer (left), phone (right).

<div style="text-align:center;">
  <img src="/handbook/business-technology/Okta-PC-Number-Challenge.png" alt="Okta PC Number Challenge" width="300"/>
  <img src="/handbook/business-technology/Okta-Phone-Number-Challenge.png" alt="Okta Phone Number Challenge" width="300"/>
  </div>
<br>

## I forgot my password/my login doesn't work, what do I do?

There is a "need help signing in?" button on the login screen.
If you expand this there is a link to an automated password reset process via email.
You will need to know the answers to your security question(s) to use this.

We recommend that you store your Okta password in 1Password as well as your Security Questions there.
Please review the [1Password Guidelines](/handbook/security/#1password-guidelines) for best ways to use Okta and 1Password together.

### I forgot my Security Questions, how do I reset my password?

Firstly, review the [1Password Guidelines](/handbook/security/#1password-guidelines).
Then head to `#it_help` in Slack and ask for a temporary password to be issued.
You will be issued a temporary password at which point you can reset your access.

## I need to reconfigure Okta 2FA/MFA! What do I do?

### I still have my old phone and its not wiped

Great! Firstly sign into your Okta account by going to [gitlab.okta.com](https://gitlab.okta.com) use your email, password, and the 2FA code on your old phone.

Once you're on the Okta webpage click on your name in the top right corner and then click settings.

In the settings page, press the edit profile button. You may be prompted for your Okta password and 2FA (On old device)

<div style="text-align:center;">
  <img src="/handbook/business-technology/Edit-profile-button.png" alt="Edit Profile" width="500"/>
</div>
<br>

Scroll down until you see "Extra Verification", once you're there click "remove" to disable that specific 2FA and then click setup to configure the new 2FA code on your new phone.

<div style="text-align:center;">
  <img src="/handbook/business-technology/Extra-verification-Okta.png" alt="Okta 2FA" width="700"/>
</div>
<br>

### I want to add Touch ID / Face ID / Yubikey to Okta

1. While logged in to Okta from the device you wish to add, access the [Settings](https://gitlab.okta.com/enduser/settings) page. 
2. Choose `Set up` or `Set up another` next to `Security Key or Biometric Authenticator` in the `Extra Verification` section of the page. 
3. You may then be presented with another prompt to confirm if you wish to `Set up another`, followed by an `Enroll` prompt. 
4. After pressing `Enroll`, a prompt from your web browser will appear.
5. For Touch ID or Face ID, choose `This Device`. For a [Yubikey](https://about.gitlab.com/handbook/tools-and-tips/#u2f-devices), choose `USB security key`.

    <img src="/handbook/business-technology/Okta-Add-Biometric-1.png" alt="Okta Add Biometric #1" width="300"/>

6. For Touch ID or Face ID, another prompt will appear asking you to authenticate using that method.

    <img src="/handbook/business-technology/Okta-Add-Biometric-2.png" alt="Okta Add Biometric #2" width="300"/>

7. For Security Key, relevant prompts will appear.

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-1.png" alt="Okta Security Key #1" width="300"/>

8. You may be prompted for a PIN, and then finally click `Allow`. 

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-2.png" alt="Okta Security Key #2" width="300"/>

### I want to increase my security by removing Google Authenticator as a valid factor, and primarily use Biometric and Security Keys for authentication

Great - these factors are phishing resistent! To do so, choose "Remove" next to the relevant factor under "Extra Verification". If you plan to use biometric solely, we recommend having at least one Yubikey as a backup in order to be able to add a new device in a self-service way.

At this time, it is not possible to permanently remove Okta Verify as a valid factor, and if you do so, you will be prompted to re-add it upon next login.

### I don't have my old phone but have a Yubikey

If you wiped and returned your old mobile device you could use a [Yubikey](https://www.yubico.com/products/) as another form of authentication (if you have one set one up). Use that to access your settings page and follow the steps above to reset your Okta MFA.

### Lost access to all your 2FA/MFA?

- Head to `#it_help` in Slack and ask for a 2FA Reset.
- Once Okta 2FA is reset please reconfigure it by logging into your Okta account and scanning the QR code presented using Okta Verify app on your phone


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

