---
layout: handbook-page-toc
title: "Contributor Success Team - Code Contributor User Journey"
description: "Code Contributor User Journey"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

- - -

## Journey Map

### Current

```mermaid
graph LR
    subgraph Legend
    LA[Marketing]
    LB[Handbook / Docs]
    LC[GitLab]
    LD[Repository Issues]
    end
    subgraph Journey
    subgraph Discovery
    AA[Contributing page]
    AB[Hackathon page]
    AC[Google]
    end
    subgraph Engagement
    BA[Contributing to Development guide]
    BB[Creating a fork]
    BC[Code Contributor program]
    BD[Update the documentation]
    BE[How to open a MR]
    BF[Add Tests if needed]
    BG[Merge Request Coaches]
    BH[Developer documentation]
    BI[Accepting MR Issues]
    BJ[Project specific contribution guide]
    BK[Project specific issues]
    BL[Project repo]
    end
    subgraph Onboarding
    CA[GitLab development environment guide]
    CB[GitLab README]
    CC[Project specific setup]
    CD[Picking out an issue]
    end
    subgraph Contribution
    DA[Open MR]
    DB[Iterate]
    end
    AA --> BA
    AB --> BA
    AB --> BI
    AC --> AA
    AC --> BI
    AC --> BJ
    AC --> BL
    BA --> BB
    BA --> BC
    BA --> BD
    BA --> BE
    BA --> BF
    BA --> BG
    BA --> BI
    BH --> BI
    BI --> BL
    BI --> CB
    BI --> DA
    BJ --> BK
    BJ --> CC
    BK --> CB
    BK --> CD
    BL --> CB
    BL --> CC
    CB --> CA
    CB --> BI
    CB --> BA
    CB -.-> CC
    CC --> CD
    CD --> DA
    DA --> DB
    DB --> DA
    end
    classDef yellow fill:#ff0,stroke:#333,stroke-width:4px;
    classDef green fill:#0f0,stroke:#333,stroke-width:4px;
    classDef orange fill:#fa0,stroke:#333,stroke-width:4px;
    classDef red fill:#f00,stroke:#333,stroke-width:4px;
    class LA,AA,AB,AC yellow;
    class LB,BA,BB,BC,BD,BE,BF,BG,BH,BJ,CC green;
    class LC,BL,CB,CA,DA,DB orange;
    class LD,BI,BK,CD red;
```

### Goal

```mermaid
graph LR
    subgraph Legend
    LA[Marketing]
    LB[Handbook / Docs]
    LC[GitLab]
    LD[Repository Issues]
    end
    subgraph Journey
    subgraph Discovery
    AA[Contributing page]
    AB[Hackathon page]
    AC[Google]
    end
    subgraph Engagement
    BA[Contributing to Development Guide]
    BB[GitLab development environment guide]
    BC[List of projects to contribute to]
    end
    subgraph Onboarding
    CA[Project specific setup]
    CB[Picking out an issue]
    end
    subgraph Contribution
    DA[Open MR]
    DB[Iterate]
    end
    AA --> BA
    AB --> BA
    AC --> BA
    BA --> BB
    BB --> BC
    BA --> BC
    BA --> CA
    BB --> CA
    BC --> CA
    CA --> CB
    CB --> DA
    DA --> DB
    DB --> DA
    end
    classDef yellow fill:#ff0,stroke:#333,stroke-width:4px;
    classDef green fill:#0f0,stroke:#333,stroke-width:4px;
    classDef orange fill:#fa0,stroke:#333,stroke-width:4px;
    classDef red fill:#f00,stroke:#333,stroke-width:4px;
    class LA,AA,AB,AC yellow;
    class LB,BA,BC,CA green;
    class LC,BB,DA,DB orange;
    class LD,CB red;
```

## Top Findings

1. The Contribution guide is overwhelming.
1. Triaging MRs is one of the major pain points. This leads to long review times and frustration.
1. Not all groups/products are properly labeling issues for new contributors.
1. Just a few groups/products are actively engaging contributors throughout their product development process.
1. The majority of 1st-time contributors for the past year never come back for a second one.
1. We don’t attract new long-term/core contributors.

## Detailed Findings

### Discovery

1. The Contributor guide is the main entry point for contributors.
1. There might be some misunderstanding between Contributing to GitLab and GitLab
Contribute (the annual conference).

### Engagement / Identification

1. The contributor guide is designed to help contribute to GitLab overall, without having in mind different groups/products and their development environment (e.g. [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner))
1. It’s overwhelming
    1. There is a lot of information which is not relevant or digestible for contributors.
    1. It has a lot of text.
    1. It is driving contributors to a list of easy issues, to begin with, without additional information about the different projects/groups.
1. The user flow has a lot of exit/drop points.
1. There is an infinite loop between the contributor guide and the GitLab README file (that has the instructions for setting up the GitLab dev environment).

### Onboarding/Dev Environment

1. Users can't easily understand that there is more than one product at GitLab.
1. Different products are written in different programming languages; this means they have different development environments.
1. Products milestones are rarely published, so contributors aren't aware of priorities.
1. The product teams are not properly labeling issues or catering to them for community contributions.
1. There is no consistency across projects' documentation.

### Contribution

1. Long times triaging issues (applying the proper labels).
1. Not clear to who to assign the MRs for review.
1. Getting help is currently working just fine.
1. We have a stable average number of 11 days before a community MR is merged. It's not optimal, but it's acceptable and similar to the community's expectation (1 week).

### Retention

1. We attract a stable number of new contributors per milestone (~50), but our overall contributions are not increased accordingly.
    1. According to sample research, for the past year, the majority of 1st time contributors drop off after their MR is merged.

## Resources

1. [Community MR requests Dashboard](https://gitlab.biterg.io/app/kibana#/dashboard/b2218fd0-bc11-11e8-8aac-ef7fd4d8cbad?_g=(refreshInterval:(pause:!t,value:0),time:(from:now-10y,mode:relative,to:now))&_a=(description:'GitLab%20Merge%20Requests%20panel%20by%20Bitergia',filters:!(('$state':(store:appState),meta:(alias:Bots,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:author_bot,negate:!t,params:(query:!t,type:phrase),type:phrase,value:true),query:(match:(author_bot:(query:!t,type:phrase)))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:author_org_name,negate:!t,params:(query:GitLab,type:phrase),type:phrase,value:GitLab),query:(match:(author_org_name:(query:GitLab,type:phrase))))),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((gridData:(h:8,i:'1',w:24,x:0,y:8),id:'03e16fb0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'1',title:'Merge%20Requests,%20over%20time',type:visualization,version:'6.8.6'),(gridData:(h:16,i:'2',w:24,x:24,y:16),id:c7d1f570-bc0e-11e8-8aac-ef7fd4d8cbad,panelIndex:'2',title:'Merge%20Requests%20by%20Organization,%20over%20time',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:16,i:'3',w:12,x:36,y:0),id:'841039a0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'3',title:Projects,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'4',w:24,x:0,y:48),id:'671622d0-bc11-11e8-8aac-ef7fd4d8cbad',panelIndex:'4',title:Repositories,type:visualization,version:'6.8.6'),(gridData:(h:16,i:'5',w:12,x:24,y:0),id:'4748af70-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'5',title:'Submissions%20by%20Organization',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'6',w:24,x:0,y:24),id:'5760e7a0-bc0f-11e8-8aac-ef7fd4d8cbad',panelIndex:'6',title:Submitters,type:visualization,version:'6.8.6'),(gridData:(h:8,i:'7',w:24,x:0,y:16),id:'1a23fbd0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'7',title:'Submitters,%20over%20time',type:visualization,version:'6.8.6'),(gridData:(h:8,i:'8',w:24,x:0,y:0),id:d00b6fc0-bc0c-11e8-8aac-ef7fd4d8cbad,panelIndex:'8',title:'Merge%20Requests',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:16,i:'9',w:24,x:24,y:32),id:'1be49ac0-bc12-11e8-8aac-ef7fd4d8cbad',panelIndex:'9',title:Organizations,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'10',w:24,x:24,y:48),id:de6c3480-cb22-11e8-8aac-ef7fd4d8cbad,panelIndex:'10',title:Milestones,type:visualization,version:'6.8.6')),query:(language:lucene,query:''),timeRestore:!f,title:'GitLab%20Merge%20Requests',viewMode:view))
1. [Contributors dashboard](https://gitlab.biterg.io/app/kibana#/dashboard/b2218fd0-bc11-11e8-8aac-ef7fd4d8cbad?_g=(refreshInterval:(pause:!t,value:0),time:(from:now-10y,mode:relative,to:now))&_a=(description:'GitLab%20Merge%20Requests%20panel%20by%20Bitergia',filters:!(('$state':(store:appState),meta:(alias:Bots,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:author_bot,negate:!t,params:(query:!t,type:phrase),type:phrase,value:true),query:(match:(author_bot:(query:!t,type:phrase)))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:author_org_name,negate:!t,params:(query:GitLab,type:phrase),type:phrase,value:GitLab),query:(match:(author_org_name:(query:GitLab,type:phrase))))),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((gridData:(h:8,i:'1',w:24,x:0,y:8),id:'03e16fb0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'1',title:'Merge%20Requests,%20over%20time',type:visualization,version:'6.8.6'),(gridData:(h:16,i:'2',w:24,x:24,y:16),id:c7d1f570-bc0e-11e8-8aac-ef7fd4d8cbad,panelIndex:'2',title:'Merge%20Requests%20by%20Organization,%20over%20time',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:16,i:'3',w:12,x:36,y:0),id:'841039a0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'3',title:Projects,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'4',w:24,x:0,y:48),id:'671622d0-bc11-11e8-8aac-ef7fd4d8cbad',panelIndex:'4',title:Repositories,type:visualization,version:'6.8.6'),(gridData:(h:16,i:'5',w:12,x:24,y:0),id:'4748af70-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'5',title:'Submissions%20by%20Organization',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'6',w:24,x:0,y:24),id:'5760e7a0-bc0f-11e8-8aac-ef7fd4d8cbad',panelIndex:'6',title:Submitters,type:visualization,version:'6.8.6'),(gridData:(h:8,i:'7',w:24,x:0,y:16),id:'1a23fbd0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'7',title:'Submitters,%20over%20time',type:visualization,version:'6.8.6'),(gridData:(h:8,i:'8',w:24,x:0,y:0),id:d00b6fc0-bc0c-11e8-8aac-ef7fd4d8cbad,panelIndex:'8',title:'Merge%20Requests',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:16,i:'9',w:24,x:24,y:32),id:'1be49ac0-bc12-11e8-8aac-ef7fd4d8cbad',panelIndex:'9',title:Organizations,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'10',w:24,x:24,y:48),id:de6c3480-cb22-11e8-8aac-ef7fd4d8cbad,panelIndex:'10',title:Milestones,type:visualization,version:'6.8.6')),query:(language:lucene,query:''),timeRestore:!f,title:'GitLab%20Merge%20Requests',viewMode:view))
1. [Google Analytics](https://analytics.google.com/analytics/web/#/report/content-engagement-flow/a37019925w65271535p117457861/_u.date00=20200204&_u.date01=20210202&_r.threshold=50&_r.hlNode=0-0-235771201&_r.steps=8&_r.dimension=analytics.source/)
1. [GitCommunity Dashboard](https://gitlab.biterg.io/app/kibana#/dashboard/80a85e30-615e-11eb-a6f8-03728e7a4c82)
1. [Wider Community Contributions per milestone](https://gitlab.biterg.io/app/kibana#/dashboard/465b66f0-882a-11e9-b37c-9d3431060b53)
1. [GitLab Hackathon Dashboard](https://gitlab.biterg.io/app/kibana#/dashboard/9097a7d0-55bd-11eb-a6f8-03728e7a4c82)
1. [Closed Community MRs over time](https://gitlab.biterg.io/app/kibana#/visualize/edit/1701fec0-6b3b-11e9-8638-c11f0f1aa3fa)
1. [GitLab Community MRs Requests timing](https://gitlab.biterg.io/app/kibana#/dashboard/79c9aaa0-f9b0-11e8-9e44-9175bb6c0550?_g=(refreshInterval:(pause:!t,value:0),time:(from:now-10y,mode:relative,to:now))&_a=(description:'Community%20Merge%20Requests%20Timing%20by%20Bitergia',filters:!(('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:state,negate:!f,params:(query:merged,type:phrase),type:phrase,value:merged),query:(match:(state:(query:merged,type:phrase)))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'4381a740-bc0c-11e8-8aac-ef7fd4d8cbad',key:labels,negate:!f,params:!('Community%20contribution','Community%20Contribution'),type:phrases,value:'Community%20contribution,%20Community%20Contribution'),query:(bool:(minimum_should_match:1,should:!((match_phrase:(labels:'Community%20contribution')),(match_phrase:(labels:'Community%20Contribution'))))))),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((gridData:(h:8,i:'1',w:24,x:0,y:0),id:'6f332cc0-bc15-11e8-8aac-ef7fd4d8cbad',panelIndex:'1',title:Summary,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(legendOpen:!f)),gridData:(h:8,i:'2',w:12,x:12,y:8),id:e1320250-bc1b-11e8-8aac-ef7fd4d8cbad,panelIndex:'2',title:'80%20Percent%20Open%20TIme%20(Days),%20over%20time',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(legendOpen:!f)),gridData:(h:8,i:'3',w:12,x:0,y:8),id:'9f2ef530-bc15-11e8-8aac-ef7fd4d8cbad',panelIndex:'3',title:'Median%20Open%20Time%20(Days),%20over%20time',type:visualization,version:'6.8.6'),(gridData:(h:12,i:'4',w:12,x:24,y:0),id:b69849e0-bc1c-11e8-8aac-ef7fd4d8cbad,panelIndex:'4',title:Status,type:visualization,version:'6.8.6'),(gridData:(h:12,i:'5',w:12,x:36,y:0),id:'4748af70-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'5',title:'Merge%20Requests%20by%20Organization',type:visualization,version:'6.8.6'),(gridData:(h:8,i:'6',w:12,x:0,y:16),id:'03e16fb0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'6',title:'GitLab%20Merge%20Requests,%20over%20time',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(legendOpen:!f)),gridData:(h:8,i:'7',w:12,x:12,y:16),id:'1a23fbd0-bc0e-11e8-8aac-ef7fd4d8cbad',panelIndex:'7',title:'Submitters,%20over%20time',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:12,i:'8',w:24,x:24,y:12),id:dd0cd7c0-bc1d-11e8-8aac-ef7fd4d8cbad,panelIndex:'8',title:Organizations,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'9',w:24,x:0,y:24),id:'5760e7a0-bc0f-11e8-8aac-ef7fd4d8cbad',panelIndex:'9',title:Submitters,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:16,i:'11',w:24,x:0,y:48),id:'671622d0-bc11-11e8-8aac-ef7fd4d8cbad',panelIndex:'11',title:Repositories,type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'12',w:48,x:0,y:88),id:dc184920-bc1e-11e8-8aac-ef7fd4d8cbad,panelIndex:'12',title:'Latest%20Merge%20Request',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'13',w:48,x:0,y:64),id:'47ebe490-bc1f-11e8-8aac-ef7fd4d8cbad',panelIndex:'13',title:'Oldest%20Merge%20Requests',type:visualization,version:'6.8.6'),(embeddableConfig:(vis:(params:(config:(searchKeyword:''),sort:(columnIndex:!n,direction:!n)))),gridData:(h:24,i:'14',w:24,x:24,y:24),id:f68ba5a0-cbe0-11e8-8aac-ef7fd4d8cbad,panelIndex:'14',title:Milestones,type:visualization,version:'6.8.6')),query:(language:lucene,query:''),timeRestore:!t,title:'GitLab%20Community%20Merge%20Requests%20Timing',viewMode:view))
