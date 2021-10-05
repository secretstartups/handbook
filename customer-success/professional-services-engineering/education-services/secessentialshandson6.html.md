---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 6"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 6
{:.no_toc}

## LAB 6- Create Network Policies (YAML edition)
Managing Network Policies through GitLab is advantageous over managing the policies in Kubernetes directly. Kubernetes doesn’t provide a GUI editor, a change control process, or a revision history. 

Network Policies can be managed through GitLab in one of two ways:
- Management with a Cilium network plugin and a YAML file.
- Management through the GitLab Policy management UI (for projects not using Auto DevOps). Ultimate only.

**Users are encouraged to choose one of the two methods to manage their policies. If users attempt to use both methods simultaneously, when the application project pipeline runs the contents of the CilliumNetworkPolicy in the `auto-deploy-values.yaml` file may override policies configured in the UI editor.**

### Configure a CiliumNetworkPolicy with a YAML
**Requirements:**
As the default network plugin for Kubernetes (kubenet) does not implement support for it, you must have Cilium as your Kubernetes network plugin:
- The Cilium network plugin can be installed with a [Cluster Management Project Template](https://docs.gitlab.com/ee/user/clusters/management_project_template.html) to enable support for network policies.
(For the purposes of this couse lab, Cilium has already been installed. If you wish to follow up with an add-on course that covers installation, register for Infrastructure Engineering Specialist)

### Start by enabling deployment of network policies:
1. Set the following in the .gitlab/auto-deploy-values.yaml file
    ```yaml
      ciliumNetworkPolicy:
        enabled: true
      # The default policy deployed by the Auto Deploy pipeline allows traffic 
      # within a local namespace, and from the gitlab-managed-apps namespace. All 
      # other inbound connections are blocked. Outbound traffic (for example, to 
      # the internet) is not affected by the default policy.
    ```
### Define a Labels-dependent Layer 4 policy
This example enables all endpoints with the label role=frontend to communicate with all endpoints with the label role=backend, with communication limited to TCP on port 80. Endpoints with other labels will not be able to communicate with the endpoints with the label role=backend, and endpoints with the label role=frontend will not be able to communicate with role=backend on ports other than 80.

1. Start with this scaffolded .gitlab/auto-deploy-values.yaml (You may want to create a new file at the repository level.):
    ```yaml
      ciliumNetworkPolicy:
        enabled: true
        alerts:
            enabled:
      metadata:
        name: "l4-rule"
      spec:
        endpointSelector:
            matchLabels:
                role: 
        ingress:
        - fromEndpoints:
            - matchLabels:
                role: 
        toPorts:
            - ports:
                - port: "XX"
                protocol:
    ```
1. Set the label `role=backend`.
1. Set the ingress fromEndpoint label `role=frontend`.
1. Set the protocol to `TCP` and the port to `80`.
1. Finally, enable alerts.

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!


