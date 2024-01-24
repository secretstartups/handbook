---
title: "NordLayer User Guide"
description: "IT Self Service Guides provide team members with instructions for frequently asked questions for installing, configuration, and troubleshooting your laptop or our tech stack applications."
---

## Overview

NordLayer is our supported VPN (Virtual Private Network) platform for GitLab Team Members.

The use of Nordlayer is optional, however it is recommended when working on guest networks or public Wi-Fi. In other words, you should connect to the VPN to secure your laptop's traffic anytime that you're not at home. That could be at a coworking location, an airport, a coffee shop or on a guest network at a customers office.

Some members may use a different VPN solution for these scenarios and we would recommend that they migrate to Nordlayer when it's convenient.

When we first approached the idea of a simple VPN for those times that our employees work away from home (coffee shops, trains, planes, etc.), we found a lot of options out there. While many VPN options exist, some are much more than we need, and some far less. When it comes to our decision on NordLayer, we had a number of things to look at: Is it secure? Is it easy to administer? Does it cover multiple Operating Systems? Are admin actions logged? We tested many options and while a number fit a few of these, NordLayer fit the most with security being our most important criteria.

## System Owner and Support

- DRI: `@adamhuss`
- `#it_security_help` Slack channel
- [NordLayer Help Center Chat](https://help.nordlayer.com/)

## Access Request

Please open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new) and add `/label ~"it-security-status::needs-review"`.

## NordLayer Installation

See the [IT Self Service](/handbook/it) page for more information about creating an access request for NordLayer.

After your access request is provisioned, you will receive an email from `nordlayer@nordlayer.com` with a link to download the application.

- MacOS:

  1. Enter `gitlab` as the organization.
  1. Authenticate with Okta.
  1. When prompted, select to **Allow** an upcoming prompt.

- Linux:

  1. Follow https://help.nordlayer.com/docs/installing-on-linux to download the application and add your user to the user group.
  1. Log out and log back in.
  1. In your terminal, run `nordlayer login`.
  1. Enter `gitlab` as the organization.
  1. Open the URL you get in your browser and authenticate with Okta.

## Configuration

We recommend you set NordLayer to auto-connect when using untrusted wi-fi (networks with no password or weak encryption):

- MacOS:

  1. Go to NordLayer preferences and select the **Auto-Connect** tab.
  1. Select **When using untrusted Wi-Fi** (or **When app launches** and [add your home network as trusted](#add-your-home-network-to-the-trusted-list-macos-only)).

- Linux:

  1. If NordLayer is running, in your terminal run `nordlayer settings set`.
  1. Select **Auto-connect**, and then **When using untrusted Wi-Fi**.

  To learn more, see [NordLayer application usage on Linux](https://help.nordlayer.com/docs/nordlayer-application-usage-on-linux).

### Add Your Home Network to the Trusted List (MacOS only)

> When you add a trusted network to the list, your laptop will keep NordLayer disconnected while at home. This allows you to use the internet at full speed, and will automatically connect while you're on any untrusted network away from home.
>
> Please keep in mind that when you connect to a trusted network, you are no longer protected through a VPN. Do not do this if you're at a hotel, on a guest newtork, or anywhere outside of your home network (unless needed to get through initial wi-fi portal terms and conditions captive portal screen).

1. Go to NordLayer preferences and select the **Auto-Connect** tab.
1. Verify the Network listed under **Current Network** is your home network and select **Trust**.

## NordLayer Troubleshooting

### How to change the VPN protocol for NordLayer on Linux?

In case you are experiencing any issues with your NordLayer connection, the first course of action would be to change the VPN protocol. You can do so by running the following command `nordlayer settings set` and selecting **VPN protocol**.

### `Verify that you have sufficient privileges to start system services` error on Windows 10

If you are getting an error 'Verify that you have sufficient privileges to start system services' on Windows 10 while installing the NordLayer application - please make sure that you are using an up-to date Windows 10 version.

### NordLayer application is not responsive on Linux

If you encounter this situation, you need to force-close and restart the application by entering the following command:

```shell
sudo systemctl kill -s SIGKILL nordlayer.service
sudo systemctl start nordlayer.service
```

### VPN Authentication errors on Mac

If the VPN authentication window is constantly popping up on your screen, go to **System Preferences -> Network** and select the NordLayer connection. Make sure that **Connect on Demand** is disabled, then click **Cancel** and it should not reappear.

If you are still seeing the pop-up, restart your Mac and drag the NordLayer app to the trash. Once that is done, re-install NordLayer application directly from the AppStore.
