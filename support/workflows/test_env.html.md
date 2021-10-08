---
layout: handbook-page-toc
title: Testing Environment
category: Infrastructure for troubleshooting
description: "Support Engineer test environment setup options and guidelines"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Selecting the Right Testing Environment

Support Engineers need testing environments to learn how to support GitLab and also to replicate customer issues.

This page explains the main choices available to you. Some guidelines:

1. You should choose a way to spin up a specific version of GitLab quickly so that you can replicate customer issues. The current recommended way to do this is to use [Support Resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md)
1. Testing locally is also recommended - configuring a Docker / VM based system (details below) to your taste will let you quickly spin up a specific GitLab version.
1. You will need licenses for all self-managed tiers so you can match the features available with your customer's features - see the next section.
1. For most testing, a single box Omnibus installation will be fine.
1. If you need a more complex environment (e.g. with a runner configured), the following tools can help:
    * [Support Resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) via cloud (GCP) VMs
    * [GitLab Support Setups](https://gitlab.com/gitlab-com/support/toolbox/gitlab-support-setups/-/blob/master/README.md) via local (Virtualbox, VMWare, libvirt) VMs
1. For K8s Helm installations, we recommend using GKE - see the section below.
1. If you need to replicate specific cloud provider environments (e.g. for a scaled architecture), see the sections on GCP, AWS and Azure below.
1. Consider joining the [#support-testing Slack Channel](https://gitlab.slack.com/archives/C0167JB9E02) to share your own tips and tricks for testing environments.

Have fun!

## Testing on GitLab.com

You can always create a group.
As usual, public projects get Gold features, but if you need to test paid group features or in a private project, Support has groups for each paid tier.

- [gitlab-gold](https://gitlab.com/gitlab-gold)
- [gitlab-silver](https://gitlab.com/gitlab-silver)
- [gitlab-bronze](https://gitlab.com/gitlab-bronze)

Typically, Support team members are added as `Owner` in these groups, while other team members are added as `Maintainer` or `Owner` with an expiry date.
If you require access, please ask an existing owner.

If you require a group of your own to have a paid tier, please submit an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request).

## Testing Environment License

For a test license you can log into LicenseDot with your GitLab login. You can use one of the [shared licenses](https://license.gitlab.com/licenses/) or if you need special add-ons, such as geo, you can generate a new one.

Please keep in mind *you can't generate licenses for customers* only for testing
purposes. To generate a new license, log in to LicenseDot and click on the
'New License' green button on the right side of the screen. Click on "You can also manually create a license
without a Zuora subscription" at the bottom of the screen and fill out all non-optional
fields.

## Cloud Testing Environments

You can create (ephemeral) testing environments. We recommend using the support-resources project for doing so.

### GCP

#### GitLab Sandbox Cloud for GCP (preferred)

If you need additional flexibility for creating test environments. The [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) allows for creating a personally-owned GCP project. You can do so using the [GCP console](https://console.cloud.google.com/home/dashboard), or [gcloud command line tool](https://cloud.google.com/sdk/gcloud). If you need to replicate any of the [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures/), it's recommended that you use the [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/quality/gitlab-environment-toolkit).

**Note:** Please remember to shut down resources that you are no longer using. The personally-owned GCP projects aren't yet making use of the [frugal resources tool](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md#frugal-resources) for automating the shut down of resources created in your own project.


#### GCP `support-resources` automation

You can also use the [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) project to automatically spin up resources. They will appear in the `support-resources` GCP project, which all Support Engineers should have access to as part of their baseline entitlements. If you don't have access to this project, please reach out in the `#support_operations` slack channel for assistance.

Some advantages of using the `support-resources` automation project over Sandbox Cloud are:
1. [Frugal times](https://gitlab.com/gitlab-com/support/support-resources#frugal-resources) - this is a key feature that allows for resources to be turned off (and on) based on a customizable schedule (GCP only charges for uptime). If you're using [GET](https://gitlab.com/gitlab-org/quality/gitlab-environment-toolkit/) to spin up a 10k reference architecture (for example), the cost can be upwards of $250 USD/day. Frugal times lets you halve that by automatically turning it off when you're not online.
1. Easy provisioning of streamlined complex topologies - with only a few clicks or a couple of commands, one can provision complex Gitlab set-ups (Gitlab installed on GKE, Gitlab+Runner+Elasticsearch stack, etc) on any available version.
1. Easily troubleshooting customer tickets by replicating their set-up in minutes and easily reproducing their issues. The Gitlab instance can be provisioned as already seeded with Groups, Projects, Issues, MRs, etc. Because they are easy to set-up and, hence disposable, the instances can be shared with customers so they can themselves reproduce or showcase an issue or experiment and collaborate.
1. Easy ramp-up and experimentation for various training modules - running before walking has never been easier. For example for someone taking the HA&Scale-out module, a good first step could be to create a [3K reference arch](https://docs.gitlab.com/ee/administration/reference_architectures/3k_users.html) to poke around and see how everything is set-up, before actually creating their own HA set-up, or maybe just use the 3K as a reference.
1. Security - Support-resources allows the ports reviewed by our security team and if those were to change, we have a centralized way of imposing and rolling out that change across instances.
1. Terraform development - while continuously developing the project a few support engineers have become very familiar with `terraform`, `ansible` and general automation guidelines (could include here `gcloud`, `bash` and `chef`). This is becoming more and more important as we are seeing the adoption of [GET](https://gitlab.com/gitlab-org/quality/gitlab-environment-toolkit/).

There's also a few disadvantages to using the project:
1. Less granularity - while you can identify all the resources a user is running, having one's personal GCP project brings a lot more granularity to the data about each individual user.
1. Isolation - while the `Support-Resources` automation project is good at preventing resources conflicts, those can still happen as everybody has access to the pool of resources (so accidents can and have happened). In a personal GCP project one can, among other things, restrict access to their resources.
1. Familiarity with GCP - when using the `Support-Resources` project a lot of the intricacies of using GCP are performed beneath the covers. Having your own GCP projects will expose you to the complexity of setting things up manually or automating that yourself.
1. Sandbox Cloud is the emerging company standard. For more history and details on the sets of problems it solves, see the [Sandbox Cloud Context and Problem Statement](/handbook/infrastructure-standards/realms/sandbox/#background-context-and-problem-statement)


#### Other GCP Projects

You can use the `support-resources` project to manually create resources in a GCP testing environment alongside the resources created by our [automation tools](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md). As with the [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) for GCP - you can manage these manually created resources using the [GCP console](https://console.cloud.google.com/home/dashboard?project=support-resources-c801eb), or [gcloud command line tool](https://cloud.google.com/sdk/gcloud).

**Warning:** You may also have access to the `gitlab-internal` and `gitlab-support` GCP projects. It's strongly recommended that you make use of the `support-resources` project or the GitLab Sandbox Cloud, instead of creating new resources in these projects.

We also have a `support-openshift` project created for the purpose of creating OpenShift clusters for testing the [GitLab Operator](https://gitlab.com/gitlab-org/cloud-native/gitlab-operator) and [GitLab Runner Operator](https://gitlab.com/gitlab-org/gl-openshift/gitlab-runner-operator). Reach out to your Support Team colleagues in the [#support-testing Slack Channel](https://gitlab.slack.com/archives/C0167JB9E02) for more details on using this project for shared OpenShift testing.

**Note:** Please remember to shut down any manually created that you are no longer using.
#### GCP GKE Kubernetes Cluster

Please use the `support-resources` GCP project or your [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) GCP project to create a GCP Kubernetes (GKE) cluster. If you are using the `support-resources` GCP project you can create a GKE cluster manually from the console or you can use the [Support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master) automation project to streamline your [GKE cluster creation](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master#how-do-i-spin-up-a-gke-cluster) and there's even an option to [create a GKE cluster that already has GitLab installed through helm chart](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master#how-do-i-spin-up-a-gke-cluster-with-gitlab-installed-through-helm-chart).

<details>
<summary>Open me for instructions on how to do so</summary>
<div markdown="1">
Select Kubernetes Engine from the dashboard, and then Create Cluster. Enter a name, select a zone, and choose the default static master version unless you have a specific reason to use an alternative version.  It's important to use a server version that will [match your kubectl client version](https://kubernetes.io/docs/tasks/tools/install-kubectl/#before-you-begin).

All of the remaining options can be left as their default settings unless you have a need to add customization to your cluster.  Of note, the Maximum Pods per Node option [directly correlates with the CIDR assignment](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr?_ga=2.246280516.-1734733517.1581009580) of your node(s).

Connecting to, and configuring, your cluster can be done locally using [gcloud](https://cloud.google.com/sdk/docs#install_the_latest_cloud_tools_version_cloudsdk_current_version) and [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#download-as-part-of-the-google-cloud-sdk). Or you can use the Google Cloud Shell.  Clicking Connect in GCP will provide the command to run locally for you to copy and paste, or let you open Cloud Shell immediately. Using [docker images](https://hub.docker.com/r/kiwigrid/gcloud-kubectl-helm) is also an option for a quick deployment of all tools locally.
</div>
</details>

### AWS Testing Environment

Please use [Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) to create credentials for AWS.

### Azure Testing Environment

For *Group* SAML/SCIM (GitLab.com) testing, shared account credentials can be located within the 1password entry `Azure Active Directory Sandbox (SAML Testing)`. This level of access should be sufficient for the majority of test cases.

If you need access to the shared infrastructure team's Azure account for testing AKS and similar features, please create an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) and tag your manager.

For features not available in either instance, please create your own trial for Azure.

### Okta Testing Environment

If you need an Okta sandbox environment to test SAML and SCIM, please go to https://developer.okta.com/signup/ and enter your credentials for a free developer instance where you can perform all your tests. This is a full featured environment so you should be able to add and remove applications, and perform all tests as if you were in a regular production instance.

**Please note**: We have observed a bug while setting up an environment using `developer.okta.com`. When you assign a SAML app to the user then the username field is prefilled with the configured value for the NameID ( e.g. `user.getInternalProperty('id')` ) instead of the created user Identity. This works perfectly fine when using a trial.

 ![Assign SAML app on Okta](/images/handbook/support/error_assiging_SAML.png)

In case you are setting up SCIM along with SAML, you can work around this bug by assigning SCIM app first to the user, and copy the user externalId, then manually fill in the username with this value when assiging the SAML app to this user 

### LDAP Testing Environments

For testing LDAP integrations with a self-managed GitLab instance, you may consider any of these options:

1. [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/ldap.md).
1. [Docker container](https://github.com/osixia/docker-openldap).
1. [Jumpcloud](https://jumpcloud.com/) (Free for up to 10 users).

### gitlab.support testing domain

If you wish to test resources using a real domain name (instead of an IP address, e.g. for testing TLS certificates), you can use a subdomain of `gitlab.support`. You can confgure this in GCP in the [gitlab-support project here](https://console.cloud.google.com/net-services/dns/zones/gitlabsupport/details?project=support-testing-168620).

### Digital Ocean and Docker Testing Environment

**Warning:** Digital Ocean (DO) and dev-resources is deprecated in favor of [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md)

For a Digital Ocean droplets [follow this guide](https://gitlab.com/gitlab-com/dev-resources/blob/master/dev-resources/README.md).
Once you've  created your resource you can follow the section named [Creating GitLab test instance](/handbook/support/workflows/test_env.html#creating-gitlab-test-instance) (though do keep in mind that we are moving away from this project).

## Persistent Local Environments

### Install Docker

Install [Docker Desktop for Mac](https://www.docker.com/get-started) or the
[Linux Engine](https://hub.docker.com/search?q=&type=edition&offering=community&operating_system=linux).

### Install Docker Machine
Since Docker Toolbox has been deprecated, Docker Machine has to be downloaded and installed manually. Use the following commands to install or upgrade Docker Machine sepparately:

```
$ curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && \
  chmod +x /usr/local/bin/docker-machine
```

### VMWare Testing Environment

This guide involves configuring and setting up VMWare and Docker locally and assumes you're using macOS.

#### Install VMWare

1. Navigate to [VMWare store](https://store.vmware.com), and then purchase
   **VMware Fusion 10 (for macOS)** (or current version).
1. Download **VMware Fusion 10 (for macOS)** using the provided link.
1. Install VMWare Fusion 10.
1. Launch VMWare Fusion.
1. When prompted, enter the license details.


### VirtualBox Testing Environment (free & opensource alternative to installing VMWare Fusion)

This guide involves configuring and setting up VirtualBox and Docker locally and assumes you're using macOS.

#### Install VirtualBox

Oracle VM VirtualBox is a free and open-source hosted hypervisor for x86
virtualization.

1. Navigate to [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Download the latest version of the software for your operating system.
1. Install VirtualBox.

**Note** The following list of commands can be saved as bash script for quickly spinning up new instances

### Vagrant Testing Environment

#### Install Vagrant

From [Introduction to Vagrant](https://www.vagrantup.com/intro)

> Vagrant is a tool for building and managing virtual machine environments in a single workflow

Vagrant encapsulates the local VM apps VMWare and Virtual along with [libvirt](https://libvirt.org/).

To install Vagrant, go to [tutorials/vagrant/getting-started-install](https://learn.hashicorp.com/tutorials/vagrant/getting-started-install?in=vagrant/getting-started)

Once installed, [support/toolbox](https://gitlab.com/gitlab-com/support/toolbox) has two projects which you can explore for local GitLab and tools setup.

* [GitLab Support Toolkit](https://gitlab.com/gitlab-com/support/toolbox/gitlab-support-toolkit)

> Support toolkit to help manage GitLab inventory and additional services via docker containers.

* [GitLab Support Setups](https://gitlab.com/gitlab-com/support/toolbox/gitlab-support-setups)
 
> Provide a common provisioning and directory structure for various support setups including GitLab with connected GitLab Runners.

## Creating GitLab test instance
#### Creating settings variables

```
export SSH_PORT=2222
export HTTP_PORT=8888
export VERSION=11.9.9-ee.0
export ENV_NAME=gitlab-test-env
export CONTAINER_NAME=gitlab-test-11.9
```

#### Create new docker host

This command will create a new VirtualBox virtual machine called `gitlab-test-env` that will act as a docker host.

+ CPUs: Same as host (`-1`)
+ RAM: `4GB`
+ Name: `gitlab-test-env`
+ Driver: `virtualbox`

```
docker-machine create \
--virtualbox-cpu-count -1 \
--virtualbox-memory 4096 \
--virtualbox-disk-size 30000 \
--driver virtualbox $ENV_NAME
```

+ Resource: [https://docs.docker.com/machine/drivers/virtualbox/](https://docs.docker.com/machine/drivers/virtualbox/)


### Creating GitLab test instance with docker machine

#### Connect your shell to the new machine

In this example we'll create a GitLab EE 11.9.9 instance.

First connect the docker client to the docker host you created previously.

```
eval "$(docker-machine env gitlab-test-env)"
```

You can add this to your `~/.bash_profile` file to ensure the `docker` client uses the `gitlab-test-env` docker host. You can use `echo` to do so:

```sh
echo 'eval "$(docker-machine env gitlab-test-env)"' >> ~/.bash_profile
```

#### Get the available tags for GitLab
Optionally replace the `ee` in the URL with `ce`

```
wget -q https://registry.hub.docker.com/v1/repositories/gitlab/gitlab-ee/tags -O - | sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' | tr '}' '\n' | awk -F: '{print $3}'
```

#### Create new GitLab container

+ HTTP port: `8888`
+ SSH port: `2222`
   + Set `gitlab_shell_ssh_port` using `--env GITLAB_OMNIBUS_CONFIG `
+ Hostname: IP of docker host
+ Container name: `gitlab-test-11.9`
+ GitLab version: **EE** `11.9.9-ee.0`

<!-- #####  Set up container settings

```
export SSH_PORT=2222
export HTTP_PORT=8888
export VERSION=11.9.9-ee.0
export NAME=gitlab-test-11.9
``` -->

#####  Create container
```
export IP=$(docker-machine ip $ENV_NAME)

docker run --detach \
--env GITLAB_OMNIBUS_CONFIG="external_url 'http://$IP:$HTTP_PORT'; gitlab_rails['gitlab_shell_ssh_port'] = $SSH_PORT;" \
--hostname $IP \
-p $HTTP_PORT:$HTTP_PORT -p $SSH_PORT:22 \
--name $CONTAINER_NAME \
gitlab/gitlab-ee:$VERSION
```

#### Connect to the GitLab container

##### Retrieve the docker host IP

```
echo $IP
# example output: 192.168.151.134
```

+ Browse to: http://192.168.151.134:8888/

**Note**: The container might take a few seconds to spin up and become accessible via the browser.

##### Execute interactive shell/edit configuration

```
docker exec -it $CONTAINER_NAME /bin/bash
```

```
# example commands
root@192:/# vi /etc/gitlab/gitlab.rb
root@192:/# gitlab-ctl reconfigure
```

##### How to update gitlab.rb values with sed

For example, to set the **gitlab_shell_ssh** port on a container named
**gitlab-ee** to port **2222**

```
docker exec -it gitlab-ee \
sed -i "s/.*gitlab_shell_ssh_port.*/gitlab_rails['gitlab_shell_ssh_port'] = 2222/g" /etc/gitlab/gitlab.rb

docker exec -it gitlab-ee gitlab-ctl reconfigure
```

#### Resources

+ [https://docs.gitlab.com/omnibus/docker/](https://docs.gitlab.com/omnibus/docker/)
+ [https://docs.docker.com/machine/get-started/](https://docs.docker.com/machine/get-started/)
+ [https://docs.docker.com/machine/reference/ip/](https://docs.docker.com/machine/reference/ip/)
