---
layout: markdown_page
title: Data flow GitLab vs. multiple applications
---

- TOC
{:toc}

How does having one application vs many applications impact workflow?

The data flows below are based on the experience of one enterprise customer who switched from multiple DevOps tools to GitLab.

The source data can be found in this [spreadsheet](https://docs.google.com/spreadsheets/d/1yui5UYY46HQ-KcwTCZ-8OXXQylBpxvEYk_QZW3qabAk/edit#gid=0).

# GitLab

```mermaid
graph TB
  subgraph Develop and Test
    Developer1(Developer)
    App1[App]
    TestEnv1([Test<br>Environment])
    App1 -- 5. Deploy --> TestEnv1
    TestEnv1 -- 8.Verify application --> Developer1
  end

  subgraph Deploy Code
    Developer2(Developer)
    ProdEnv1([Production<br>Environment])
    App2[App]
    App2 --> ProdEnv1
  end

  subgraph Maintain Code
    Developer3(Developer)
    ProdEnv2([Production<br>Environment])
  end

  GitLab[GitLab]

  Developer1 -- 1. Login --> GitLab
  Developer1 -- 2. View Issue --> GitLab
  Developer1 -- 3. Change Code<br>+ Submit MR --> GitLab
  GitLab -- 4. Build App --> App1
  %%GitLab -- 5. Deploy --> TestEnv1
  GitLab -- 6. Run quality tests --> TestEnv1
  GitLab -- 7. Run security tests --> TestEnv1

  Developer2 -- 1. Deploy --> GitLab
  Developer2 -- 2. Mark issue<br>as fixed --> GitLab
  TestEnv1 -- Promote --> App2

  ProdEnv2 -- 1. Application Logs --> GitLab
  ProdEnv2 -- 2. Application Metrics --> GitLab
  Developer3 -- 3. Review Logs --> GitLab

  classDef default fill:#FFFFFF,stroke:#0C7CBA;
  %%class GitLab,Developer test
```


# Multiple DevOps Tools

## Multiple DevOps Tools Develop Code

```mermaid

stateDiagram
  Developer --> IssueTracker:1. Login
  Developer --> IssueTracker:2. View Issue
  Developer --> SourceControl:3. Login
  Developer --> SourceControl:4. Change code
  Developer --> CITool:5. Login
  Developer --> CITool:6. Submit merge request
  SourceControl --> CITool
  CITool --> Application:7. Build 
  Developer --> CDTool:8. Login
  Developer --> CDTool:9. Deploy application
  Application --> CDTool:10. Load
  CDTool --> TestEnivronment:11. Deploy
  TestEnivronment --> Developer:12. Verify application
```

## Multiple Devops Tools Test Code

```mermaid
stateDiagram
  Developer --> TestTool:1. Login
  Developer --> TestTool:2. Run Tests
  TestTool --> Application: 3. Run Tests
  Application --> TestTool: 4. Test Results
  TestTool --> Developer: 5. Test Results
  Developer --> SAST:6. Login
  Developer --> SAST:7. Run Tests
  SAST --> Code: 8. Run Tests
  Code --> SAST: 9. Test Results
  SAST --> Developer: 10. Test Results
  Developer --> SecretScan:11. Login
  Developer --> SecretScan:12. Run Tests
  SecretScan --> Code: 13. Run Tests
  Code --> SecretScan: 14. Test Results
  SecretScan --> Developer: 15. Test Results
  Developer --> DependencyScan:11. Login
  Developer --> DependencyScan:12. Run Tests
  DependencyScan --> Code: 13. Run Tests
  Code --> DependencyScan: 14. Test Results
  DependencyScan --> Developer: 15. Test Results
  Developer --> SecurityTeam: 16. Ask for DAST
  SecurityTeam --> DAST: 17. Login
  SecurityTeam --> DAST: 18. Run Scan
  DAST --> Application: 19. Run Scan
  Application --> DAST: 20. Scan Results
  DAST --> SecurityTeam: 21. Results
  SecurityTeam --> Developer: 22. Results
```

## Multiple DevOps Tools Deploy Code

```mermaid
stateDiagram
  Developer --> QualityTeam:1. Request approval
  QualityTeam --> Developer:3. Send approval
  Developer --> SecurityTeam:2. Request approval
  SecurityTeam --> Developer:4. Send approval
  Developer --> ProductionOps:5. Request deployment
  ProductionOps --> CDTool:6. Login
  ProductionOps --> CDTool:7. Deploy
  CDTool --> ProductionEnvironment:8. Deploy Application
  ProductionOps --> Developer:9. Deployment Complete
  Application --> CDTool
  Developer --> IssueTracker:10.Close issue
```

## Multiple DevOps Tools Maintain Application

```mermaid
stateDiagram
 ProductionEnviroment --> LogApplication:1.Application logs
 Developer --> LogApplication:3. Login 
 LogApplication --> Developer:4. View Logs
 ProductionEnviroment --> MetricsApplication:2.Application metrics
 Developer --> MetricsApplication:5. Login 
 MetricsApplication --> Developer:6. View Metrics
```



