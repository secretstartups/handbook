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

1. You should choose a way to spin up a specific version of GitLab quickly so that you can replicate customer issues. The current recommended way to do this is to use [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started). Each specific module that you'll be using has its own `README.md` in the deployment projects, so make sure to give that a read as well.
1. Testing locally is also recommended - configuring Docker Engine / VM based system (details below) to your taste will let you quickly spin up a specific GitLab version.
1. You will need licenses for all self-managed tiers so you can match the features available with your customer's features - see the next section.
1. For most testing, a single box Omnibus installation will be fine.
1. If you need a more complex environment, the following tools can help:
    * [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/gitlab-environment-toolkit)
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

The [IT Ops](https://about.gitlab.com/handbook/business-technology/team-member-enablement/#gitlab-it-team) team handle provisioning of paid tier test groups on GitLab.com. If you require a group of your own to have a paid tier, please submit an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request). This process will ensure that all entitlements are removed during processes such as staff member offboarding. 

If you no longer require a previously provisioned paid tier test group, please submit a new [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) for its removal. This ensures that a record of its removal is kept within the same issue tracker as its original creation.

## Testing Environment License

For a test you will need to make an [internal issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=GitLab_Team_Member_License_request) requesting one.

Please keep in mind *you can't generate licenses for customers* only for testing
purposes.

## Cloud Testing Environments

You can create (ephemeral) testing environments. We recommend using the support-resources project for doing so.

### GCP

#### GitLab Sandbox Cloud for GCP (preferred)

If you need additional flexibility for creating test environments. The [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) allows for creating a personally-owned GCP project. You can do so using the [GCP console](https://console.cloud.google.com/home/dashboard), or [gcloud command line tool](https://cloud.google.com/sdk/gcloud). If you need to replicate any of the [Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures/), it's recommended that you use the [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/gitlab-environment-toolkit).

**Note:** Please remember to shut down resources that you are no longer using. The personally-owned GCP projects aren't yet making use of the [frugal resources tool](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md#frugal-resources) for automating the shut down of resources created in your own project.

#### GCP `support-resources` automation (deprecated)

You can also use the [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) project to automatically spin up resources. They will appear in the `support-resources` GCP project, which all Support Engineers should have access to as part of their baseline entitlements. If you don't have access to this project, please reach out in the `#support_operations` slack channel for assistance.

`support-resources` is considered deprecated and we're actively tracking migration to Sandbox Cloud in [STM-4037](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4037). Resources can still be created here, but if you're looking to create something enduring Sandbox Cloud should be preferred.

Some advantages of using the `support-resources` automation project over Sandbox Cloud are:

1. [Frugal times](https://gitlab.com/gitlab-com/support/support-resources#frugal-resources) - this is a key feature that allows for resources to be turned off (and on) based on a customizable schedule (GCP only charges for uptime). If you're using [GET](https://gitlab.com/gitlab-org/gitlab-environment-toolkit/) to spin up a 10k reference architecture (for example), the cost can be upwards of $250 USD/day. Frugal times lets you halve that by automatically turning it off when you're not online.
1. Easy provisioning of streamlined complex topologies - with only a few clicks or a couple of commands, one can provision complex Gitlab set-ups (Gitlab installed on GKE, Gitlab+Runner+Elasticsearch stack, etc) on any available version.
1. Easily troubleshooting customer tickets by replicating their set-up in minutes and easily reproducing their issues. The Gitlab instance can be provisioned as already seeded with Groups, Projects, Issues, MRs, etc. Because they are easy to set-up and, hence disposable, the instances can be shared with customers so they can themselves reproduce or showcase an issue or experiment and collaborate.
1. Easy ramp-up and experimentation for various training modules - running before walking has never been easier. For example for someone taking the HA&Scale-out module, a good first step could be to create a [3K reference arch](https://docs.gitlab.com/ee/administration/reference_architectures/3k_users.html) to poke around and see how everything is set-up, before actually creating their own HA set-up, or maybe just use the 3K as a reference.
1. Security - Support-resources allows the ports reviewed by our security team and if those were to change, we have a centralized way of imposing and rolling out that change across instances.
1. Terraform development - while continuously developing the project a few support engineers have become very familiar with `terraform`, `ansible` and general automation guidelines (could include here `gcloud`, `bash` and `chef`). This is becoming more and more important as we are seeing the adoption of [GET](https://gitlab.com/gitlab-org/gitlab-environment-toolkit/).

There's also a few disadvantages to using the project:

1. Less granularity - while you can identify all the resources a user is running, having one's personal GCP project brings a lot more granularity to the data about each individual user.
1. Isolation - while the `Support-Resources` automation project is good at preventing resources conflicts, those can still happen as everybody has access to the pool of resources (so accidents can and have happened). In a personal GCP project one can, among other things, restrict access to their resources.
1. Familiarity with GCP - when using the `Support-Resources` project a lot of the intricacies of using GCP are performed beneath the covers. Having your own GCP projects will expose you to the complexity of setting things up manually or automating that yourself.
1. Sandbox Cloud is the emerging company standard. For more history and details on the sets of problems it solves, see the [Sandbox Cloud Context and Problem Statement](/handbook/infrastructure-standards/realms/sandbox/#background-context-and-problem-statement)

#### Other GCP Projects

You can use the `support-resources` project to manually create resources in a GCP testing environment alongside the resources created by our [automation tools](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md). As with the [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) for GCP - you can manage these manually created resources using the [GCP console](https://console.cloud.google.com/home/dashboard?project=support-resources-c801eb), or [gcloud command line tool](https://cloud.google.com/sdk/gcloud).

**Warning:** You may also have access to the `gitlab-internal` and `gitlab-support` GCP projects. It's strongly recommended that you make use of the `support-resources` project or the GitLab Sandbox Cloud, instead of creating new resources in these projects.

**Note:** Please remember to shut down any manually created that you are no longer using.

#### GCP GKE Kubernetes Cluster

Please use the `support-resources` GCP project or your [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started) GCP project to create a GCP Kubernetes (GKE) cluster. If you are using the `support-resources` GCP project you can create a GKE cluster manually from the console or you can use the [Support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master) automation project to streamline your [GKE cluster creation](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master#how-do-i-spin-up-a-gke-cluster) and there's even an option to [create a GKE cluster that already has GitLab installed through helm chart](https://gitlab.com/gitlab-com/support/support-resources/-/tree/master#how-do-i-spin-up-a-gke-cluster-with-gitlab-installed-through-helm-chart).

**Note:** If you are using GKE to test GitLab Runners, it is recomended to use [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started). GitLab Runners required the use of [RBAC roles in GCP](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control).  The `support-resources` GCP project  does not allow the user enough permision to create the required roles.

<details>
<summary>Open me for instructions on how to manually create GKE on your own project.</summary>
<div markdown="1">

1. Ensure you have selected your own project at the top of [GCC](ttps://console.cloud.google.com).
1. Open the navigation menu at the top of [GCP](ttps://console.cloud.google.com)
1. Select **Kubernetes Engine > Create Cluster** from the dashboard.
1. Enter a name, select a zone, and choose the default static master version unless you have a specific reason to use an alternative version.  It's important to use a server version that will [match your kubectl client version](https://kubernetes.io/docs/tasks/tools/install-kubectl/#before-you-begin).

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

### LDAP Testing Environments

For testing LDAP integrations with a self-managed GitLab instance, you may consider any of these options:

1. [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/ldap.md).
1. [Docker container](https://github.com/osixia/docker-openldap).
1. [Jumpcloud](https://jumpcloud.com/) (Free for up to 10 users).

### gitlab.support testing domain

If you wish to test resources using a real domain name (instead of an IP address, e.g. for testing TLS certificates), you can use a subdomain of `gitlab.support`. You can configure this in GCP in the [gitlab-support project here](https://console.cloud.google.com/net-services/dns/zones/gitlabsupport/details?project=support-testing-168620).

## Securing Cloud Testing Environments

Test instances are, by default, publicly accessible on the Internet. Often, we need to test specific versions or configurations that may be vulnerable to remote compromise. It is your responsibility to secure your test instances to prevent them from being compromised and used to further attack our cloud environment. 

### IP Filtering

A highly effective way to secure your cloud instances is to apply the [concept of IP filtering](https://www.oreilly.com/library/view/linux-network-administrators/1565924002/ch09s03.html) for each instance you create.  For the majority of cases, this means source IP filtering from one or more [CIDR block ranges](https://whatismyipaddress.com/cidr) ensuring that only certain IPs and integrations can interact with the GitLab instance, therefore, reducing the attack surface of the GitLab organization as a whole.

If you don't know your current IP address to use for source IP filtering, you can utilize services like [whatsmyipaddress.com](https://whatismyipaddress.com/) or [ipinfo.io](https://ipinfo.io/) to retrieve it.  Though configuring IP filtering is currently a manual process for each GitLab cloud instance, [discussions are underway](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4097) at the time of writing regarding how best to automate this practice to reduce complexity and manual processes needed. The steps to implement IP filtering will differ per cloud environment.  Here you can find current documentation for manually implementing source IP filtering in the most commonly used cloud platforms:

- [Google Cloud](https://cloud.google.com/vpc/docs/using-firewalls#creating_firewall_rules#console)
- [Amazon Web Services (AWS)](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
- [Azure](https://docs.microsoft.com/en-us/learn/modules/introduction-azure-web-application-firewall/)

### Patching against known vulnerabilities

Running a Support test instance a known vulnerability can be a security issue. When running a test instance, you should patch against known vulnerabilities if possible.

For example, GitLab versions from 11.9 to 13.10.2 are vulnerable to [CVE-2021-22205](https://about.gitlab.com/releases/2021/04/14/security-release-gitlab-13-10-3-released/#Remote-code-execution-when-uploading-specially-crafted-image-files).

If you're running GitLab version 12.6 to 13.10.2, patch against this vulnerability by running the following commands for each instance:

```
sudo su
cd ~
curl -JLO https://gitlab.com/gitlab-org/build/CNG/-/raw/master/gitlab-ruby/patches/allow-only-tiff-jpeg-exif-strip.patch
cd /opt/gitlab/embedded/lib/exiftool-perl
patch -p2 < ~/allow-only-tiff-jpeg-exif-strip.patch
```

For GitLab versions 11.9.0 to 12.5.x, you can "patch" the vulnerability by replacing the `exiftool` binary with the following commands:

```
sudo rm -f /opt/gitlab/embedded/bin/exiftool
sudo printf '#!/bin/bash \n\ncat -' > /opt/gitlab/embedded/bin/exiftool
sudo chmod a+x /opt/gitlab/embedded/bin/exiftool
```

### Install Docker

If you'd like to use [Docker Desktop for Mac](https://www.docker.com/get-started) a subscription is required for business use. Please review the [Docker Desktop handbook page](https://about.gitlab.com/handbook/tools-and-tips/mac/#docker-desktop) to find more information on how to obtain a license as well as a list of recommended alternatives.

In the mean time, consider using a Cloud or local VM with [Linux Engine](https://hub.docker.com/search?q=&type=edition&offering=community&operating_system=linux) for testing Docker environments.

Note that on Macs with M1 / Apple Silicon, running GitLab in Docker is not working properly for now. Check out [UTM](#utm-free--opensource---compatible-with-apple-silicon) below as an alternative for a local setup on your M1 Mac.

### Install Docker Machine

Since Docker Toolbox has been deprecated, Docker Machine has to be downloaded and installed manually. Use the following commands to install or upgrade Docker Machine separately:

```
$ curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && \
  chmod +x /usr/local/bin/docker-machine
```

### VMWare Testing Environment

This guide involves configuring and setting up VMWare and Docker locally and assumes you're using macOS.

#### Install VMWare (paid)

1. Navigate to [VMWare store](https://store.vmware.com), and then purchase
   **VMware Fusion 10 (for macOS)** (or current version).
1. Download **VMware Fusion 10 (for macOS)** using the provided link.
1. Install VMWare Fusion 10.
1. Launch VMWare Fusion.
1. When prompted, enter the license details.

### UTM (free & opensource - compatible with Apple Silicon)

UTM is an open source QEMU-based virtualisation software for MacOS. It currently provides support for Apple silicon hardware, so may be useful for engineers on Apple M1 devices to deploy local virtual machines.

#### Install UTM

1. [Navigate to the UTM home page](https://mac.getutm.app/) and select 'Download'.
1. Once installed, follow the [instructions for an ARM-based installation of Ubuntu](https://mac.getutm.app/gallery/ubuntu-20-04)
1. Start the VM within the UTM interface.

### VirtualBox Testing Environment (free & opensource - does not currently support Apple silicon)

This guide involves configuring and setting up VirtualBox and Docker locally and assumes you're using macOS. *VirtualBox does not currently support Apple M1 CPUs.*

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
   + Set `gitlab_shell_ssh_port` using `--env GITLAB_OMNIBUS_CONFIG`
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

##### Create container

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

## Windows

It may come to pass that you require a Windows environment to test a [Windows Runner](https://docs.gitlab.com/runner/install/windows.html) or
even the [Kubernetes Executor in a Mixed Cluster](https://docs.gitlab.com/runner/executors/kubernetes.html#example-for-windowsamd64).

The options are the same as above:
 - Cloud environements: GCP and AWS have Windows Server images you can spin up to connect to via RDP.
 - A local environment: Microsoft provides [pre-packeged Windows VMs](https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/) for your hypervisor of choice.
