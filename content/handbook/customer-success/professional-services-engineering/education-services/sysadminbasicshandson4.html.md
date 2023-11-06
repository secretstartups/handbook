---

title: "GitLab System Admin Basics Hands On Guide- Lab 4"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab System Admin Basics course."
---
# GitLab System Admin Basics Hands On Guide- Lab 4


## LAB 4- USE GITLAB ADMIN COMMANDS

In this lab we will use 3 different commands to start/stop/restart services on your GitLab instance.

1. Open a terminal/command prompt and SSH into your training virtual machine if not already logged in.
2. Start all GitLab services:

     ```
   sudo gitlab-ctl start
     ```

3. Stop and then restart GitLab services:

     ```
   sudo gitlab-ctl stop
   sudo gitlab-ctl restart

     ```

4. Review the command outputs and confirm they ran without errors.  

### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.

