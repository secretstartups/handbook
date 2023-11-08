---
aliases: /handbook/customer-success/professional-services-engineering/education-services/sysadminhandsonlab7.html
title: "GitLab System Administration Hands-on Guide: Lab 7"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

# GitLab System Administration Hands-on Guide: Lab 7


## LAB 7- CONFIGURE INSTANCE MONITORING

### A. Access the Grafana Dashboard Service

1. Starting with GitLab 15.3, Grafana is not enabled by default. To enable Grafana, log into an SSH session on your GitLab instance. Search for the location in gitlab.rb where Grafana settings are located (hint: run `sudo grep -n grafana /etc/gitlab/gitlab.rb`.) Change the value of <strong>grafana['enable']</strong> from <strong>false</strong> to <strong>true</strong>. Then run `sudo gitlab-ctl reconfigure`.
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
1. Run the following to change the value of `grafana['disable_login_form']` from `true` to `false`. Replace "1234" with the appropriate line number from the `grep` output in the previous step.

```bash
sudo sed -i '1234s/true/false/' /etc/gitlab/gitlab.rb
sudo sed -i '1234s/# //' /etc/gitlab/gitlab.rb
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


### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.

