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
    L[EdCast - GitLab Learn]
    N[ADP]
    O[Lumity]
    P[Compensation Calculator]

    A --> P 
    linkStyle 0 stroke-width:2px,fill:none,stroke:green;
    A <--> K
    linkStyle 1 stroke-width:2px,fill:none,stroke:black;

    B --> N
    linkStyle 2 stroke-width:2px,fill:none,stroke:black;
    B --> O
    linkStyle 3 stroke-width:2px,fill:none,stroke:black;
    A --> B
    linkStyle 4 stroke-width:2px,fill:none,stroke:blue;
    B --> C
    linkStyle 5 stroke-width:2px,fill:none,stroke:blue;
    B --> D
    linkStyle 6 stroke-width:2px,fill:none,stroke:red;
    B --> F
    linkStyle 7 stroke-width:2px,fill:none,stroke:red;
    B --> G
    linkStyle 8 stroke-width:2px,fill:none,stroke:black;
    B --> H
    linkStyle 9 stroke-width:2px,fill:none,stroke:black;
    B <--> I
    linkStyle 10 stroke-width:2px,fill:none,stroke:blue;
    B <--> J
    linkStyle 11 stroke-width:2px,fill:none,stroke:blue;

    E --> B
    linkStyle 12 stroke-width:2px,fill:none,stroke:blue;
    
    B --> L

```
