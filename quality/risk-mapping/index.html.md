---
layout: handbook-page-toc
title: "Risk Mapping"
description: ""
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Quality Engineering department helps facilitate the risk mapping process.
This requires the participation of Product Management, Development, UX, and the Quality team to develop a strategic approach to risk and mitigation planning.

### Goals

Utilise the Risk Map as a tool to:
- Understand the risks the counterpart team faces
- Increase transparency on mitigation plans
- Effectively allocate limited resources
- Collaborate strategically in improving Quality

### General Risk Map

#### Map key

* Impact - what happens if the risk is not mitigated or eliminated
* Impact level - Rate 1 (LOW) to 5 (HIGH)
* Probability - Rate 1 (LOW) to 5 (HIGH)
* Priority - Impact x Probability. Address highest score first.
* Mitigation - what could be done to lower the impact or probability

| Risk Area            | Risk Description                                             | Impact | Impact level | Probability | Priority | Mitigation |
| -------------------- | ------------------------------------------------------------ | ------ | ------------ | ----------- | -------- | ---------- |
| Team/Stability       | Burn out                                                     | Low productivity and attrition |  |  |  |  |
| Team/Scaling        | Inefficient team member onboarding                           | Prolonged low productivity |  |  |  |  |
| Team/Expertise       | Concentration of knowledge                                   | Missed SLO/SLA |  |  |  |  |
| Customer             | Broken promises                                              | Reduced GMAU |  |  |  |  |
| Customer             | Eroded trust with the community                              | Fewer community contributions |  |  |  |  |
| Product/Scope        | Not enough knowledge about how the product is being used     | Reduced [METRIC] |  |  |  |  |
| Product/Scope        | Increase of security vulnerabilities due to having many different areas of the product | Loss of confidence / revenue |  |  |  |  |
| Product/Data         | User metrics and activity metrics are incomplete and hard to track | Inaccurate sensing data |  |  |  |  |
| Quality              | Downgrade quality to meet maturity targets                   | Escaped bugs |  |  |  | Prioritise test efforts and train team |
| Quality              | Uncertain test coverage                                      | Difficult to prioritise test effort |  |  |  | Automate coverage analysis |
| Feature/Performance  | Low performance due to _____      | Low customer satisfaction, reduced [METRIC] |  |  |  | |
| Feature/Testability  | Hard to drive real world test scenarios                      | Escaped bugs |  |  |  | |
| Feature/Dependencies | Cross-group work not being prioritised in a timely manner    | Delayed deliverables, reduced customer satisfaction, reduced team productivity |  |  |  | Cross-group dependency tracking, communication coordination |


The above risks listed are  generified for the teams to adjust according to their own specific challenges. The team should also devise a mitigation/contingency plan for each risk and a strategy to implement and monitor these efforts. They could create their own team's risk map project and use the issue tracker to track each risk. Also, to help visualise the risks priority, it is recommended to input these in a [visual risk map](https://docs.google.com/presentation/d/1T_9mMQuBHeQzgXIZdV5asicW6h8z_10kbqJYswzJCjM/edit?usp=sharing). [Here's](https://docs.google.com/presentation/d/1d3RoC7Tp1qoQrv1sldjgC9Q0u5ODkSo50ECS0dS9XIo/edit?usp=sharing) an example of a complete visual risk map.  

The team can iterate on this exercise by expanding it to their product categories, having a more granular understanding on the risks and challenges of each feature.
