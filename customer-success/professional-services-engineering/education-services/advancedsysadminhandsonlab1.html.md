---
layout: handbook-page-toc
title: "GitLab Advanced System Admin Hand-on Guide: Lab 1"
description: "This Hands-on lab guide is designed to walk you through the lab exercises used in the GitLab Advanced System Administration course."
---
# GitLab Advanced System Administration: Lab 1
{:.no_toc}


## LAB 1: Manage GitLab Logs

### A. View active logs

The `gitlab-ctl` command allows you to tail all GitLab log files as well as filter by GitLab service. 

1. From a shell session on your GitLab instance, run the following command to view all active GitLab logs.
```bash
sudo gitlab-ctl tail
```
Amidst all the output, you should notice the command shows the full file path to each log. Most GitLab logs live in `/var/log/gitlab`.
(Note: You can type `CTRL-C` to exit the `tail` command.)
1. You can also view GitLab logs by service. Run the following command to view only NGINX logs (i.e. log files in `/var/log/gitlab/nginx`).
```bash
sudo gitlab-ctl tail nginx
```
You should now see the most recent entries of log files specific to the NGINX web server.
1. Finally, you can drill down to an individual log file.
```bash
sudo gitlab-ctl tail nginx/gitlab_access.log
```

### B. Set minimum log levels

Admins are able to set minimum log levels for some GitLab services.
1. Check the current minimum log levels for GitLab services.
```bash
sudo grep -n -E 'log_level|logging_level' /etc/gitlab/gitlab.rb
```
Note that only some services such as NGINX and Gitaly let admins change the minimum logging level, and even then only for some log files. The `log_level` for other services, such as Sidekiq and Redis, cannot be changed. Also note the line number for `praefect['logging_level']`. We'll use this in the next step.
1. Change the minimum log level for Praefect, which is the traffic manager for Gitaly. Use the appropriate line number from the `grep` output in the previous step if it's different from the example below.
```bash
sudo sed -i '2385s/warn/error/' /etc/gitlab/gitlab.rb
sudo sed -i '2385s/#//' /etc/gitlab/gitlab.rb
```
1. Re-run the `grep` command from Step 1 to verify the line was modified as intended.
1. Reconfigure to apply the changes.
```bash
sudo gitlab-ctl reconfigure
```
(Note: since we're using single node Omnibus, Praefect is not actually in use as a service. Praefect is only enabled if using Gitaly cluster.)

### C. Manage log retention
GitLab uses **logrotate** to manage retention of all logs except those managed by the **runit** service manager (runit uses a separate service logging daemon called **svlogd**). Log retention can be configured in `/etc/gitlab/gitlab.rb`.
1. Examine default logrotate retention settings.
```bash
sudo grep -n 'logrotate' /etc/gitlab/gitlab.rb
```
(Optional: you can also see the default retention settings for the runit-managed logs).
```bash
sudo grep -n 'svlogd' /etc/gitlab/gitlab.rb
```
1. It appears logrotate (and svlogd) rotate log files every day, and retain 30 days worth of logs. We can verify this by looking inside the service log directories.
```bash
sudo ls /var/log/gitlab/puma
```
Note the gzipped archive files for Puma's stdout and stderr logs from previous days. 
1. Change logrotate's behavior to rotate log files weekly. As before, modify the line `sed` edits accordingly if it is different in your `gitlab.rb`.
```bash
sudo sed -i '1535s/daily/weekly/g' /etc/gitlab/gitlab.rb
sudo sed -i '1535s/#//' /etc/gitlab/gitlab.rb
```
1. Change logrotate's retention period to 1 year of retained log files. As before, modify the line `sed` edits accordingly if it is different in your `gitlab.rb`.
```bash
sudo sed -i '1538s/30/52/g' /etc/gitlab/gitlab.rb
sudo sed -i '1538s/#//' /etc/gitlab/gitlab.rb
```
1. Run the following again to ensure your changes are properly written to `gitlab.rb`.
```bash
sudo grep -n 'logrotate' /etc/gitlab/gitlab.rb
```
1. Reconfigure to apply the changes.
```bash
sudo gitlab-ctl reconfigure
```

### D. Change log formatting
Many logs are JSON formatted by default. Admins may wish to configure text formatting depending on the log ingestion system used, or for readability.
1. Check the current log formats for GitLab services.
```bash
sudo grep -n '_format' /etc/gitlab/gitlab.rb
```
1. Run `sudo gitlab-ctl tail gitaly/current` to see the current JSON output for Gitaly logging.
1. Change Gitaly's log format from JSON to text formatting. As before, modify the line `sed` edits accordingly if it is different in your `gitlab.rb`.
```bash
sudo sed -i '2300s/json/text/' /etc/gitlab/gitlab.rb
sudo sed -i '2300s/#//' /etc/gitlab/gitlab.rb
```
1. Re-run the `grep` command from Step 1 to verify the line was modified as intended. The line should now read `gitaly['logging_format'] = "text"`. 
1. Reconfigure to apply the change.
```bash
sudo gitlab-ctl reconfigure
```
1. Verify the updated formatting.
```bash
sudo gitlab-ctl tail gitaly/current
```
You should see the log output is now text formatted instead of JSON formatted.

## Suggestions?

If you’d like to suggest changes to the GitLab Advanced System Administration Hands-on Guide, please submit them via merge request.


