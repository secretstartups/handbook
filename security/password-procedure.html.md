---
layout: handbook-page-toc
title: GitLab Password Procedure
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

## Purpose

These specific requirements are related to the protection of GitLab information systems and other resources from unauthorized use.  Our intention in publishing this procedure is to outline information security guidelines intended to protect GitLab assets, not to impose restrictions.  

Constructing secure passwords and ensuring proper password management is essential. GitLab's password guidelines are based, in part, on the recommendations by [NIST 800-63B](https://pages.nist.gov/800-63-3/sp800-63b.html). To learn what makes a password truly secure, read this [article](https://medium.com/peerio/how-to-build-a-billion-dollar-password-3d92568d9277) or watch this [conference presentation](https://www.youtube.com/watch?v=vudZnjp5Uq0&t=19183) on password strength.


## Scope

Applies to all GitLab team-members, contractors, advisors, and contracted parties interacting with GitLab computing resources and accessing company or customer data.

## Roles & Responsibilities

| Role  | Responsibility | 
|-----------|-----------|
| GitLab Team Members | Responsible for following the requirements in this procedure |
| Security | Responsible for implementing and executing this procedure | 
| Security Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## Procedure

### GitLab team-members Password Requirements
* At GitLab, we enforce a strong password requirement, which consists of minimum length of 12 characters.
* To make a secure password you can remember, consider using a [combination of 5 or more random words](https://medium.com/peerio/how-to-build-a-billion-dollar-password-3d92568d9277#67c2)
* The use of special characters is not required or even recommended.
* Avoid creating predictable passwords.
* Passwords cannot be reused.
* Passwords should not be the same as username.
* Passwords should be unique from the previous passwords used.

### Password Management
* Password "hints" are not to be used. If a password is forgotten, a mechanism must be in place to replace a password/passphrase with sufficient controls to verify the identity of the requester of the password reset.
* Passwords must be stored in a way that is resistant to offline attacks and must be salted and hashed using a suitable one-way key derivation function.
* If a password is required to be stored, it must be stored within an approved password manager application and may be pasted from this using a master password function (e.g. 1Password).
* Passwords are to be kept private and secured.
* If an account or password is suspected to have been compromised, report the incident to Security and promptly follow their instructions.
* Passwords are not to be shared or be in clear text or be written down.
* Security questions like "What is your favorite color? What is your mother's maiden name?", etc should be answered with a random non-obvious word or set of words. You can [generate answers in 1Password](/handbook/security/#1password-guidelines) and store them as a note. That way the answer won't be guessable and will be unique across different sites.

### System Password Requirements
* For systems where a password can be configured the minimum password length needs to be set to 12 characters.
* To make a secure password you can remember, consider using a [combination of 5 or more random words](https://medium.com/peerio/how-to-build-a-billion-dollar-password-3d92568d9277#67c2)
* The use of special characters is not required or even recommended.
* If a particular system will not support 12 character passwords, then the maximum number of characters allowed by that system shall be used.
* If a particular system requires a password history, configuration should be set for 25 remembered passwords.
* Passwords are not acceptable if they match the subsequent patterns, and must be checked against commonly used or expected patterns, including known breached password lists, dictionary words, repetitive or sequential characters, or context specific words, such as the name of the service, username, or derivatives thereof.
* System administrators of applications and or devices must change default passwords.
* System administrators need to enable password strength on third party applications and or tools, where applicable.
* For applications where a password is the only source of authentication a password must be expired within a maximum of 90 calendar days.
* Systems should monitor and log failed login attempts.
* Authentication failed login attempts information needs to be recorded within the application logs such as: name, date, number of failed attempts, unique log identifier.
* Repeated failed login attempts must trigger a temporary account lockout after 10 failed attempts. The lockout may end after a designated period of time, or require a manual unlock, depending on the profile of the application.

### Two Factor Authentication

All GitLab team members should use [Two Factor Authentication](https://en.wikipedia.org/wiki/Multi-factor_authentication) (2FA) whenever possible. Usage of 2FA by GitLab team members is **required** for access to the production environment. It should be noted that references to MFA (Multi-Factor Authentication) are often included in language associated with third party products and certain Compliance references, but the general concept is still covered by the term "2FA". There are different 2FA methods that can be used by GitLab team members. These are ranked by security strength:

- [U2F](https://en.wikipedia.org/wiki/Universal_2nd_Factor). U2F (Universal 2nd Factor) uses a hardware token and is considered the most secure method, assuming the hardware token itself is physically secured.
- [Push Authentication](https://en.wikipedia.org/wiki/Authenticator#Mobile_Push). For Push Authentication to work, the authentication service and a complementary mobile app typically use RSA keys and OOB (Out Of Band) communications to perform the secondary authentication. GitLab uses Okta, and by using the [Okta Verify](https://help.okta.com/en/prod/Content/Topics/Mobile/okta-verify-overview.htm) mobile app, you can perform Push Authentication. From a pure cryptographic perspective this is _slightly_ less secure than U2F as U2F uses secure hardware storage, otherwise they are pretty much equal.
- [TOTP](https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm). TOTP (Time-based One Time Password) is a popular method for a second factor. This can be done via a mobile app (Google Authenticator, Duo Security, etc) although there are some software implementations as well. While not as secure as U2F or Push as TOTP could be [phished](https://en.wikipedia.org/wiki/Phishing) (although the attack window would be extremely short), it is still a very secure method of authentication. As 1Password is used by GitLab team members, this could be used for TOTP after proper configuration ([see below](/handbook/security/#two-factor-authentication-and-time-based-one-time-passwords)).
- [SMS](https://en.wikipedia.org/wiki/SMS). SMS (Short Message Service) is a method of using text messaging to provide out-of-band (OOB) authentication. As the messages can be spoofed or intercepted more easily than other methods, SMS is not recommended for 2FA. As of this writing the Security Department is unaware of GitLab assets or third party applications that team members are using that _only_ support SMS 2FA, but if you need to use something that only offers SMS as a second factor for GitLab, contact the [Security Department](/handbook/security/#slack-channels).

There is a reason that multiple 2FA methods are supported (e.g. Okta supports U2F, Push, and TOTP). Situations are different for different team members. For team members that travel a lot, they might feel more comfortable using Push instead of U2F if they are concerned about losing the hardware token during their travels. Many team members use 1Password and TOTP for the convenience. Many services support configuring multiple methods, which can be used for different situations or as a backup if a factor is lost. The idea is that we give team members a choice so that they can adapt a 2FA solution that best suits their needs. Again, contact the [Security Department](/handbook/security/#slack-channels) if you have questions.

For a better understanding of how 2FA fits into GitLab, refer to the [Accounts and Passwords](/handbook/security/#accounts-and-passwords) section, which includes pointers to setting up passwords, acquiring U2F tokens, and links to further resources. Refer to the Tools and Tips page for more detailed information regarding [U2F](/handbook/tools-and-tips/#u2f) and [other 2FA methods](/handbook/tools-and-tips/#other-2fa-methods).

### Application Authentication Requirements
* Authentication to an application should contain Multi-Factor authentication (Token, OTP Generator, SSO, YubiKey/Titan or equivalent) and or a SAML Assertion after logging into an authentication portal is recommended (e.g., Okta).
* Authentication to an application should support individual users, not groups.
* Acceptable secondary authentication factors include Google Authenticator or similar software implementing a One-time Password algorithm. The use of biometrics is acceptable.

### Exceptions to Password Policy

Any application that can not meet MFA and or Password requirements needs to [submit an exception](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/issues/new?issuable_template=Exception%20Request) for the Compliance team to review.  A duration of an exception is valid for 90 days followed by a proper remediation plan. After 90 days the exception will be reevaluated.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References

- Parent Policy: [Information Security Policy](/handbook/security/)
