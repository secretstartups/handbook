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

Support Engineer's need testing environments to learn how to support GitLab and also to replicate customer issues.

This page explains the main choices available to you. Some guidelines:

1. You should choose a way to spin up a specific version of GitLab quickly so that you can replicate customer issues. The current recommended way to do this is to use [Support Resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md)
1. Testing locally is also recommended - configuring a Docker / VM based system (details below) to your taste will let you quickly spin up a specific GitLab version.
1. You will need licenses for all self-managed tiers so you can match the features available with your customer's features - see the next section.
1. For most testing, a single box Omnibus installation will be fine.
1. If you need a more complex environment (e.g. with a runner configured) [support resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) can help you.
1. For K8s Helm installations, we recommend using GKE - see the section below.
1. If you need to replicate specific cloud provider environments (e.g. for a scaled architecture), see the sections on GCP, AWS and Azure below.

Have fun!

## Testing on GitLab.com

You can always create a group.
As usual, public projects get Gold features, but if you need to test paid group features or in a private project, Support has groups for each paid tier.

- [gitlab-gold](https://gitlab.com/gitlab-gold)
- [gitlab-silver](https://gitlab.com/gitlab-silver)
- [gitlab-bronze](https://gitlab.com/gitlab-bronze)

Typically, Support team members are added as `Owner` in these groups, while other team members are added as `Maintainer` or `Owner` with an expiry date.
If you require access, please ask an existing owner.

If you require a group of your own to have a paid tier, please submit an access request.

## Testing Environment License

For a test license you can log into LicenseDot with your GitLab login. You can use one of the [shared licenses](https://license.gitlab.com/licenses/) or if you need special add-ons, such as geo, you can generate a new one.

Please keep in mind *you can't generate licenses for customers* only for testing
purposes. To generate a new license, log in to LicenseDot and click on the
'New License' green button on the right side of the screen. Click on "You can also manually create a license
without a Zuora subscription" at the bottom of the screen and fill out all non-optional
fields.

## Ephemeral Testing Environments

As a member of support, you have access to a variety of ephemeral testing environments. You can build and tear
down whatever resources you need to reproduce customer environments, try new features or learn about deploying
a new topology.

The resources that are created in these environments are:
- **temporary**: if you need access to persistent resources as part of an integration or application, please don't create it in one of these testing environments.
- **destructible**: be aware that anyone may destroy your provisioned resources at any time; by accident or on purpose.
- **potentially expensive**: please clean up any unused resources when you are done. (**Exception**: you are welcome to keep a VM in GCP to maintain an Omnibus install, as specified in the Support Engineering Onboarding)

There's 2 stages to approach creating your Ephemeral Testing instances. The first stage is to provision the infrastructure (in either GCP, DO, AWS, Azure, Okta) followed by the second stage where our products are deployed to the servers. 

**Note:** Please be aware that we don't have access to the DO console and we are moving away from DO and focusing on using GCP as our cloud provider. Also we are transitioning from using the [dev-resources](https://gitlab.com/gitlab-com/dev-resources/blob/master/dev-resources/README.md) project in favor of [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md).

### GCP Testing Environment

Login to [GCP console](https://console.cloud.google.com/) using your GitLab Google account credentials.

You can use [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) to automatically spin up resources. They will appear in the `support-resources` GCP project. All Support Engineers should have access to this project.

If you need to manually create resources in a GCP Testing environment, please use the `gitlab-support` project. 
You should have access to this as a baseline entitlement. If you do not, please create an access request and tag your manager.

**Note:** you may also have access to the `gitlab-internal` GCP project. You should **not** create resources in this project.

You should also have access to the `support-resources` project and be able to use [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md) as a means of spinning up complex resources in a convenient and programmatic way. With this project you are able to directly spin up GitLab and Runner instances, as well as regular Basic server instances (for which you can follow the steps in [Creating GitLab Test Instance](/handbook/support/workflows/test_env.html#creating-gitlab-test-instance) to continue to install GitLab).

#### GKE Cluster

Select Kubernetes Engine from the dashboard, and then Create Cluster. Enter a name, select a zone, and choose the default static master version unless you have a specific reason to use an alternative version.  It's important to use a server version that will [match your kubectl client version](https://kubernetes.io/docs/tasks/tools/install-kubectl/#before-you-begin).

All of the remaining options can be left as their default settings unless you have a need to add customization to your cluster.  Of note, the Maximum Pods per Node option [directly correlates with the CIDR assignment](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr?_ga=2.246280516.-1734733517.1581009580) of your node(s).

Connecting to, and configuring, your cluster can be done locally using [gcloud](https://cloud.google.com/sdk/docs#install_the_latest_cloud_tools_version_cloudsdk_current_version) and [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#download-as-part-of-the-google-cloud-sdk). Or you can use the Google Cloud Shell.  Clicking Connect in GCP will provide the command to run locally for you to copy and paste, or let you open Cloud Shell immediately. Using [docker images](https://hub.docker.com/r/kiwigrid/gcloud-kubectl-helm) is also an option for a quick deployment of all tools locally.

### AWS Testing Environment

AWS credentials and instructions are stored in the Support Vault.

### Azure Testing Environment

If you need access to Azure for testing, please create an access request and tag your manager.

Specifically for *Group* SAML/SCIM (GitLab.com) testing, shared account credentials are in 1password `Azure Active Directory Sandbox (SAML Testing)`.

### Okta Testing Environment

For SAML/SCIM testing, please open an access request for GitLab's Okta Preview instance with `admin` role and ability to add *Applications*.

### Digital Ocean and Docker Testing Environment

**Note:** DO and dev-resources are being deprecated in favor of [support-resources](https://gitlab.com/gitlab-com/support/support-resources/-/blob/master/README.md)

For a Digital Ocean droplets [follow this guide](https://gitlab.com/gitlab-com/dev-resources/blob/master/dev-resources/README.md).
Once you've  created your resource you can follow the section named [Creating GitLab test instance](/handbook/support/workflows/test_env.html#creating-gitlab-test-instance) (though do keep in mind that we are moving away from this project).

## Persistent Local Environments

### Install Docker

Install [Docker Desktop for Mac](https://www.docker.com/get-started) or the
[Linux Engine](https://hub.docker.com/search?q=&type=edition&offering=community&operating_system=linux).

### VMWare Testing Environment

This guide involves configuring and setting up VMWare and Docker locally and assumes you're using macOS.

#### Install VMWare

+ Navigate to https://store.vmware.com and purchase “VMware Fusion 10 (for macOS)” (or current version)
   + Download “VMware Fusion 10 (for macOS)” using the provided link
   + Install VMWare Fusion 10
   + Launch VMWare Fusion
   + Enter license details when prompted


#### Create new docker host

This command will create a new VMware fusion virtual machine called `gitlab-test-env` that will act as a docker host.

+ CPUs: Same as host (`-1`)
+ RAM: `4GB`
+ Name: `gitlab-test-env`
+ Driver: `vmwarefusion`

```
docker-machine create \
--vmwarefusion-cpu-count -1 \
--vmwarefusion-memory-size 4096 \
--vmwarefusion-disk-size 30000 \
--driver vmwarefusion gitlab-test-env
```

+ Resource: [https://docs.docker.com/machine/drivers/vm-fusion/](https://docs.docker.com/machine/drivers/vm-fusion/)


### VirtualBox Testing Environment (free & opensource alternative to installing VMWare Fusion)

This guide involves configuring and setting up VirtualBox and Docker locally and assumes you're using macOS.

#### Install VirtualBox

+ Oracle VM VirtualBox is a free and open-source hosted hypervisor for x86 virtualization.
+ Navigate to https://www.virtualbox.org/wiki/Downloads and download the latest version of the software
   + Download “VirtualBox (for macOS)” using the provided link
   + Install VirtualBox


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
--driver virtualbox gitlab-test-env
```

+ Resource: [https://docs.docker.com/machine/drivers/virtualbox/](https://docs.docker.com/machine/drivers/virtualbox/)


## Creating GitLab test instance

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

#####  Set up container settings

```
export SSH_PORT=2222
export HTTP_PORT=8888
export VERSION=11.9.9-ee.0
export NAME=gitlab-test-11.9
```

#####  Create container
```
docker run --detach \
--env GITLAB_OMNIBUS_CONFIG="external_url 'http://$(docker-machine ip gitlab-test-env):$HTTP_PORT'; gitlab_rails['gitlab_shell_ssh_port'] = $SSH_PORT;" \
--hostname $(docker-machine ip gitlab-test-env) \
-p $HTTP_PORT:$HTTP_PORT -p $SSH_PORT:22 \
--name $NAME \
gitlab/gitlab-ee:$VERSION
```

#### Connect to the GitLab container

##### Retrieve the docker host IP

```
docker-machine ip gitlab-test-env
# example output: 192.168.151.134
```

+ Browse to: http://192.168.151.134:8888/

##### Execute interactive shell/edit configuration

```
docker exec -it $NAME /bin/bash
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
