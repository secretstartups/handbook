---
title: "GitLab System Administration Hands-on Guide: Lab 1"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

# GitLab System Administration Hands-on Guide: Lab 1

> Estimated time to complete: 30 minutes

> **You are viewing the latest Version 16.x instructions.** You are using v16 if your group URL is `https://gitlab.com/gitlab-learn-labs/...`. If your group URL starts with `https://ilt.gitlabtraining.cloud` or `https://spt.gitlabtraining.cloud`, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson1.md).

## Lab 1 - Install GitLab 

In this lab, you will install GitLab and its necessary dependencies on a virtual machine using the command line.
Before you get started, complete the following:

- Open the [GitLab Linux Installation](https://about.gitlab.com/install/#almalinux-8) page in a separate browser tab for reference.
- Open the lab setup instructions provided by the instructor to locate your assigned public IPv4 address for your Omnibus server. You will use SSH to access the training environment.

### Task A. Access training environment

1. On your local computer, open a terminal window.

2. Use your assigned IP address and SSH key file to log in to the server that will host your GitLab Omnibus install:

```bash
ssh -i <keyfile_name> ec2-user@<vm_ip_address>
```

3. Press <kbd>Enter</kbd>.

4. If your system displays an authentication warning, type `yes` and press <kbd>Enter</kbd>.

5. If you encounter an error warning about an unprotected private key file, use the commmand below to set the permissions of the file:

```bash
chmod 400 <keyfile_name>
```

After you run the command, rerun the command in step 1 of Task A.

### Task B. Install necessary dependencies

1. Install Postfix so GitLab can send notification emails by using the command below:

```bash
sudo dnf install -y curl policycoreutils perl postfix
```

2. Start and enable Postfix using the ```systemctl enable``` and the ```systemctl start``` commands:

```bash
sudo systemctl enable postfix
sudo systemctl start postfix
```

### Task C. Install GitLab

1. Add the GitLab install repository via the ```curl``` command:

```bash
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
```

2. Install the GitLab package using the command below. Use your training system's assigned public IP address in lieu of a fully qualified domain name.

```bash
sudo EXTERNAL_URL="YOUR_ASSIGNED_PUBLIC_IP" dnf install -y gitlab-ee
```

> This step may take a few minutes to complete.

### Task D. Log in and reset password

1. During installation, a password is randomly generated and stored for 24 hours in `/etc/gitlab/initial_root_password`. To view the generated password, use the command below:

```bash
sudo cat /etc/gitlab/initial_root_password
```

2. Copy the password shown in the output to your clipboard.

3. Using a web browser, navigate to `http://YOUR_ASSIGNED_PUBLIC_IP/`. Use your IP address, and not the fully qualified domain name.

4. To log in, type in `root` as your username, and the password copied previously for your password.

5. Once logged in, in the upper left corner of the GitLab landing page, select your root user avatar, then **Edit Profile**.

6. In the left navigation pane **User Settings**, select **Password**.

7. In the **Current password** text box, enter the temporary root password used for initial login.

8. Complete the remaining fields with a new, permanent password of your choosing.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson).

### Suggestions?

If you’d like to suggest changes to the GitLab System Admin Hands-on Guide, please submit them via merge request.


