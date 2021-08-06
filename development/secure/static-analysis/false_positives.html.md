---
layout: handbook-page-toc
title: "Static Analysis Group Defined False Positives"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Static Analysis Group Defined False Positives

The table below lists different rule ids and situations in which they can be considered as false positives. The column *Source Project* contains a reference to the project for which the FP finding was produced; column *Origin* refers to the analyzer that produced the FP; columns *CWE* and *ID* show the reported CWE ID and the native vulnerability ID that is used by the analyzer to identify a vulnerability, respectively. The column *False Positive Reason* details why the reported finding can be considered as a false positive.

| Source Project | Origin  | CWE    | ID      | False Positive Reason   |
| ---------- | ------- | ------ | ------- | ----------------------- |
| [brakeman](https://gitlab.com/gitlab-org/security-products/analyzers/brakeman), [flawfinder](https://gitlab.com/gitlab-org/security-products/analyzers/flawfinder)  |  gosec  | 78     | G204   | only variables to which constant values are assigned are used as parameters; variables are sanitized before used as parameters  |
