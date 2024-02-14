---
title: "Production Engineering Foundations Technical Roadmap"
---

## Production Engineering Foundations Technical Roadmap

In support of our Mission and Vision, this is the direction of our work for FY24-FY25.

With the development of Cells, we understand there may be adjustments to this roadmap; however, given the reality that we will live in a hybrid state for a significant amount of time, the importance of making these improvements for gitlab.com is still relevant for both our own efficiency and workflows, and those of the teams we support.

#### Abstraction of Foundational Service provisioning for new projects

- Reduce stakeholder toil for new project creation by automatically deploying all Foundational Services necessary for a new environment upon creation (ex Vault, Consul, Monitoring, Access Management, etc)
- Make environment creation a repetitive and standardized process
- Required Work:
  1. Tooling such as Crossplane and GitOps
  1. Terraform modularization

#### Dynamic Cluster Creation

- This enables us automate spinning up new services and treat clusters like cattle, not pets.
- Required work:
  1. Change to using the upstream, official gke-terraform module and add needed customization via additional modules
  1. Refactor our terraform modules to work dynamically

#### GitOps implementation

- This enables us to provision or commission dynamically created clusters by installing common base services that allow clusters to serve traffic (DNS, cert manager etc).
- A necessary foundation for allowing services to be deployed independently in separate namespaces. This allows our stakeholders to deploy infrastructure independent of having access to the cluster.
- Required work:
  1. Implement a GitOps solution

#### Robust, dynamic Ingress

- Allows us to easily route traffic based on granularly defined constraints (example, send 5% of traffic to a different endpoint), to dynamically defined clusters.
- Enables other teams to make changes to their own endpoints/routes, while the complexity of updating and making changes to routing configurations become non-disruptive by using ingress controllers and/or service mesh.
- Allows us to move away from statically defined routing, and potentially result in significant cost savings by moving off of HAProxy.
- Required work:
  1. Implement a manifest-based, Kubernetes native Ingress
  1. Iteratively migrate endpoints from HAProxy to the new Ingress

#### Dynamic Secrets Management

- Allows for automation of secrets rotation, onboarding new members and issuing temporary, single use tokens, while improving auditability.
- Required work:
  1. [Vault](https://gitlab.com/gitlab-com/runbooks/-/tree/master/docs/vault) implementation is complete.
  1. Our current instance is scalable. Whether we would need more than one instance for supporting Cells will depend on Compliance and Security requirements (tbd).
  1. Continue to expand integration and adoption, by migrating secrets/tokens and onboarding other teams.

#### Resource Management Interface

- Enables delegating management of cloud provider resources (e.g. CloudSQL, Memorystore, GCS buckets) to stakeholders by using Kubernetes manifests, abstracts config management away from developers
- Required work:
  1. Implementing tooling like GCP's [Config Connector](https://cloud.google.com/config-connector/docs/overview) or [Crossplane](https://www.crossplane.io/)

#### Infrastructure Access Management

- Enables safe, live troubleshooting for developers by having direct access to various infrastructure resources (including logs and shell)
- Required work:
  1. Use Teleport to delegate namespaced roles with read-only defaults and requested write modes (in progress)
  1. Implement tooling for k8s cluster access