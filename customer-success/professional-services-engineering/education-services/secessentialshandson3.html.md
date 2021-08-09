---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 3"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 3
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## LAB 3- ADD Manual k6 Load testing

### Edit the Load testing file with your URL
1. In the Project **{lastname} SecurityProject1**, Click issues on the left hand menu. Click the **New Issue** button
2. In the Title type **create manual load test** submit the issue.  
3. Create a Merge Request from the Issuee.  Click the **Create Merge Request** button 
4. Locate the new branch and click on it 
5. Click on **Web IDE** to begin editing your .gitlab-ci.yml file. 
6. Scroll to the bottom of the file delete the `# ` in front of the `- local: ci-template/Load-Performance-Testing.yml `line.
7. Remove the line with `- template: Jobs/Load-Performance-Testing.gitlab-ci.yml`. Discuss **Local** vs **template** 
8. In another browser go to the **CI/CD** locate the **production** job and open it.  Scroll to the bottom of the output and locate the production URL 
9. In your IDE tab, go to src/test/load-test.js file.  Replace the text URLREPLACE with the URL copied from the production output 
10. Click the blue **Commit** button to begin running your pipeline.
11. After the pipeline runs Merge your Merge Request 
12. In your project repository review the  ci-template/Load-Performance-Testing.yml and look for the load-test.js script 
13. After the pipeline runs, review the output in the **Load-Performance** job 
14. validate execution: local
     script: src/test/load-test.js


### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

