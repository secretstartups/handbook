---
layout: handbook-page-toc
title: "Controlled Document Procedure"
description: "GitLab deploys control activities through policies and standards that establish what is expected and procedures that put policies and standards into action."
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

GitLab deploys control activities through policies and standards that establish what is expected and procedures that put policies and standards into action. 

The purpose of this procedure is to ensure that there is consistency in developing and maintaining controlled documents at GitLab utilizing a hierarchal approach for managing legal and regulatory requirements.  

There are two types of documentation at GitLab:

1. Controlled Documents: Formal policies, standards and procedures. 
1. Uncontrolled Documents: Informal runbooks, certain handbook pages, guidelines, blog posts, templates, etc.

Everyone at GitLab is welcomed and encouraged to submit an MR to create or suggest changes to controlled documents at any time. 

## Scope

This procedure applies to all [controlled documents](https://about.gitlab.com/handbook/security/controlled-document-program.html#list-of-controlled-documents) developed in support of GitLab's statutory, regulatory and contractual requirements. Uncontrolled documents are dynamic in nature and not in scope of this procedure.


## Roles & Responsibilities:

| Role  | Responsibility | 
|-----------|-----------|
| Security Compliance Team | Responsible for implementing and maintaining Security Policies and oversight of supporting standards and procedures as part of ongoing continuous control monitoring | 
| Security Governance Team | Responsible for conducting annual controlled documents review
| Security Assurance Management (Code Owners) | Responsible for approving changes to this procedure |
| Control Owners | Responsible for defining and implementing procedures to support Security policies and standards | 

## Procedure

### Definitions by Hierarchy

![CD Pyramid](/handbook/security/security-assurance/images/CDPyramidv2.png)

Footnote: <sub>https://docs.google.com/presentation/d/125LxBkIx0gj42Ooky8hcx9HY2GEjfomDRdR_o-qbOpc/edit#slide=id.g1234fd827e0_0_0</sub>

- Policy: A policy is a high-level statement of intent and defines GitLab's goals, objectives and culture. Statutory, regulatory, or contractual obligations are commonly the root cause for a policy’s existence, as such policies are designed to be centrally managed at the organizational level (e.g. Security Compliance Team or Legal & Ethics Compliance Team). 
- Standard: Standards are mandatory actions or rules that give formal policies support and direction by providing more specific details that enable policies to be implemented. Standards may take the form of technical diagrams. 
- Procedure: Procedures are detailed instructions to achieve a given policy and, if applicable, supporting standard and provid step-by-step instructions to follow to implement policies. Procedures are decentralized and managed by process/control owners where a security control is translated into a business process.

### Creation
At minimum, controlled documents should cover the following key topic areas:

- Purpose: Overview of why the controlled document is being implemented. 
- Scope: What does the controlled document apply to.
- Roles & Responsibilities: Who is responsible for doing what. This should refer to departments or roles instead of specific individuals. 
- Policy Statements, Standards or Procedure: The details.
- Exceptions: Define how exceptions to the controlled document will be tracked.
- References:  Procedure documents should map back to a governing policy or standard, and may relate to one or more procedures or other uncontrolled documentation. 

### Publishing
Creation of, or changes to, controlled documents must be approved by management, or a formally designated representative, of the owning department as defined in the Code Owners file prior to publishing. 

Most controlled documents will be published to our publicly facing [handbook](https://about.gitlab.com/handbook/), however if there is [non public data](/handbook/security/data-classification-standard.html) included in the documentation it should be published via an *internal facing only* mechanism, e.g. an internal GitLab project or internal only handbook page. Controlled documents should be accessible to all internal team members. 

### Review
Controlled documents are required to be reviewed and approved on a minimum of an annual basis and may be updated ad-hoc as required by business operations. Ad-hoc changes do not need to be reviewed and approved, but can only be merged by a code owner of the controlled document.

## Exceptions
Exceptions to controlled documents must be tracked and approved by the controlled document approver(s) via an auditable format. Exception process should be defined in each controlled document.  

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References
* Parent Policy: [Information Security Policy](/handbook/security/)
* [SCF Compliance Controls](/handbook/security/security-assurance/security-compliance/guidance/compliance.html)
* [Data Classifiation Standard](/handbook/security/data-classification-standard.html)
* [Controlled Documents Program](/handbook/security/controlled-document-program.html)
- [Active listing of controlled documents](/handbook/security/controlled-document-program.html#list-of-controlled-documents)
