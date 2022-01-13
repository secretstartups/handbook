---
layout: handbook-page-toc
title: "Coupa End Users Quick Guide"
description: "Coupa End Users Quick Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Coupa End Users Quick Guide Flowchart

```mermaid
graph LR
  Aid1([Requestor completes <br> request form in Coupa]):::classA --> Bid1([Is Supplier<br> in Coupa?]):::classB
  Bid1([Is Supplier<br> in Coupa?]):::classB --> Cid1([YES<br> Complete request form]):::classC
  Bid1([Is Supplier<br> in Coupa?]):::classB --> Eid1([NO<br> Complete New Supplier Request form]):::classC
  Eid1([NO<br> Complete New Supplier Request form]):::classC --> Fid1([Vendor Onboarding Process<br> requires Procurement approval<br> and Supplier completion of Coupa registration]):::classE
 
click Aid1 "/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-create-a-requisition/"
click Did1 "/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-create-a-requisition/"
click Eid1 "/handbook/business-technology/enterprise-applications/guides/coupa-guide/#how-to-request-a-new-supplier/"

classDef classA fill:#dcf3f5, stroke:#20757d
classDef classB fill:#f7dcf1, stroke:#521144
classDef classC fill:#D6EAF8, stroke:#21618C
