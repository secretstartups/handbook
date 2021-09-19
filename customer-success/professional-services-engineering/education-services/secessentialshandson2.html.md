---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 2"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 2
{:.no_toc}

## LAB 2- Configure and Enable Dependency Scanning, and Interact with Vulnerabilities

### Configure Dependency Scanning 
1. Add the following to your `.gitlab-ci.yml`:
```
    include:
        - template: Dependency-Scanning.gitlab-ci.yml
```
2. The results will be saved as a dependency scanning report artifact. [See example.](https://docs.gitlab.com/ee/ci/yaml/index.html#artifactsreportsdependency_scanning)

### Enable Dependency Scanning via an automatic merge request
1. In your project, navigate to **Security & Compliance > Configuration**.
1. In the Dependency Scanning row, select **Configure via Merge Request**.
1. This automatically creates a merge request with the changes necessary to enable Dependency Scanning that you can review and merge to complete the configuration.

### Use the Security Dashboard and Interact with Vulnerabilities
**You will not be able to view the dashboard until your .gitlab-ci.yml file has been merged to the master and the pipeline has finished.**
1. Validate your pipeline has completed and passed
1. Navigate to **Security & Compliance** in the left menu pane  
1. Click on the **Vulnerability Report** tab -> Click a critical vulnerability in the report field.
1. Review the vulnerability information and click the **status** button. In the dropdown choose **Dismiss**
1. Click on the **Vulnerability Report** tab -> Click a critical vulnerability in the report field.
1. Review the vulnerability information and click the **status** button. In the dropdown choose **Confirm**
1. On the critical vulnerability report, click the **Create issue** button.  Assign the ticket to yourself and **submit issue**.
1. Review the Issue and the solution. Review the link back to the vulnerability report.
1. On the left-hand panel, click the **Security and Compliance** section, then the **Vulnerability Report** tab. Click a critical vulnerability in the report field.
1. Review the vulnerability information and click the **status** button. In the dropdown choose **Resolved**
1. Review the different information displayed, the status, severity, and scanner types shown in the Dashboard. Set the **status** dropdown to **All**
1. Once you have reviewed all of the information, click on the other reports that appears.
1. Click the **Configure** button in the Manage column to view the specific configuration options available for your SAST Scanner. Once you have reviewed the options available, you can close out of this section.

### Review a Dependency Scanning Report Artifact
1. Click on the **CI/CD** button on the Left menu.  
2. On the pipeline click the artifacts dropdown menu.  
3. Select various reports and review. 


### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

