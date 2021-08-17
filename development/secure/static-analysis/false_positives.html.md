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
| [brakeman](https://gitlab.com/gitlab-org/security-products/analyzers/brakeman), [flawfinder](https://gitlab.com/gitlab-org/security-products/analyzers/flawfinder), [php-security-audit](https://gitlab.com/gitlab-org/security-products/analyzers/phpcs-security-audit),  [node-js-scan](https://gitlab.com/gitlab-org/security-products/analyzers/nodejs-scan) |  gosec  | 78     | G204   | only variables to which constant values are assigned are used as parameters; variables are sanitized before used as parameters  |
| [eslint](https://gitlab.com/gitlab-org/security-products/analyzers/phpcs-security-audit), [kubesec](https://gitlab.com/gitlab-org/security-products/analyzers/kubesec)  |  gosec  | 703     | G104   | errors are handled implicitly by means of fallback default values; error cases are not relevant/can be ignored; returned error from an anonymous function |
| [kubesec](https://gitlab.com/gitlab-org/security-products/analyzers/kubesec)  |  gosec  | 22     | G104   | File content is checked to identify file type returning a boolean value; filepath is already safely generated before being used |

