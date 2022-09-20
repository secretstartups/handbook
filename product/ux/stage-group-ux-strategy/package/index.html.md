---
layout: markdown_page
title: "Package UX Team"
description: "The Package UX team supports anyone who uses GitLab to build, test, and deploy software or would like to use a variety of package and/or image registries to manage dependencies"
---

#### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
The Package group works on the part of GitLab concerning the [Package stage](/handbook/product/categories/#package-stage), which integrates with GitLab's [CI/CD product](https://about.gitlab.com/direction/ops/). Our mission is to create a secure environment where both source code and dependencies can live by allowing you to publish, consume, and discover packages of a large variety of languages and platforms all in one place.

Package design prioritizes deliveirng value to our users as effectively as possible. While design is an adaptive counterpart to the team, the design process tends to fall into one of two categories:
1. **Large scale vision** - This design process is designed to create a large-scale vision and validate the direction with our users. From there, an epic is often created and broken down into small MVC iterations in coordination with the broader team.
1. **Small scale design** - This design process focuses more on meeting the immediate need of the team, delivering solutions to edge cases, refining validated experiences, etc. At the highest level, the design focuses on three broad areas:

    1.  Providing a seamless experience geared towards storing and accessing packages and container images for safer more reliable builds
    1.  Establishing a transparent, performant supply chain of dependencies to ensure everyone can contribute.
    1.  Building tools around security policies and vulnerability remediation all while limiting exposure to known vulnerabilities

### Our customer
Our customer is anyone who uses GitLab to build, test, and deploy software or would like to leverage a variety of package and/or image registries to manage their dependencies. This sort of customer can be in any size or specific industry. A different customer is a large organization that utilizes several programming languages across teams and they would like to centralize all of their external dependencies in one location, GitLab.

### Our user
We consider several different types of users in our experience design effort. Even when a user has the same title, their responsibilities may vary by organization size, department, org structure, and role. Below are some of the personas we serve:

* [Systems administrators](/handbook/product/personas/#sidney-systems-administrator)
* [Software developers](/handbook/product/personas/#sasha-software-developer)
* [Devops engineers](/handbook/product/personas/)
* [Security analysts](/handbook/product/personas/#sam-security-analyst) (future)

### Our team
Our team continues to grow. We currently have 2 members that contribute to Package UX efforts:

* [Rayana Verissimo](https://gitlab.com/rayana) - Product Design Manager
* [Katie Macoy](https://gitlab.com/katiemacoy) - Product Designer, Package

#### Our team meetings
Following in GitLab's tradition of async over sync, a majority of our communication is done through issues and merge requests. We do have a few regular synchronous meetings:

* Product Management and Design meet weekly to coordinate design efforts for Package.
* Front-end and Design meet weekly to coordinate UI improvement efforts.
* Designers around CI/CD meet every other week to coordinate efforts accross the platform.

### SSOT Design Files
In order to improve transparency, Package UX has created single sources of truth (SSOT) for the product categories included inside of the Package Group. Not all of the categories have corelating SSOT Figma Files.

| Category | SSOT Design File | 
|---|---| 
| [Package Registry](/direction/package/#package-registry) | [Figma File](https://www.figma.com/file/AnBWA0HLLLRWUK6c8oePzv/Package-Registry-SSOT?node-id=1%3A1) | 
| [Container Registry](/direction/package/#container-registry) | [Figma File](https://www.figma.com/file/kZh5V0YEHoKqZZdqIPF92I/Container-Registry-SSOT?node-id=0%3A1) | 
| [Dependency Proxy](/direction/package/#dependency-proxy) | [Figma File](https://www.figma.com/file/otucOxcZVlWO7RryqZny5A/Dependency-proxy-UI?node-id=0%3A1) | 
