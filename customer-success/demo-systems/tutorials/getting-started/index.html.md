---
layout: handbook-page-toc
title: "Getting Started Tutorials"
description: "The GitLab Demo Systems getting started tutorials provide step-by-step instructions for accessing and using our infrastructure and related business processes."
---

## On this page
{:.no_toc}

- TOC
{:toc}


### [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account)

To get started with the GitLab Demo Cloud, you will need to create an account on our GitLab Demo Portal at [https://gitlabdemo.com](https://gitlabdemo.com). After you create your account, you can access your dashboard that provides access to all of the resources in the GitLab Demo Cloud.

This tutorial shows you how to create your account, access the GitLab instance, access integrations, and explore the catalog.

### [Configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster)

After your GitLab Demo Cloud account has been created, your runners and CI jobs will use the pre-configured instance-level cluster by default. The instance-level cluster is designed to be transparent behind the scenes and does not support customization or administration and reporting capabilities as a demo systems user.

You can request your own Kubernetes cluster that is provisioned in Google Cloud's Google Kubernetes Engine (GKE) service by the demo systems team. By having your own cluster, you have full administrative access to the cluster for troubleshooting CI jobs and pods that are experiencing issues.

This tutorial shows you how to connect your cluster to your GitLab group after you are notified that your cluster is ready. You will access the Google Cloud Platform (GCP) console to see your cluster, use the Google Cloud Shell to run `kubectl` commands on your cluster, and access the GitLab Demo Cloud Omnibus instance to configure your pre-created group with a Kubernetes cluster. After your cluster has been added, we will install Helm, Prometheus and install your own GitLab Runner.

### [Using project templates and sample projects](/handbook/customer-success/demo-systems/tutorials/getting-started/using-templates-sample-projects)

After your GitLab Demo Cloud account has been created, you can access your group that allows you to create projects, sub-groups and manage group-level settings that are used by customers to allow settings to be configured for different teams.

We recommend creating sample projects as project templates, then importing them into a new project for each customer demo. This allows you to make changes to the newly created project without worrying about changes affecting your template.

This tutorial shows you how to access the GitLab instance and your group, create a sub-group for project templates, create your first project template, and import that template into a new project that you can use for a customer demo.

### [Using the demo designer for creating sample data](/handbook/customer-success/demo-systems/tutorials/getting-started/using-demo-designer)

After your GitLab Demo Cloud account has been created, you can access your group that allows you to create projects, sub-groups and manage group-level settings that are used by customers to allow settings to be configured for different teams.

Your group will be empty by default. If you cannot find a project template that fits your use case, you can use the demo designer to create a playbook of API calls that will create and/or populate a GitLab project with sample data to showcase the features of GitLab.

In the current iterative release, you can create labels, milestones, issues and issue boards to show the issue tracking and Agile features.

This tutorial shows you how to add an environment with your GitLab instance URL and API key, create a playbook, and run your playbook to populate a new or existing project with sample data. After a playbook has been created, you can run it multiple times to create different projects with a consistent state each time.

This tutorial uses the GitLab Demo Cloud account, however you can use the designer to connect to GitLab.com or your own instance (Omnibus, Docker, etc).

This tutorial is available as a [YouTube video](https://www.youtube.com/watch?v=s3HI6VQXQ2U).
