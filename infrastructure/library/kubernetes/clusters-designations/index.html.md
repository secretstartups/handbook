---
layout: handbook-page-toc
title: "Design :: Kubernetes Clusters Designations"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

As Kubernetes becomes more mature in the GitLab environment, we'll need to
ensure we maintain consistent structure for what systems receive a Kubernetes
Cluster, where that cluster is to be located, and which applications are
applicable to be installed on our various clusters.  We should also strive to
maintain a compact infrastructure and limit ourselves with how many clusters we
deploy to minimize the administrative effort of building out tooling and
spending time and effort maintaining a large number of clusters. This document
shall provide a guideline to specify which applications can be placed on
clusters of similar types to avoid cluster sprawl.

This goal of this document is to define classifications for various types of applications:
* GitLab.com and all supporting services
* Any application that built by a third party and hosted by us
* Any application built in-house to support us or our customers

What this document does not cover:
* Any service or application deemed necessary to maintain visibility of the
  operational control of the cluster

Please note this document will cover only clusters and applications for which
the Infrastructure team of GitLab.com will take part in maintaining.  Any
clusters or applications built by other teams not discussed with our team ahead
of this do not fall under the realm for which this document is targeting.

## Design

We shall classify the application type in order to specify where applications
get placed inside of our Infrastructure.  This classification will determine
which clusters will contain specific applications, as well as the criteria for
locating future applications.

### Implementation Considerations

All kubernetes clusters shall be configured in their corresponding project where
we define the boundaries of user access controls.  All production data is
normally housed in our `gitlab-production` project.  Any other environment that
has mock data for the purposes of testing the GitLab product will have its own
cluster in the appropriate project.  All systems or services which are not part
of GitLab.com, but still maintain sensitive information shall exist in a shared
GCP project (separate from `gitlab-production`) which contains its own
Kubernetes cluster.  And finally, any application which will not contain any
sensitive user data shall reside in yet another GCP project.  This will ensure
we maintain a layer of security and access controls to each project and
therefore each cluster that we are maintaining.

GitLab.com consists of a large set of infrastructure components and private
data. Clusters would consist of anything related to ensuring redundancy,
operation, and monitoring of the GitLab.com website.

The project named `gitlab-services` will contain all applications that are
created internally which are not part of the .com infrastructure but may contain
secret or personal information.  These will go on one cluster. Additional
clusters will be created if needed for the purposes of having a testing
environment for any applications which will only contain mock data.

Any cluster that does not contain any sensitive personal information of our
community will go on a different cluster.  These applications MAY not have any
secondary cluster for testing.  Instead we may namespace the applications to
distinguish between production and a staging environment for said application.

Examples are the following:

| Application | Example GCP Project | Example Kubernetes Cluster Designation |
| ----------- | ------------------- | -------------------------------------- |
| gitlab.com | gitlab-production | Gitlab.com Operations |
| staging.gitlab.com | gitlab-staging1 | GitLab.com Operations |
| dev.gitlab.org | gitlab-dev | GitLab.com Operations |
| ops.gitlab.org | gitlab-ops | GitLab.com Operations |
| version | gitlab-services | GitLab Company Operations |
| license | gitlab-services | GitLab Company Operations |
| customers | gitlab-services | GitLab Company Operations |
| forum | gitlab-marketing | GitLab Supporting Application |
| contributors | gitlab-marketing |GitLab Supporting Application |
| about | gitlab-marketing | GitLab Supporting Application |
| design | gitlab-marketing | GitLab Supporting Application |

### Alternatives

There can always be exceptions to the above.  Create a merge request to start
the discussion.
