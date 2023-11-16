---

title: "GitLab Serverless Announcement FAQ"
---







## Announcement date

The press release, blog, landing page, and social will go live 2018-12-11

## Release date

Serverless will be available in GitLab 11.6 on 2018-12-22

## Spokespeople

GitLab: Sid Sijbrandij, Mark Pundsack, Daniel Gruesso, William Chia, Priyanka Sharma

TriggerMesh: Sebastien Goasguen, Mark Hinkle

## Who are TriggerMesh?

TriggerMesh is a company developing multi-cloud serverless and FaaS management solutions. TriggerMesh was co-founded by Sebastien Goasguen, who created Kubeless. GitLab partnered with TriggerMesh to build GitLab Serverless.

## What is covered in today’s announcement?

We are announcing GitLab Serverless, a capability built-in to GitLab’s single application for the entire DevOps lifecycle that allows businesses to build, deploy, and manage serverless applications. GitLab Serverless uses Knative to run serverless workloads on Kubernetes. This allows businesses to employ a multi-cloud strategy and choose where they want to run their compute between multiple clouds or even on-premises servers.

## What is the headline of the press release?

GitLab and TriggerMesh announce GitLab Serverless
Enterprises can now deploy serverless workloads on Kubernetes directly from GitLab’s single DevOps application

## Who is quoted in the press release?

Mark Chmarny, Technical Program Manager, Serverless, Google Cloud

“We introduced Knative in July as an open source project based on Kubernetes to provide foundational building blocks for modern serverless applications,” said Mark Chmarny, Technical Program Manager, Serverless, Google Cloud. “In the four months since then, we have seen tremendous enthusiasm from the community, creating the de-facto hybrid and multi-cloud serverless standard on Kubernetes. I’m excited to see Knative being available on GitLab where users will now be able to easily publish their functions and applications directly to any Knative-compatible service.”

Sebastien Goasguen, TriggerMesh co-founder

“We are excited to help GitLab enable all their users to deploy functions directly on the Knative function-as-a-service clusters,” said TriggerMesh co-founder Sebastien Goasguen, ”We believe that these additions to GitLab will give those users the best possible experience for complete serverless computing from beginning to end.”

Sid Sijbrandij, co-founder and CEO of GitLab

“We’re pleased to offer cloud-agnostic serverless as a built-in part of GitLab’s end-to-end DevOps experience, allowing organizations to go from planning to monitoring in a single application,” said Sid Sijbrandij, co-founder and CEO of GitLab. “We’re proud to partner with TriggerMesh whose expertise is helping us provide a seamless experience for GitLab users to deploy and manage serverless functions.”


## Where can I view a copy of the press release?

There is a copy of the [Serverless press release](/press/releases/2018-12-11-gitlab-and-triggermesh-announce-gitlab-serverless.html) on our [press page](/press/)

## Is there a blog post providing more detail on the announcement?

Yes, you can read the [GitLab blog post](https://about.gitlab.com/blog/2018/12/11/introducing-gitlab-serverless/) and [TriggerMesh blog post](https://triggermesh.com/2018/12/11/gitlab-and-triggermesh-partnership/) for more info.

## Is there a landing page for the feature?

Yes, [https://about.gitlab.com/topics/serverless/](/topics/serverless/) is the canonical url.

[https://about.gitlab.com/serverless/](/topics/serverless/) will also redirect to the longer URL and can be used in social, emails, etc.

## What is “serverless” ?

Serverless is an industry term used to refer to software architecture that allows developer to deploy small, discrete blocks of code (often a single function) that execute on an event. Amazon Lambda, and Google Cloud Functions are popular examples of serverless.

## What is the benefit of serverless applications?

Developers can deploy code without needing to worry about the infrastructure that their code will run on.

Compute power is dynamically spun up to run a function when it’s called and then goes away (“scales to zero”) when there is no more load.  This has benefits in both cost, since a server doesn’t need to be running if no one is using the service, and scale, since additional instances of the serverless function/application can be dynamically spun up to handle the load.

## Is GitLab Serverless generally available?

No. Serverless will be available in alpha in GitLab 11.6.

Initial serverless functionality, which allowed Knative to be installed to a Kubernetes cluster with a single click via the GitLab Kubernetes Integration, shipped in GitLab 11.5.

## What is Knative?

Knative is an open source project started by Google that allows serverless workloads to run on Kubernetes. We use Knative to power GitLab Serverless. Knative is currently in alpha. Although there are several frameworks designed to enable serverless on Kubernetes, we are making an early bet that Knative will emerge as the standard.

## Does GitLab Serverless simply bundle Knative, or does it provide additional functionality?

GitLab allows users to [deploy Knative easily](https://docs.gitlab.com/ee/user/project/clusters/serverless/#installing-knative-via-gitlabs-kubernetes-integration) to their Kubernetes clusters without leaving GitLab’s UI. GitLab CI/CD then provides a straightforward way for users to get code from their GitLab repos onto Knative using Continuous Deployment. After this GitLab’s UI allows you to [see important details about your Knative Serverless workloads](https://gitlab.com/gitlab-org/gitlab-ce/issues/43959) right from your project. When using functions-as-a-service, GitLab will automatically parse your `serverless.yml` file and list all the functions contained within it in the new “serveless” section.

In the future, GitLab plans to extend Knative eventing to easily trigger their functions from events within GitLab. For example you can have functions automatically triggered when a merge request or issue is opened for your project. This will enable event-driven workloads to be connected to all of your DevOps tooling.

## When should I use Serverless and when should I use Auto DevOps?

Serverless is designed to work best with functions-as-a-service and microservices.
Long-running applications will work better using Auto DevOps.

Knative is Alpha, and GitLab Serverless is Alpha, while Auto DevOps and vanilla `gitlab-ci.yml` is GA so the risk threshold will also play a choice in which deploy mechanism to use.

## What’s coming next for Serverless?

Future iterations will bring rich detail from function usage such as invocations and scale. Additionally, [triggers and eventing](https://gitlab.com/gitlab-org/gitlab-ce/issues/55120) for functions will be configurable within the GitLab UI.

## Where can I find the vision and roadmap for GitLab Serverless?

[vision/roadmap for Serverless](https://gitlab.com/groups/gitlab-org/-/epics/155)

## Where can I find the docs for GitLab Serverless?

[Serverless docs](https://docs.gitlab.com/ee/user/project/clusters/serverless/)
