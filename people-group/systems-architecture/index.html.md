---
layout: handbook-page-toc
title: "People Group Systems Architecture"
description: "Information about GitLab's People Group systems and how they are all linked together."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview
On this page you can find an overview of all the integrations that go into and out of our HR systems. We opted for a mermaid chart so others can easily edit this graph.

```mermaid
flowchart TD
    A[Greenhouse]
    B[BambooHR]
    C[GitLab]
    D[Modern Health]
    E[PTO by Roots]
    F[LawLogix]
    G[Okta]
    H[Culture Amp]
    I[Assessment Tool]
    J[Nominator Bot]
    K[Guide]
    L[Glassdoor]
    M[HelloSign]

    A <--> K
    A -->|Custom Integration| B
    B --> |Custom Integration| C
    B --> |Custom Integration| D
    B --> |Custom Integration| F
    B --> G
    B --> H
    B <--> I
    B <--> J
  

    E --> B
    E --> |Custom Integration| B
```
