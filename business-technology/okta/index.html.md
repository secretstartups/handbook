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
1. For Touch ID or Face ID, choose `This Device`. For a [YubiKey](https://about.gitlab.com/handbook/tools-and-tips/#u2f-devices), choose `USB security key`.

    <img src="/handbook/business-technology/Okta-Add-Biometric-1.png" alt="Okta Add Biometric #1" width="300"/>

1. For Touch ID or Face ID, another prompt will appear asking you to authenticate using Touch ID or Face ID.

    <img src="/handbook/business-technology/Okta-Add-Biometric-2.png" alt="Okta Add Biometric #2" width="300"/>

1. For Security Key, relevant prompts will appear.

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-1.png" alt="Okta Security Key #1" width="300"/>

1. You may be prompted for a PIN, and then finally click `Allow`. 

    <img src="/handbook/business-technology/Okta-Add-SecurityKey-2.png" alt="Okta Security Key #2" width="300"/>


Follow the GitLab Okta [FAQ](/handbook/business-technology/okta/okta-enduser-faq/).

We have also prepared Introductory Videos on [Setting up MFA/Yubikeys](https://youtu.be/9UyKml_aO3s), [Configuring Applications](https://youtu.be/xS2CarGUPLc) and [Dashboard Tips](https://youtu.be/xQQwa_pbe2U).



### I want to add Touch ID / Face ID to Okta for my mobile device (iPhone, Android, Tablet) 

These steps are for an iPhone, and may be slightly different for Android.  If you are using an iPhone and receive a Developer or XCODE error, please upgrade to iOS 16+. We recommend enrolling a phone even if you don't plan to use it often, in case you need a way to [add a new computer or your credential gets accidentally removed on the computer](https://about.gitlab.com/handbook/business-technology/okta/#i-want-to-login-or-add-a-new-computer-to-okta-and-i-have-a-phone-enrolled).
1. On the computer, login into your [Okta](https://gitlab.okta.com)
1. On the computer, click on your name on the top right to open the drop down menu (smiliar to above) and navigate to "Settings".
1. On the computer, under Security Methods click "Set up another" beside Security Key or Biometric. This will take you to a setup authentication screen, click "Verify". Provide Touch ID.
1. On the computer, click "Set up", then click "Set up" again on the next screen
1. On the computer, in Chrome, the pop up that opens choose the Use phone with a QR code. This should display a QR code. In Safari, click "Other options", then choose "iPhone, iPad or Android device - save a passkey on a device with a camera", then "Continue".
1. On the mobile device, open your camera app and scan. (It may take a few seconds for it to connect). This requires Bluetooth to be enabled on both devices, but does not require pairing.
1. On the mobile device, a pop on your phone should show up to allow the credential to be saved. Allow this.
1. On the mobile device, attempt to sign in by visiting [Okta](https://gitlab.okta.com).

### I want to login or add a new computer to Okta and I have a mobile device enrolled 
This method has been verified on Macs and Linux with Chrome. For Safari, it requires macOS Ventura 13+. Steps below for iPhone require iOS 16+, may be slightly different for Android.
1. On the computer, log in with username and password
1. On the computer, a popup appears to "Verify your identity with gitlab.okta.com"
1. On the computer, choose "Use phone with a QR code". This requires Bluetooth be enabled on both the phone and the laptop, but doesn't require pairing.
1. On the mobile device, scan the code using the Camera app
1. On the mobile device, click "Sign in with a Passkey"
1. On the mobile device, a "Sign in" popup appears - "Do you want to sign in to "gitlab.okta.com" with your saved passkey for "xxxxx@gitlab.com"? Click Continue and provide biometric.
1. On the mobile device, you will now be signed in to Okta.
1. If applicable, follow the standard [steps](#i-want-to-add-touch-id--face-id-to-okta-for-my-mobile-device-iphone-android-tablet) to enroll your Touch ID into Okta.

### I don't have an enrolled phone or computer but have a YubiKey

If both of previous devices are not available, you could use a [YubiKey](https://www.yubico.com/products/) as another form of authentication (if you have one set one up). Use that to access your settings page and follow the steps above to enroll a new device.

### Lost access to your 2FA or your OKTA account has been locked out because of failed attempts?

- Head to `#it_help` in Slack or email `it-help@gitlab.com` and ask for a 2FA Reset, please be prepared to verify your identity
- Once Okta 2FA is reset please reconfigure it by logging into your Okta account and setting up with either Biometrics or a YubiKey.
- If your account is locked please head to `#it_help` and ask to have your account unlocked. As a precaution, you will also need to change your Okta Password.


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

- For Okta help, setup and integration questions: `#it_help` slack channel

