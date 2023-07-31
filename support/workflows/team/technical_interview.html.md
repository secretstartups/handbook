---
layout: handbook-page-toc
title: Technical Interview Setup
category: Support Team
description: Information about setting up technical interview instances
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Technical interview

## Setup technical interview instance through Sandbox

### Initial setup in Sandbox

1. https://gitlabsandbox.cloud/cloud
2. Use GCP - I tested this only on GCP
3. Select your account (If not selected)
4. “Create Terraform Environment”
5. For Cloud account select your account (if not already selected)
6. Select the Environment Template “support-interview-resources-template-v2-x”
7. Give it an Environment Name
    1. Since we are never deleting this Environment only the VM instance behind it, give it a good name that represents what it’s for.
8. Click “Create Environment”
9. Wait until you are back in the overview before continuing to the next section.

### Configure your interview instance

1. After the name you just gave your interview instance click the button “view Terraform configuration” (the book)
2. You must modify the “main.tf” file with the following.
    1. Update your ssh_key
3. Commit the change and move on to “run your first pipeline”

### Run your first pipeline

1. Wait a moment until “Dry Run” has finished successfully.
2. Manually run “Everything” and wait till it’s finished.
    1. Get something to drink, the job can take up to 15 minutes to finish.

### Finally Finished

You now have successfully created your interview instance with the Sandbox.
You can connect to your instance through 2 different methods.

1. gcloud compute ssh --zone “<your_zone>” “<instance_name>”  --project “<your_name>-<ID>“
2. ssh root@<IP_given_in_the_job>
