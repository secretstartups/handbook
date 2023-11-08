---
aliases: /handbook/customer-success/professional-services-engineering/education-services/sysadminbasicshandson1.html
title: "GitLab System Admin Basics Hands On Guide- Lab 1"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab System Admin Basics course."
---

# GitLab System Admin Basics Hands On Guide- Lab 1


## LAB 1- INSTALL GITLAB EE

The first thing we need to do is install GitLab on a virtual machine your instructor has set up for you. You will install your GitLab instance using the command line.

1. Navigate to the following GitLab page and keep it open in a separate tab for reference: <https://about.gitlab.com/install/#centos-8>.
2. On your local machine, open a terminal window. You will use SSH to access the training environment.
3. Open the Lab Setup Instructions provided by the instructor to locate your assigned public IPv4 address.
4. Use your assigned IP address and SSH key to log into the traning environment:

     ```
   ssh -i training_pem.pem ec2-user@<assigned-public-IP>
     ```

   Press <kbd>Enter</kbd>
5. If your system displays an authentication warning, type `yes` and press <kbd>Enter</kbd>
6. Now that you are logged into the training area, let’s begin GitLab installation. Start by installing some necessary dependencies:

     ```
   sudo dnf install -y curl policycoreutils perl postfix
     ```

7. Start and enable Postfix so GitLab can send notification emails:

     ```
   sudo systemctl enable postfix
   sudo systemctl start postfix
     ```

8. Add the GitLab install repository:

     ```
   curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
     ```

9. Install the GitLab package. Use the training system's assigned public IP address in lieu of FQDN for now.

     ```
   sudo EXTERNAL_URL="<assigned-public-IP>" dnf install -y gitlab-ee
     ```

  *Note: this step may take a few minutes to complete.*

10. Once the installation is complete, a password will be randomly generated and stored for 24 hours in `/etc/gitlab/initial_root_password`. Using a web browser, nagigate to your GitLab instance and use this password with username `root` to login.
11. Once logged in, in the upper right corner of the GitLab landing page, click your root user avatar, then **Edit Profile**.
12. In the left navigation pane **User Settings**, click **Password**.
13. Reset the root password to a new permanent password of your choosing. This step requires entering the temporary root password used for initial login.


### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.

