---
layout: handbook-page-toc
title: "Reproducible Vulnerabilities"
description: "Learn about GitLab, its security processes, and its historical security vulnerabilities"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Introduction

GitLab is [transparent about the security bugs it has fixed](https://about.gitlab.com/blog/2022/02/17/how-gitlab-handles-security-bugs/). This transparency creates opportunities for learning, upskilling, and breaking into the InfoSec industry.

  - Anyone can learn how to identify and/or fix security issues in a real product.
  - AppSec job candidates and new team members get insight into the bugs we face, and our processes.

The reproducible vulnerabilities are structured with expandable hint sections so that you can adapt the content to your desired challenge level. We want it to be approachable to anyone.

If this sort of thing interests you, we encourage you to [check for open roles in our Security Team](https://about.gitlab.com/jobs/) and to [participate in our Bug Bounty program on HackerOne](https://hackerone.com/gitlab) (it pays real money!).

## Important Information & FAQ

### Warning

Installing software with known vulnerabilities carries inherent risk. Do not allow untrusted connections. Ideally run vulnerable instances locally or in a cloud environment allow-listed to your home IP only. Remove your practice instances when you have finished with them.

### Won't this page help attackers?

That is not the intent of this page. The intent of this page is to educate both team members and those in the community who are interested in learning about security.

GitLab's disclosure policy is to make patched vulnerabilities public after 30 days. See our [process for disclosing security issues](https://about.gitlab.com/handbook/security/#process-for-disclosing-security-issues). These disclosed issues include steps to reproduce, often include videos or screenshots, and links to the code that patches the issue. 

Disclosed vulnerabilities, including those listed here, are already publicly accessible [in our issue tracker](https://gitlab.com/groups/gitlab-org/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=bug%3A%3Avulnerability). This page will never give more assistance or more detail than already exists in those public issues.

### What if I find something odd?

If you discover a security issue that still affects current versions of GitLab, for example an incomplete fix, please follow the steps in our [Responsible Disclosure Policy](https://about.gitlab.com/security/disclosure/).


## Reproducible Vulnerabilities

### Stored XSS in 15.0

In GitLab 15.0 a malicious user could create a stored XSS payload. See if you can figure out how.

#### Installation

1. Follow <https://docs.gitlab.com/ee/install/docker.html> to install a Docker version of GitLab. Depending on your setup, the command will look something like:

```shell
sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 8929:80 --publish 8922:22 \
  --name gitlab15.0.0 \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ee:15.0.0-ee.0
```

After installation is complete you can get the `root` Administrator user password with `docker exec -it gitlab15.0.0 grep 'Password:' /etc/gitlab/initial_root_password`.

1. Register a user to be the attacker
1. Sign in as the Administrator and approve the new user. Sign out.
1. Sign in as the attacker
1. Good hunting!

#### Bug hunting

<details>
  <summary markdown="span">Hint 1 - Where to start looking</summary>

Cross-Site Scripting, or XSS, is an attack where attacker-defined javascript is injected into a page the victim is browsing. This can let an attacker impersonate a victim and click on things, submit forms, view data, watch what is typed, and more.

This XSS vulnerability existed in our CRM feature.

> With customer relations management (CRM) you can create a record of contacts (individuals) and organizations (companies) and relate them to issues.

<https://docs.gitlab.com/ee/user/crm/>

</details>

<details>
  <summary markdown="span">Hint 2</summary>

  One or more of the customer contact fields was susceptible to stored XSS.

</details>

<details>
  <summary markdown="span">Hint 3</summary>

  Instead of giving a contact a real name, put some javascript in there. Can you find anywhere that fails to properly escape the javascript?
</details>


<details>
  <summary markdown="span">Hint 4</summary>

  The contact fields pop up as previews in Issue description and comments when you use the `/add_contacts` quick action.
</details>


<details>
  <summary markdown="span">Just tell me how</summary>

Follow the steps to reproduce written by [cryptopone](https://hackerone.com/cryptopone) on our GitLab Issue: <https://gitlab.com/gitlab-org/gitlab/-/issues/363293>

</details>

<details>
  <summary markdown="span">Take it further</summary>

Once you've got a stored XSS payload executing, what can you can do?

Can you elevate your privileges to an administrator, if the victim of your XSS is an administrator?

</details>

#### Vulnerability Details

<details>
  <summary markdown="span">Click to expand</summary>

> An issue has been discovered in GitLab affecting all versions starting from 15.0 before 15.0.1. Missing validation of input used in quick actions allowed an attacker to exploit XSS by injecting HTML in contact details. This is a high severity issue (`CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:H/A:N`, 8.7). It is now mitigated in the latest release and is assigned [CVE-2022-1948](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-1948).
>
> Thanks [cryptopone](https://hackerone.com/cryptopone) for reporting this vulnerability through our HackerOne bug bounty program.

</details>

#### Remediation

Once you've reproduced the bug, have a go at fixing it locally.

Done that? Now compare your proposed change to our patch(es).

<details>
  <summary markdown="span">The fix</summary>

We took multiple steps to holistically address this vulnerability:

- We escaped the first and last name in the following patch: <https://gitlab.com/gitlab-org/gitlab/-/commit/e61e9b9434e2198c4c1d5cf6b4531eb4323c3575>
- We made AppSec required approvers of subsequent changes to the affected files in <https://gitlab.com/gitlab-org/gitlab/-/merge_requests/88419>
- We added SemGrep rules to detect and comment on MRs which might introduce XSS with <https://gitlab.com/gitlab-com/gl-security/appsec/sast-custom-rules/-/blob/main/appsec-pings/rules.yml#L65-84>

</details>

#### Links


- GitLab Issue: <https://gitlab.com/gitlab-org/gitlab/-/issues/363293>
- Patch: <https://gitlab.com/gitlab-org/gitlab/-/commit/e61e9b9434e2198c4c1d5cf6b4531eb4323c3575>
- Release Post: <https://about.gitlab.com/releases/2022/06/01/critical-security-release-gitlab-15-0-1-released>
- CVSS and Bounty: [CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:H/A:N](https://gitlab-com.gitlab.io/gl-security/appsec/cvss-calculator/#vector=CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:H/A:N&range=new) (8.7 High / $13,950.00)
- CVE: <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-1948>
- Learn more about XSS:
  + <https://owasp.org/www-community/attacks/xss/>
  + <https://portswigger.net/web-security/cross-site-scripting>


<!-- Additional reproducible vulnerabilities go above this line //-->

## Contributing

Contributions must only include information that is already publicly available.
{: .alert .alert-danger}

Everyone can contribute to this page - that includes you! You can start by clicking "Open in Web IDE" in the sidebar on the right.

First, find an interesting publicly disclosed vulnerability by looking at our [public and closed vulnerability issue list](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=bug%3A%3Avulnerability&first_page_size=20) or our [security release blog posts](https://about.gitlab.com/releases/categories/releases/). Choose a vulnerability that was fixed in any release _prior_ to the latest security release.

Open a Merge Request to this page, mention `@gitlab-com/gl-security/appsec`. It should include:

- A title and non-revealing summary of the vulnerability
-  Steps to install the vulnerable version
  + Ideally <https://docs.gitlab.com/ee/install/docker.html#install-gitlab-using-docker-engine> with a specific version number
  + More complex issues might require a specific installation method, like the Omnibus Linux package.
- A series of progressively revealing hints, so people can try to hunt for the bug themselves but get help if needed. (Remember GitLab is a big product!).
- A link to the GitLab issue, for those who want to follow the original HackerOne report's steps to reproduce.
- A link to the MR(s) that fixed it.

Here's a template you can use:

```markdown
### `Short title goes here`

On `Free/Premium/Ultimate` installations before `X.Y.Z`, a malicious user could `attack type`. See if you can figure out how.

#### Installation

<!--  Steps to install a vulnerable version //-->

#### Bug hunting

<details>
<summary markdown="span">Hint 1</summary>
<!--  Something that gets people looking in the right place //-->
</details>

<details>
<summary markdown="span">Hint 2</summary>
<!--  Another hint. Add as many hints as you want, using already public data. //-->
</details>

#### Vulnerability Details

<details>
<summary markdown="span">Click to expand</summary>

<!--  Paste the text from the security release post. Adapt if needed. //-->

</details>

#### Remediation

Once you've reproduced the bug, have a go at fixing it locally.

Then compare your proposed change to our patch.

<details>
<summary markdown="span">The fix</summary>

<!--  Link to the patch, with optional description //-->

</details>

#### Links

<!--  Links go here //-->

```
