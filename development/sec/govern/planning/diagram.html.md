---
layout: handbook-page-toc
title: Govern Product Development Flow
---

# On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Product Development Flow Diagram

This flow is a visual representation of the [Product Development
Flow](/handbook/product-development-flow/#validation-phase-1-validation-backlog)
handbook page. It does not include many of the detailed steps and interactions occurring within
phases nor the transitions of various workflows labels. It's also worth noting that, while Product
Management, UX and Engineering have ownership of some phases, all teams work collaboratively
throughout the entire process.

**Legend**

Box colours represent the type of issue:

```mermaid
%% editing these is a lot easier if you use the live editor: https://mermaid-js.github.io/mermaid-live-editor/

graph TD
  Idea[Idea/problem<br>Issue]
  Feature[Feature Epic]
  Release[Release Post]

  classDef idea fill:#ffffff,stroke:#19957C;
  class Idea idea

  classDef feature fill:#ffffff,stroke:#0C7CBA;
  class Feature feature

  classDef release fill:#ffffff,stroke:#E58900;
  class Release release
```

Box shapes represents whose responsibility it is to get it done:

```mermaid
graph TD
  P[Product Management]
  U(UX)
  E([Engineering])

  classDef plain fill:#ffffff,stroke:#000000;
  class P,U,E plain
```

And issue labels look like this:

```mermaid
graph TD
  Label>"~issue label"]

  classDef label fill:#ffffff,stroke:#606060;
  class Label label
```

### Validation

#### Validation Backlog

```mermaid
graph LR
  A[Create idea/problem<br>issue needing validation] --> B{Needs<br>problem<br>validation}
  B -- Yes --> C[Proceed to:<br>Problem Validation]
  B -- No --> D[Proceed to:<br>Design]
  L>"~workflow::validation backlog"] --- A

  classDef idea fill:#ffffff,stroke:#19957C;
  class A idea

  classDef plain fill:#ffffff,stroke:#000000;
  class B,C,D plain

  classDef label fill:#ffffff,stroke:#606060;
  class L label
```


#### Problem Validation

```mermaid
graph TB
  2A[Create<br>Opportunity<br>Canvas] --> 2B
  2B[Attach Canvas to<br>Issue's Design tab] --> 2D
  2L>"~workflow::problem validation"] --- 2B
  2C[Rework Canvas] --> 2B
  2D("Research & <br>Interviews (with PM)") --> 2E
  2E["Finalize Canvas;<br>submit for review"] --> 2F
  2F{Approved?}
  2F -- No --> 2C
  2F -- Yes --> 2G[Proceed to:<br>Design]

  classDef idea fill:#ffffff,stroke:#19957C;
  class 2B idea

  classDef plain fill:#ffffff,stroke:#000000;
  class 2A,2C,2D,2E,2F,2G plain

  classDef label fill:#ffffff,stroke:#606060;
  class 2L label
```


#### Design

We use Epics to contain all issues related to a Solution so that when an Epic is closed, it
indicates the Solution is live and available. Key points about Epics:

1. A Feature Epic always exists. At the early stage of Design we can't tell whether a solution will
   need multiple iterations to deliver, so we err on the side of caution and always create an Epic.
1. The Epic always has a "Design Issue", even if design artefacts are not needed. This is so we have
   an issue where we can discuss requirements that will then be copied to the Epic once agreed.
1. Once an Epic enters the [Develop](#develop--test) phase, we do not increase its scope. Small
   changes to adjust direction due to new information are fine (rule of thumb: up to 10% change).
1. Epics have a Due Date. If your Epic can't have a due date, consider using a Label instead.


```mermaid
graph TB
  L>"~workflow::design"]
  A1[Feature Epic]
  A(Design Issue<br>Engage UX)
  B(Story mapping,<br>solution designs)
  C([Early Engineering<br>feedback])
  D{High<br> Confidence?}
  F[Proceed to:<br>Build, Plan]
  G[Proceed to:<br>Solution Validation]

  L --- A1
  A1 --- A
  A --> B
  B --> C --> B
  B --> D
  D -- Yes --> F
  D -- No --> G


  classDef feature fill:#ffffff,stroke:#0C7CBA;
  class A1 feature

  classDef idea fill:#ffffff,stroke:#19957C;
  class A idea

  classDef plain fill:#ffffff,stroke:#000000;
  class B,C,D,E,F,G plain

  classDef label fill:#ffffff,stroke:#606060;
  class L label
```

#### Solution Validation

```mermaid
graph TB
  L>"~workflow::solution validation"]
  A(Completed Design)
  B{Validated<br>by Customer?}
  C[Proceed to:<br>Build, Plan]
  D[Return to:<br>Design]

  L --- A
  A --> B
  B -- Yes --> C
  B -- No --> D

  classDef idea fill:#ffffff,stroke:#19957C;
  class A idea

  classDef plain fill:#ffffff,stroke:#000000;
  class B,C,D plain

  classDef label fill:#ffffff,stroke:#606060;
  class L label
```


### Build

#### Plan

The Feature Epic proceeds to `~"workflow::planning breakdown"` along with the Design Issue. Here,
the Design Issue goes through a final review with Product Management and Engineering before one or
more Implementation Issues are created.

Before moving to the next phase, the Design Issue is closed and the resulting final designs and
requirements are copied to the Feature Epic, which becomes a clear, without distractions,
[SSOT](/handbook/values/#single-source-of-truth) for the solution. The closed Design Issue serves
as a historical record of how we reached decisions.


```mermaid
graph TD

  %% build p1
  L1>"~workflow::planning breakdown"]
  L2>"~workflow::scheduling"]
  A0[Feature Epic]
  A1(Design Issue)
  A2[Provide input<br>and design<br>adjustments]
  A3([Provide input<br>on technical<br>feasibility, sizing])
  A4(["Optionally Creates<br>MVC Epic(s)"])
  A4a(["Creates<br>Implementation Issue(s)"])
  A5["Feature Epic<br>(final design)"]
  A6("Design Issue<br>(closed)")
  A7(["Implementation Issue(s)<br>(refined)"])
  A8["Assign Milestone(s)"]
  A9[Proceed to:<br>Build, Develop]
  L1 --- A0
  L2 --- A9
  A0 --- A1
  A1 --> A5
  A1 --> A2 --> A1
  A2 --> A3 --> A2
  A3 --> A4 --> A4a --> A5 --- A6
  A5 --> A7 --> A9
  A7 --- A8

  classDef idea fill:#ffffff,stroke:#19957C;
  class A1,A4b,A6,A7 idea

  classDef feature fill:#ffffff,stroke:#0C7CBA;
  class A0,A4,A4a,A5,A9,A9b feature

  classDef plain fill:#ffffff,stroke:#000000;
  class A2,A3,A8,A10 plain

  classDef label fill:#ffffff,stroke:#606060;
  class L1,L2 label
```

**Feature Epic**

The Feature Epic serves as an organizational entity as well as single source of overall
requirements from the original problem issue.

The Epic should have enough information to convey the overall intended value realized after all
child Implementation Issues are delivered. Final requirements and design assets, if available, are
copied here from the Design Issue for reference; at this point the Design Issue is closed. The Epic
is closed when all Issues are delivered.

**MVC Feature Epics**
When a Feature Epic and it's associated Design Issue is large enough to break into mulitple MVCs, multiple MVC Feature Epics will be created.

Feature Epics are their own MVCs in that they are independently-releasable slices of value. Each epic contains its own criteria for delivery, including any implementation details and links to relevant design assets for just this MVC.

**Implementation Issues**

Implementation issues allow each Feature Epic to be broken into small, discrete tasks that can move independently through the build workflow steps. 
Whenever possible, Implementation Issues should also be independently-releasable and provide value to the customer. 
When they have to be grouped with other Implementatation Issues, a feature branch should be created to merge the dependant pieces of work together prior to merging into the default branch.  

**Structure of a Singular MVC Feature**
```mermaid
graph LR;
Feature_Epic[Feature Epic]-->Design_Issue(Design Issue);

Feature_Epic[Feature Epic]-->FE1_Implementation_Issue([FE Implementation Issue]);
Feature_Epic[Feature Epic]-->BE1_Implementation_Issue([BE Implementation Issue]);
Feature_Epic[Feature Epic]-->BE2_Implementation_Issue([BE Implementation Issue #2]);

classDef feature fill:#ffffff,stroke:#0C7CBA;
class Feature_Epic,MVC1_Epic,MVC2_Epic feature
classDef idea fill:#ffffff,stroke:#19957C;
class Design_Issue,FE1_Implementation_Issue,BE1_Implementation_Issue,BE2_Implementation_Issue idea
```

**Structure of a Multiple MVC Feature**
```mermaid
graph LR;
Feature_Epic[Feature Epic]-->Design_Issue(Design Issue);
Feature_Epic-->MVC1_Epic[MVC1 Epic];
Feature_Epic-->MVC2_Epic[MVC2 Epic];

MVC1_Epic-->MVC1_FE1_Implementation_Issue([FE Implementation Issue]);
MVC1_Epic-->MVC1_BE1_Implementation_Issue([BE Implementation Issue]);

MVC2_Epic-->MVC2_FE1_Implementation_Issue([FE Implementation Issue]);
MVC2_Epic-->MVC2_BE1_Implementation_Issue([BE Implementation Issue]);
MVC2_Epic-->MVC2_BE2_Implementation_Issue([BE Implementation Issue #2]);

classDef feature fill:#ffffff,stroke:#0C7CBA;
class Feature_Epic,MVC1_Epic,MVC2_Epic feature
classDef idea fill:#ffffff,stroke:#19957C;
class Design_Issue,MVC1_FE1_Implementation_Issue,MVC1_BE1_Implementation_Issue,MVC2_FE1_Implementation_Issue,MVC2_BE1_Implementation_Issue,MVC2_BE2_Implementation_Issue idea
```

The Engineering Manager is responsible for ensuring these are created, refined and contain
weights; the `~"workflow::scheduling"` label is then applied to indicate to the Product Manager
that an Issue is ready for scheduling by being assigned a Milestone.

Once an Implementation Issue has a weigth and a Milestone, it receives the `~"workflow::ready for
development"` label.


#### Develop & Test

Issues that have the `~"type::feature"` and `~Deliverable` labels require a [Release
Post](/handbook/product/product-processes/#communication#release-posts) to be ready for publishing along with the
corresponding feature. The schedule to create and review a Release Post is naturally challenging
so, to allow Product Managers to work in parallel, Engineering should add a Documentation stub
early in the [draft
MR](https://docs.gitlab.com/ee/user/project/merge_requests/drafts.html) so
that the final hyperlink to the documentation is available well before the end of the iteration.

```mermaid
graph TD
  L1>"~workflow::ready for development"]
  L2>"~workflow::in dev"]
  L3>"~workflow::in review"]
  L4>"~workflow::in review"]
  L5>"~workflow::verification"]
  P1([Commit to work in<br>Milestone, assign<br>Deliverable, Strech<br>labels])
  P2[Review Milestone<br>commitments,<br>rebalance as<br>necessary]
  P3(Demo Feedback)
  P4[Demo Feedback]
  P5[Proceed to:<br>Build, Launch]
  R1["Create Release<br>Post MR"]
  F1([Start work])
  F2([Complete work,<br>Demo])
  F3([Review work])
  F4([Verify work])
  L1 --- P1
  L2 --- F1
  L3 --- F2
  L4 --- F3
  L5 --- F4
  P1 --> R1
  P1 --> P2 --> F1 --> F2 --> F3 --> F4
  F2 --> P3 --> P4
  P4 --> P3 --> F2
  F4 --> P5

  classDef feature fill:#ffffff,stroke:#0C7CBA;
  class F1,F2,F3,F4 feature

  classDef plain fill:#ffffff,stroke:#000000;
  class P1,P2,P3,P4,P5 plain

  classDef label fill:#ffffff,stroke:#606060;
  class L1,L2,L3,L4,L5 label

  classDef release fill:#ffffff,stroke:#E58900;
  class R1 release
```


#### Launch

```mermaid
graph TB
  4A["(Re)validate<br>feature works<br>for all users"]
  4B([Deploy to<br>Production]) --> 4C([Merge Release<br>Post MR])
  4L>"~workflow:production"] --- 4B
  A["Close<br>Feature Epic"]

  4A --> 4B --> 4A
  4C --- A

  classDef plain fill:#ffffff,stroke:#000000;
  class 4A plain

  classDef label fill:#ffffff,stroke:#606060;
  class 4L label

  classDef feature fill:#ffffff,stroke:#0C7CBA;
  class A,4B feature

  classDef release fill:#ffffff,stroke:#E58900;
  class 4C release
```
