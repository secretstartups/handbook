---

title: "GitLab System Administration Hands-on Guide: Lab 1"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---
# GitLab System Administration Hands-on Guide: Lab 1


## LAB 1- INSTALL GITLAB

In this lab, you will install GitLab and its necessary dependencies on a virtual machine using the command line.
Before you get started, complete the following:

- Open the [GitLab Linux Installation](https://about.gitlab.com/install/#almalinux-8) page in a separate browser tab for reference.
- Open the lab setup instructions provided by the instructor to locate your assigned public IPv4 address for your Omnibus server. You will use SSH to access the training environment.

### A. Access training environment

1. On your local computer, open a terminal window.
1. Use your assigned IP address and SSH key file to log in to the server that will host your GitLab Omnibus install:

     ```
   ssh -i YOUR_ASSIGNED_SSH_KEYFILE ec2-user@YOUR_ASSIGNED_PUBLIC_IP
     ```

   Press <kbd>Enter</kbd>.
1. If your system displays an authentication warning, type `yes` and press <kbd>Enter</kbd>.

### B. Install necessary dependencies

1. Install Postfix so GitLab can send notification emails:

     ```
   sudo dnf install -y curl policycoreutils perl postfix
     ```

1. Start and enable Postfix:

     ```
   sudo systemctl enable postfix
   sudo systemctl start postfix
     ```

### C. Install GitLab

1. Add the GitLab install repository:

     ```
   curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
     ```

1. Install the GitLab package. Use your training system's assigned public IP address in lieu of a fully qualified domain name.

     ```
   sudo EXTERNAL_URL="YOUR_ASSIGNED_PUBLIC_IP" dnf install -y gitlab-ee
     ```

  *Note: This step may take a few minutes to complete.*

### D. Log in and reset password

1. During installation, a password is randomly generated and stored for 24 hours in `/etc/gitlab/initial_root_password`. To view the generated password, run:

     ```
   sudo cat /etc/gitlab/initial_root_password
     ```

1. Copy the password shown in the output to your clipboard.
1. Using a web browser, navigate to `http://YOUR_ASSIGNED_PUBLIC_IP/`.
1. To log in, use username `root` and the password copied previously.
1. Once logged in, in the upper right corner of the GitLab landing page, select your root user avatar, then **Edit Profile**.
1. In the left navigation pane **User Settings**, select **Password**.
1. In the **Current password** text box, enter the temporary root password used for initial login.
1. Complete the remaining fields with a new, permanent password of your choosing.


### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.


