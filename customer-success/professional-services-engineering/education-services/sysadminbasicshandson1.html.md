---
layout: handbook-page-toc
title: "GitLab System Admin Basics Hands On Guide- Lab 1"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab System Admin Basics course."
---
# GitLab System Admin Basics Hands On Guide- Lab 1
{:.no_toc}

## LAB 1- GITLAB EE INSTALLATION

The first thing we need to do is install GitLab on a Virtual Machine your instructor has set up for you. You will install your GitLab Instance using your command line.  

1. To begin lab, navigate to the following GitLab page and keep it open in a separate tab: <https://about.gitlab.com/install/#centos-8>  
2. On your local machine, open your terminal window and begin by using SSH to get into the training environment.  
3. Open the Lab Setup Instructions from your instructor to locate the IP addresses assigned to you.  
4. Type the following into the terminal: $ssh -i training\_pem.pem ec2-user@<public IPv4-system> and press **Enter**. 
5. If your system displays an authentication warning, type YES and press **Enter**. 
6. Now that you are in the training area let’s begin the installation. 
7. Navigate to the page we opened earlier- <https://about.gitlab.com/install/#centos-8> and locate the first step.  
8. Complete step 1 titled- Install and configure the necessary dependencies  
9. DO NOT INCLUDE the following code when using this command- the VMs we are using do not use Firewall:  
    \# Check if opening the firewall is needed with: sudo systemctl status firewalld 
    sudo firewall-cmd --permanent --add-service=http sudo firewall-cmd --permanent --add-service=https sudo systemctl reload firewalld 
10. On Step 2- Add the GitLab package repository and install the package; **use the Public IPv4 DNS** assigned to you in the Lab Setup Instructions sent by your instructor when setting up your DNS.  
*This step may take a few minutes.*  
11. Once the installation is complete- navigate to the URL and on your first visit, you'll be redirected to a password reset screen. Use the default account's username root to login. 

### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab System Admin Basics- please submit your changes via Merge Request!

