---
layout: handbook-page-toc
title: "NordLayer"
description: "NordLayer End User Setup Guide"
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## NordLayer Setup Guide and Basic Troubleshooting

To request NordLayer, please reach out in the #it_compliance_security_help Slack channel for a license and provisioning. As long as we have licenses left, you will receive a signup email with a link to activate your account. Once activated, you will be redirected to a NordLayer landing page with a link to download the application. Follow the installation instructions and prompts. If you run into any installation issues or questions, Nordlayer has support available to us via [Help Center Chat](https://help.nordlayer.com/). You can also reach out in the #it_compliance_security_help Slack channel.

### NordLayer Setup

1. Enter 'Gitlab' as the Organization.

2. Sign in using your Gitlab email and the password you just created with the sign up link.

3. Enter your 2FA if you have it set up.

4. Mac users will be prompted to Allow an upcoming prompt, please do this.

5. If you have not already done so, please add two factor authentication under NordLayer Preferences > Account Tab > Enable your chosen Authentication.

### Adding Your Home Network to the Trusted List

1. Go to NordLayer Preferences and select the "Auto-Connect" Tab.

2. Verify the Network listed under "Current Network" is your home network and click the "Trust" button. This adds your trusted network to the list and will keep NordLayer disconnected while at home. This allows you to use the internet at full speeds, and will automatically connect while you're on any untrusted network away from home.. Please keep in mind that this means you are no longer protected through a VPN. Do not do this if you're at a hotel, on a guest newtork, or anywhere outside of your home network. 

### NordLayer Basic Troubleshooting

#### How to change the protocol on NordLayer application for Linux?
In case you are experiencing any issues with your NordLayer connection, the first course of action would be to change the VPN protocol. You can do so by entering the following command 'sudo nordlayer settings set' - you should see that the first option is to choose the VPN protocol.


#### ‘Verify that you have sufficient privileges to start system services’ error on Windows 10
If you are getting an error 'Verify that you have sufficient privileges to start system services' on Windows 10 while installing the NordLayer application - please make sure that you are using an up-to date Windows 10 version.

#### NordLayer application for Linux has hung and is not responsive
If you encounter this situation, you will need to force-close the application by entering the following command:
sudo systemctl kill -s SIGKILL nordlayer.service

#### VPN Authentication errors on Mac using NordLayer
If the VPN authentication window is constantly popping up on your screen, go to System Preferences -> Network and select the NordLayer connection. Make sure that Connect on Demand is disabled, then click Cancel and it should not re-appear.

If you are still seeing the popup, restart your Mac and drag the NordLayer app to the trash. Once that is done, re-install NordLayer application directly from the AppStore.



If you run into any other issues, Nordlayer has support available to us via [Help Center Chat](https://help.nordlayer.com/). You can also reach out in the #it_compliance_security_help Slack channel and tag @adamhuss for support. 


