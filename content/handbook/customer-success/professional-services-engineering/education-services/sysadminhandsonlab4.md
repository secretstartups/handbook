---
aliases: /handbook/customer-success/professional-services-engineering/education-services/sysadminhandsonlab4.html
title: "GitLab System Administration Hands-on Guide: Lab 4"
description: "This hands-on lab guide is designed to walk you through the lab exercises used in the GitLab System Administration course."
---

# GitLab System Administration Hands-on Guide: Lab 4


## LAB 4- BACKUP AND RESTORE GITLAB

### A. Configure backup settings

1. Open an SSH session on your GitLab instance server.
2. Search for the location of backup settings in gitlab.rb.

     ```bash
   sudo grep -n backup /etc/gitlab/gitlab.rb
     ```

3. Note the line number for the setting `gitlab_rails['backup_path']`.
4. Create a new location to hold GitLab backups.

     ```bash
   sudo mkdir /tmp/backups
     ```

5. Edit gitlab.rb to change the backup path. Replace "123" with the line number noted in step 3.

    ```bash
   sudo sed -i '123s@\/var\/opt\/gitlab\/backups@\/tmp\/backups@' /etc/gitlab/gitlab.rb
   sudo sed -i '123s/#//' /etc/gitlab/gitlab.rb
    ```

6. Reconfigure to apply the changes.

    ```bash
   sudo gitlab-ctl reconfigure
    ```

### B. Backup the GitLab instance

1. Take a full backup of the GitLab instance.

    ```bash
   sudo gitlab-backup create
    ```

2. After the backup completes, go to the backup location and inspect the backup file.

    ```bash
   sudo ls /tmp/backups
   sudo tar -tvf /tmp/backups/BACKUP_FILENAME
    ```

### C. Make some changes to GitLab settings

1. Sign into your GitLab instance with a web browser and select **Menu > Admin**.
2. In the left sidebar, select **Settings** > **General**.
3. Expand **Account and limit** and change the fields shown to some random numbers of your choosing.
4. Select **Save changes**.
5. Refresh the page and verify your changes were applied.

### D. Restore from backup

1. Return to the SSH session on your GitLab instance server.
2. Move your backup file to the location GitLab requires for performing the restore.

    ```bash
   sudo cp /tmp/backups/BACKUP_FILENAME /var/opt/gitlab/backups/
    ```

3. Ensure the backup file has correct permissions for performing the restore.

    ```bash
   sudo chown git:git /var/opt/gitlab/backups/BACKUP_FILENAME
    ```

4. Stop the puma and sidekiq services before restoring.

    ```bash
   sudo gitlab-ctl stop puma
   sudo gitlab-ctl stop sidekiq
   sudo gitlab-ctl status
    ```

5. Restore from backup. Replace BACKUP_TIMESTAMP with the portion of the backup filename up to and including `-ee`.

    ```bash
   sudo gitlab-backup restore BACKUP=BACKUP_TIMESTAMP
    ```

    (For example, if the backup file name starts with 1663207732_2022_09_15_15.3.3-ee, the command will be `sudo gitlab-backup restore BACKUP=1663207732_2022_09_15_15.3.3-ee`).

6. Type `yes` when prompted during the restore operation. You may see what looks like error messages. That is normal.

7. Restart sidekiq and puma services.

    ```bash
   sudo gitlab-ctl start sidekiq
   sudo gitlab-ctl start puma
   sudo gitlab-ctl status
    ```

8. Wait up to 5 minutes before refreshing GitLab in your web browser. Verify that the Account and Limit settings you changed revert back to the defaults (i.e. when the backup was taken).


### SUGGESTIONS?

If you’d like to suggest changes to the GitLab System Admin Basics Hands-on Guide, please submit them via merge request.


