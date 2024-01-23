---
title: title: "GitLab System Administration - Hands-on Lab 2"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

> Estimated time to complete: 30 minutes

> **You are viewing the latest Version 16.x instructions.** If you are using `https://spt.gitlabtraining.cloud`, please use the [Version 15.x instructions](https://gitlab.com/gitlab-com/content-sites/handbook/-/blob/d14ee71aeac2054c72ce96e8b35ba2511f86a7ca/content/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson2.md).

## Lab 2 - Use GitLab Administration Commands

### Task A. Run basic service status commands

1. From a terminal prompt, SSH into your training virtual machine if not already logged in.

2. Use the `gitlab-ctl` maintenance command to check the status of GitLab services:

```bash
sudo gitlab-ctl status
```

3. Note the GitLab-related services shown in the output. Verify the processes listed are running as expected.

4. Stop one service (the NGINX web service).

```bash
sudo gitlab-ctl stop nginx
```

5. Attempt to navigate to GitLab in your web browser, or refresh the page if already there. You should see some variation of *"can not connect"*. This is because we just turned off the web server on the GitLab instnace.

6. Restart the NGINX web service.

```bash
sudo gitlab-ctl start nginx
```

7. Navigate to GitLab in your web browser. The application should now load properly.

### Task B. Change visibility settings

1. Log into your GitLab web instance with your `root` user and password from Lab 1.

1. In the bottom left corner of the main screen in the sidebar, click **Admin Area**.

1. You will first adjust default project visibility settings. Scroll to the bottom of the left hand navigation pane and click **Settings** > **General**. 

1. Under **Visibility and access controls**, click **Expand**.

1. Change the `Default project visibility` to **Internal** by clicking the associated radio button. 

1. Change the `Default group visibility` to **Internal** by clicking on the associated radio button.  

### Task C. Locate sign-in settings

1. The second setting we will update are Sign-In restrictions. Still under **Settings** > **General**, click **Collapse** next to **Visibility and access controls**.  

1. Under **Sign-in restrictions**, click **Expand**. 

1. Under **Two- factor authentication**, click the checkbox next to **Enforce two-factor authentication**.  

1. Click **Collapse** next to **Sign-in restrictions** to close the menu.

### Task D. Update the header logo

You can personalize your GitLab instance by uploading a header logo.

1. On the left hand side panel, click **Appearance**. 

1. Under the **Navigation Bar section**, click **Choose File**.  

1. Select an appropriate picture from your computer to serve as a header logo, and click **Open**.  

1. Click the **Update appeareance settings** to save the changes. You should see your picture in the top left corner of the screen.

## Lab Guide Complete

You have completed this lab exercise. You can view the other [lab guides for this course](/handbook/customer-success/professional-services-engineering/education-services/sysadminhandson).

### Suggestions?

If you’d like to suggest changes to the GitLab System Admin Hands-on Guide, please submit them via merge request.
