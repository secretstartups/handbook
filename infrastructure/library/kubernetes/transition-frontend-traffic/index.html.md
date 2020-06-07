---
layout: handbook-page-toc
title: "Design :: Kubernetes Traffic Transition"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

Currently, we utilize haproxy as our gateway into the GitLab.com product.  Here
we define multiple ACL's [[1]] [[2]] that handle a lot of control.  Whether it
be blocking abusers, slowing down potential DDoS, or adjusting how traffic is
flowing through haproxy, it's responsible for quite a bit [[3]] [[4]].  We need
to determine how to port over this into a kubernetes environment. GitLab.com
_may_ be deployed behind the provided nginx ingress from our own helm charts
with none of these security controls.  This will not work for GitLab.com.  There
are too many dependencies with how we route traffic to specific endpoints, the
division of fleets to handle specific types of requests, and automation we have
to assist us with security related concerns.  

## Design

As proven in a PoC done in [issue/6673] we will utilize our existing haproxy
infrastructure and simply proxy the traffic to Kubernetes Ingress endpoints.

### Implementation Considerations

#### Testing

This has already been tested in a manual format on our `pre` environment for the
Container Registry service.

### Operational Considerations

#### Configuration

We'll need a few items done to our chef cookbooks to allow for such a
configuration:
1. Modifications to add a custom configuration to allow healthchecks and traffic
   to pass to the desired service inside of kubernetes
1. Additions of weights such that we can configure, when desired, how much
   traffic we are sending to Kubernetes vs VMs.

Issues for the above can be found linked to [issue/6673]

### Additional Considerations

Please note that this is only a transitional project.  Once we've completed the
migration of a service to Kubernetes, we may change out how we send traffic to
Kubernetes in the future.  We've briefly spoken about utilizing Envoy as a
better solution.  It would be wise to remove ourselves of Virtual Machines as
much as we can, as stateless load balancers are great candidates for taking
advantage of the Kubernetes platform.  This has been considered a new project
and will warrant it's own Epic and set of Design Documents in the future.

[[1]]: https://ops.gitlab.net/gitlab-cookbooks/chef-repo/blob/master/roles/gprd-base-lb-fe-common.json
[[2]]: https://gitlab.com/gitlab-cookbooks/gitlab-haproxy/blob/master/templates/default/haproxy-frontend.cfg.erb
[[3]]: https://gitlab.com/gitlab-com/security-tools/recaptcha
[[4]]: https://gitlab.com/gitlab-com/security-tools/front-end-security
[issue/6673]: https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6673
