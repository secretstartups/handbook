---
layout: handbook-page-toc
title: "GitLab Advanced System Admin Hand-on Guide: Lab 2"
description: "This Hands-on lab guide is designed to walk you through the lab exercises used in the GitLab Advanced System Administration course."
---
# GitLab Advanced System Administration: Lab 2
{:.no_toc}


## LAB 2: CONFIGURE INSTANCE MONITORING

### A. Access the Grafana Dashboard Service
1. Run the following to verify the Prometheus and Grafana services are running on your GitLab instance.
```bash
sudo gitlab-ctl status
```
1. **Optional**: GitLab's Prometheus server can be reached via TCP port 9090. Unfortunately, the training environment currently blocks inbound traffic to that port. As a workaround, you can open an SSH tunnel as follows.
```bash
ssh -L 9090:localhost:9090 -i <SSH_KEY_NAME>.pem ec2-user@<GITLAB_INSTANCE_HOSTNAME>
```
Then navigate to `http://localhost:9090` in a web browser to view the built-in Prometheus server.
1. Navigate to `http://<GITLAB_INSTANCE_HOSTNAME>/-/grafana` to access Omnibus GitLab's built-in Grafana instance.
Note that at the moment the only way to log in is through single-sign-on via a GitLab instance user.
1. Select **Sign in with GitLab**.
1. If you encounter a redirect screen that says "**Authorize GitLab Grafana to use your account?**", select **Authorize**.
1. You should then be redirected to the Grafana home screen, with a banner at the top that says "**Welcome to Grafana**".
1. In the left hand navigation pane, under the **Dashboards** menu, select **Manage**.
1. Select the **GitLab Omnibus** folder.
1. Select **GitLab Omnibus - PostgreSQL**. Note the various database metrics and time series data shown in the dashboard.
1. Go back to the list of dashboards and select one or two others to view.
1. Select the user avatar in the bottom left of the screen. Note it says **Administrator**.
1. In the left hand navigation pane, under the **Dashboards** menu, select **Playlists**.

You should see a message that reads "**Unfortunately you don't have permission to create playlists.**" Somewhat confusingly, even though you are logged in as a *GitLab* instance administrator user, the Grafana service has a separate admin account that needs to be enabled in order to configure and manage the service.

### B. Configure the Grafana admin user
1. Initiate a normal SSH session to your GitLab instance.
1. Run the following to view the Grafana-related configuration settings.
```bash
sudo grep -n grafana /etc/gitlab/gitlab.rb
```
1. Note line that reads `# grafana['disable_login_form'] = true`. The default setting is for user login to be disabled except for GitLab single-sign-on. We need to change this setting to allow sign-in as the Grafana admin user.
1. Run the following to change the value of `grafana['disable_login_form']` from `true` to `false`. Use the appropriate line number from the `grep` output in the previous step if it's different from the example below.
```bash
sudo sed -i '2196s/true/false/' /etc/gitlab/gitlab.rb
sudo sed -i '2196s/#//' /etc/gitlab/gitlab.rb
```
1. Verify the change is applied to the correct line in `gitlab.rb`.
```bash
sudo grep -n grafana /etc/gitlab/gitlab.rb
```
1. Apply the configuration change.
```bash
sudo gitlab-ctl reconfigure
```
1. Set the Grafana administrator user password.
```bash
sudo gitlab-ctl set-grafana-password
```
Enter and confirm a password of your choosing.
1. Navigate back to the Grafana service in your web browser.
1. Hover over the user avatar in the bottom left of the screen, and select **Sign out**.
1. You will be redirected back to the Grafana login screen. You should now see fields allowing you to log in with a username and password.
1. Log in using the username `admin` and the password you set for the Grafana admin user. You will be directed to the Grafana home screen, but you should now see many more menus available in the left navigation pane.
1. In the left navigation pane, under **Configuration**, select **Data Sources**. See that the GitLab Omnibus Prometheus service is the data source used to generate the metrics shown in the default dashboards.

## Suggestions?

If you’d like to suggest changes to the GitLab Advanced System Administration Hands-on Guide, please submit them via merge request.
