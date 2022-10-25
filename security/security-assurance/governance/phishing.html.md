---
layout: handbook-page-toc
title: "Phishing Program"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Phishing Program

The GitLab Phishing Program is designed to educate and evaluate GitLab's ability to detect and prevent phishing attempts. The goal of the program is to maintain up-to-date educational materials, provide ongoing training, and execute real-world simulations to provide GitLab Team Members the knowledge to identify, report, and block phishing attempts. Phishing simulations are provided by [ProofPoint](https://gitlab.ws01-securityeducation.com/), GitLab's third party provider, and will help satisfy external regulatory requirements and bolster customer assurance.

The Security Governance team coordinates with the following teams before a phishing simulation exercise:

* Security Incident Response Team (SIRT)
   * Responsible for triaging phishing emails
   * If they are made aware of a simulation they will provide the team member with additional instructions

* IT Operations/Team Member Enablement
   * Owner of GSuite (GitLab's email platform)

## Phishing Simulation Campaigns

Phishing simulations are an integral part of our overall security awareness education. The Security Governance team utilizes ProofPoint to generate and send simulated phishing emails to GitLab team members to assess their ability to identify phishing attempts. The goal is that TMs either report the phishing attempt (ideal behavior) or delete the email (acceptable behavior). TMs who click the link will automatically be assigned a phishing-specific training module, also via ProofPoint. 

### When will phishing simulations occur?

At a minimum, one phishing simulation campaign will take place each fiscal quarter. Prior to the phishing campaign's start, a general notification to the GitLab organization will be posted to the `#whats-happening-at-gitlab` Slack channel. However, for maximum efficacy, the exact content, date, time and team members receiving the email will not be communicated. Campaigns may contain various versions of the simulated email that will be delivered at random times throughout the 1-week campaign. 

### Who will receive the phishing simulations?

All GitLab team members, contractors and others with access to production data will be included in the quarterly campaigns with the exception of any individuals on extended leave at the time the campaign is launched. 

### What will a phishing simulation email look like?

The phishing simulation email from ProofPoint will appear as though it is originating from GitLab or a fictitious company. This email will look realistic/authentic in the attempt to engage the TM to click a link. We would love to show you what this looks like but that would defeat the purpose of the test.

### How should I respond to the phishing simulation?

Just like with any suspected phishing or malicious email, follow the [handbook process](/handbook/security/#what-to-do-if-you-suspect-an-email-is-a-phishing-attack) for reporting suspected phishing emails.  The preference for reporting phishing emails is Option 1 via PhishAlarm.

![PhishAlarm icon](/handbook/security/security-assurance/images/PhishAlarm.png)

### What happens if I click the link?

In the event the link is clicked, the team member will be redirected to a landing page notifying them that this was part of a simulation. TMs will see a quick Teachable Moment and will be automatically enrolled in a short training assignment (also provided by ProofPoint). We want everyone to be as successful as possible and these quick trainings will guide and provide a few tips to help recognize malicious emails in the future. The trainings are quick interactive videos and completing them will help us with future training assessments.

#### Training Module

Our phishing partner, ProofPoint, curates and hosts the training modules which will be assigned upon when the link is clicked. The training is designed to reinforce and provide real world examples of detecting and reporting phishing. We highly encourage you to complete the training soon after being received as this will help to reinforce and better prepare you to spot phishing attempts in the future. The training modules are short and interactive and will be coming from awareness@securityeducation.com.
 
![Training assignment](/handbook/security/security-assurance/images/GitLabSecurityPhishingTraining.png)


If the training is not completed within 1 week, a reminder will be sent from ProofPoint. If required, the Security Governance team will communicate incomplete assigned training modules to managers for assistance with completion.  Demonstration of completed training supports compliance with the Phishing program and will strengthen our regulatory requirements.

## Simulation Result Outcomes

| Action                                 | Outcome |
| -------------------------------------- | ------- |
| Submitted email via PhishAlarm or directly to phishing@gitlab.com | No further action. |
| Did nothing with the email             | No further action.   |
| Clicked on the link                    | Training will be assigned  |


### Phishing Simulation and Training Metrics

The Security Governance team will initiate and track the quarterly phishing simulation campaign within ProofPoint. Once the campaign has completed, the Security Governance team will provide non-identifying results in the [Phishing Program](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/phishing) project. 

### Additional Resources

* [How to identify a basic phishing attack](https://about.gitlab.com/handbook/security/#how-to-identify-a-basic-phishing-attack)


### Questions and Answers

*I clicked the link in the email, what do I do?*

* Please complete the required training module you have been assigned as soon as possible. Knowing this is a phishing simulated email, please avoid discussing with anyone else or feel compelled to post a screenshot of the email received in Slack as it may skew the results of the phishing exercise.

*I didn't click the link in the email, what do I do?*

* Please forward the email via the ![PhishAlarm button](/handbook/security/security-assurance/images/PhishAlarm.png) or as an attachment to phishing@gitlab.com using the [instructions in the handbook](https://about.gitlab.com/handbook/security/#what-to-do-if-you-suspect-an-email-is-a-phishing-attack). Knowing this is a phishing simulation, please avoid discussing with anyone else or feel compelled to post a screenshot of the email received in Slack as it may skew the results of the phishing exercise.

*I got assigned training without clicking the link in the email, what do I do?*

* Please reach out to Security Governance @sec-governance to report and review the steps that were taken prior to receiving the training to identify if this should be considered a false positive.  There are ways that the link can get triggered even if not directly clicked in the phishing email.  Security Governance can help troubleshoot what might have happened.  

*NOTE* 
* If the link provided in the phishing email is **NOT** clicked, but copy/pasted, that could also trigger the 'click', please refrain from trying to decipher the link.  
* If [Option 3](https://about.gitlab.com/handbook/security/#option-3) is used to report an email, this could also trigger the 'click' as the tracking image could be cached by the ATP and proxy services.

Feel free to complete the assigned training and consider it as taking an extra step to stay secure!

*I use a physical Yubikey for multifactor authentication, why did I still fail the phishing simulation?*

* While a physical Yubikey or other token device used will prevent you from fully being phished, not all GitLab systems support these devices.  As this simulation exercise is for training and awareness, the goal is to test how GitLab team-members respond to these emails.

*I thought the Red Team was conducting the phishing exercises?*

* Correct! The Red Team was conducting our phishing exercises with a tool they built but unfortunately Google began identifying the exercises as malicious and were shutting them down quicker with each attempt.  This caused the phishing exercises to not be beneficial along with no results to work with.

*Why are we using an external vendor?*

* Due to our internally created solution being identified as malicious by Google, we needed to utilize an external solution that would be able to provide a consistent process and reliable results, which resulted in our partnership with ProofPoint.

*Who decides who receives these phishing simulations?*

* All GitLab team members, contractors and others with access to production data will be included in the quarterly campaigns with the exception of any individuals on extended leave at the time the campaign is launched. 

*How often will I receive these?*

* At a minimum, one phishing simulation campaign will take place each fiscal quarter. Prior to the phishing campaign's start, a general notification to the GitLab organization will be posted to the `#whats-happening-at-gitlab` Slack channel. However, for maximum efficacy, the exact content, date, time and team members receiving the email will not be communicated. Campaigns may contain various versions of the simulated email that will be delivered at random times throughout the 1-week campaign. 

*I don't want to be included, how do I remove myself?*

* All GitLab team members have the responsibility to help keep themselves, team members, customers and the company secure. As such, team members can not opt out. 

*Is this an invasion of privacy?*

* The phishing program is covered by the [Employee Privacy Policy](https://about.gitlab.com/handbook/legal/privacy/employee-privacy-policy/).

*Will I be publicly shamed?*

* No, we will never post or create metrics which will associate a team member success or failure with a phishing simulation exercise.  We will generate non-identifying metrics to be shared internally and public-facing.

*I never fall for the phishing simulations received, why am I still receiving these simulation emails?*

* Unfortunately, phishing emails continue to improve in deception and the ability to look genuine.  By receiving phishing simulations your ability to spot the real thing is an invaluable skill to help protect yourself, team members, GitLab, and the customer.

*How can I provide Feedback on my experience?*

* All feedback is welcome and encouraged in [this issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/phishing/-/issues/10).  The only way to continuously improve on our program is via feedback.

### Additional Questions, Comments, Concerns?

Please reach out to the [Security Governance team!](/handbook/security/security-assurance/governance/)
