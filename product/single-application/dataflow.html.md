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

## GitLab Develop and Test Code

```mermaid
stateDiagram

  Developer --> GitLab:1. Login
  Developer --> GitLab:2. View Issue
  Developer --> GitLab:3. Change Code
  Developer --> GitLab:4. Submit MR
  GitLab --> App:5. Build App
  GitLab --> TestEnv:6. Deploy
  App --> TestEnv
  GitLab --> TestEnv:7. Run quality tests
  GitLab --> TestEnv:8. Run security tests
  TestEnv --> Developer:9. Verify application

```

## Gitlab Deploy Code

```mermaid
stateDiagram
  Developer --> GitLab:1. Deploy
 GitLab --> ProductionEnvironment:2. Deploy
 Developer --> GitLab:3. Mark issue as fixed
```

## GitLab Maintain Code

```mermaid
stateDiagram
 ProductionEnviroment --> GitLab:1. Application logs
 ProductionEnviroment --> GitLab:2. Application metrics
 GitLab --> Developer:3. Review logs & Metrics
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
  CDTool --> TestEnvironment:11. Deploy
  TestEnvironment --> Developer:12. Verify application
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
  Developer --> IssueTracker:10. Close issue
```

## Multiple DevOps Tools Maintain Application

```mermaid
stateDiagram
 ProductionEnviroment --> LogApplication:1. Application logs
 Developer --> LogApplication:3. Login 
 LogApplication --> Developer:4. View Logs
 ProductionEnviroment --> MetricsApplication:2. Application metrics
 Developer --> MetricsApplication:5. Login 
 MetricsApplication --> Developer:6. View Metrics
```



