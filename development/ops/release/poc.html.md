---
layout: handbook-page-toc
title: "Creating a POC"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### When is a POC needed?

If you have no idea where to begin the development due to lack of knowledge on the context or
you're less confident on the current technical proposal,
it might be better to work on Proof-of-Concept MR (PoC or Prototype) at first.
This gives you more insights on the current implementation details and potential required changes.

This step removes a lot of "if"s from your assumptions. When you're making a
technical proposal, often you don't have enough time to investigate the actual
implementation details. In such case, you're assuming like "Probably, this feature works
like ..." or "Probably, this feature and that feature are connected like ...", which
leaves some probability in your development plan, and if it turned out a wrong assumption, you
may need to rethink the whole approach, even though you're at the middle of development cycle.
PoC step de-risks such a turnaround by cross-checking the technical proposal with
domain/performance/security experts and UX/PM.

### Here is how to work on PoC step:

- Create a new MR with a title started from "PoC:". Explain the technical proposal
  in the MR description, that you think it's the best.
- Try to implement the feature in the merge request. Frontend and bakcend engineers
  can work on the same branch.
- If it takes too long to make the feature actually works on your local development machine,
  your technical proposal might need to be reconsidered. You can seek the other viable approaches
  by hearing from domain experts or the other developers.
- If you see technical difficulties that seems impossible to be solved in the same milestone,
  you should raise a concern that there is a blocker thus we might
  not be able to finish the feature by the due date.
- If the change size is too large (e.g. you had to modify over 1000-1500 lines without tests),
  you should raise a concern that the issue is too large to ship within one milestone,
  and you can make a suggestion that what can be done in the release and what can be done
  in the next milestone (i.e. issue split).
- In the PoC review, you should ask domain/performance/security experts or the other engineers who are familer on the context
  to review the technical approach and actual code. This is to ensure that there are no big red flags on the proposed solution.
- In the PoC review, you should ask PM and UX to review the feature's behavior.
  This is to ensure that the feature is correctly implemented and orthogonal to our problem to solve.
- You don't need to split MRs. It can be done later.
- You don't need to write neither tests nor documentation. It can be done later.
- You don't need to fix failed pipelines. You can fix the broken tests later. (Although, it might have some useful information)
- You don't need to write well-organized code. Refactoring can be done later.
- The PoC MR is not for merge, however, you can copy and paste the changes into the actual MRs, and poish later.
- Definition of done of PoC step is collecting approvals from PM, UX, domain/performance/security experts.
- Once it's done, you can estimate the number of MRs. For example, if the change size is 1000,
  you can split it to 5 MRs with 200 LoC. As you add tests in the actual development,
  the finial change size per MR would be doubled.
- Once it's done, you can close the PoC MR.

Technically, if you've done a PoC step, there is no need to ask for additional reviews
in actual MRs as long as you don't change the feature behavior. You can simply
focus on general engineering review or documentation review, only.
For example, improving code quality, refactoring code, writing tests, writing documents, etc.

Here are the examples of PoC step. [Example 1](https://gitlab.com/gitlab-org/gitlab/merge_requests/16276),
[Example 2](https://gitlab.com/gitlab-org/gitlab/merge_requests/18115)
