---

title: "GitLab System Administration Hands-on Guide: Lab 2"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---
# GitLab System Administration Hands-on Guide: Lab 2


## LAB 2- USE GITLAB ADMINISTRATION COMMANDS

### A. Run basic service status commands

1. From a terminal prompt, SSH into your training virtual machine if not already logged in.
2. Use the `gitlab-ctl` maintenance command to check the status of GitLab services:

     ```
   sudo gitlab-ctl status
     ```

3. Note the GitLab-related services shown in the output. Verify the processes listed are running as expected.
4. Stop one service (the NGINX web service).

     ```
   sudo gitlab-ctl stop nginx
     ```

5. Attempt to navigate to GitLab in your web browser, or refresh the page if already there. You should see some variation of *"can not connect"*. This is because we just turned off the web server on the GitLab instnace.
6. Restart the NGINX web service.

     ```
   sudo gitlab-ctl start nginx
     ```

7. Navigate to GitLab in your web browser. The application should now load properly.

### B. Change visibility settings

1. If needed, log into GitLab in your web browser. Use your `root` username and password from Lab 1.
2. In the top left corner of the main screen, under **Menu**, click **Admin**.
3. You will first adjust some default project visibility settings. Scroll to the bottom of the left hand navigation pane and click **Settings** > **General**.
4. Under **Visibility and access controls**, click **Expand**.
5. Change the Default project visibility to **Internal** by clicking the associated radio button. The Internal visibility setting allows only authenticated users to see any projects hosted in GitLab.
6. Repeat step 5 to change the Default group visibility to **Internal**.  

### C. Locate sign-in settings

This section is intended to show you where multi-factor authentication can be configured. For purposes of this lab, you won't actually adjust any settings.
1. Still under **Settings** > **General**, click **Collapse** next to **Visibility and access controls**.  
2. Under **Sign-in restrictions**, click **Expand**.
3. Under **Two-factor authentication**, note the checkbox next to **Enforce two-factor authentication**.
4. Click **Collapse** next to **Sign-in restrictions** to close the menu.

### D. Update the header logo

You can personalize your GitLab instance by uploading a header logo.
1. On the left sidebar, select **Appearance**.
2. Under the **Navigation Bar section**, click **Choose File**.  
3. Select an appropriate picture from your computer to serve as a header logo, and click **Open**.
4. After updating the appearance settings, you should see the GitLab logo in the top bar replaced with the picture you uploaded.

### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.
