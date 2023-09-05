---
layout: handbook-page-toc
title: "Snowflake Guide"
description: "Snowflake Data Warehouse Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## What and why

[Snowflake](https://www.snowflake.com/) is our Enterprise Data Warehouse (EDW) and is the core technology in our [Enterprise Data Platform](https://about.gitlab.com/handbook/business-technology/data-team/platform/#our-data-stack).

## What does Snowflake Contain?

Snowflake contains all of our analytical data and [Data Source](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-sources)s defines the set of original/raw data available.

## Related Content

* [Access](https://about.gitlab.com/handbook/business-technology/data-team/platform/#warehouse-access)
* [Support Portal Access](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-warehouse)
* [Compute Resources](https://about.gitlab.com/handbook/business-technology/data-team/platform/#compute-resources)
* [Data Masking](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-masking)
* [Backups](https://about.gitlab.com/handbook/business-technology/data-team/platform/#backups)

## Logging In

Login to Snowflake from Okta.


## Navigating the UI

The [Snowflake Quick Tour of the Web Interface](https://docs.snowflake.com/en/user-guide/snowflake-manager.html) provides comprehensive documentation for the UI.

## Snowflake SNS integration for snowflake snowpipe and task for failure 

Snowpipe can push error notifications to a cloud messaging service when it encounters errors while loading data i.e. through snowpipe or on failure of snowflake task. The notifications describe the errors encountered in each file, enabling further analysis of the data in the files for snowpipe. Task error notifications trigger a notification describing the errors encountered when a task executes SQL code. The notifications describe any errors encountered during task execution.

Currently, cross-cloud support is not available for push notifications. Configure error notification support for the messaging service provided by the cloud platform where your Snowflake account is hosted.

Since our Snowflake is hosted in AWS  the setup for push notification has been done in AWS. 

For both snowpipe and snowflake task the SNS integration is same. 
Over here [enabling-error-notifications](https://docs.snowflake.com/en/user-guide/data-load-snowpipe-errors-sns#enabling-error-notifications) Snowflake has defined steps for the same.
Below covered details of the name and commands used for setup.
Below I have covered details of the name and commands used for setup.

### **Step 1: Created SNS topic in AWS  named `gitlab-snowflake-notification` following the instructution.**  
For this full access on SNS topic should be provided to the user
Same SNS topic can be used for all snowflake task and snowpipe push notification. 
Capture the ARN value for the topic as it will be required in step 4.

### **Step 2: Requested IT help for  Creating the IAM Policy in AWS** 
It Create an AWS Identity and Access Management (IAM) policy that grants permissions to publish to the SNS topic.

### **Step 3: Requested IT help for Creating the AWS IAM Role in AWS.**
Create an AWS IAM role on which to assign privileges on the SNS topic
Record the Role ARN value located on the role summary page.

### **Step 4: Creating the Notification Integration in snowflake** 
To create Notification Integration Accountadmin priviliges are required. 

```SQL
CREATE OR REPLACE NOTIFICATION INTEGRATION gitlab_data_notification_int
  ENABLED = true
  TYPE = QUEUE
  NOTIFICATION_PROVIDER = AWS_SNS
  DIRECTION = OUTBOUND
  AWS_SNS_TOPIC_ARN = '<topic_arn>'
  AWS_SNS_ROLE_ARN = '<iam_role_arn>';
  ```

 ### **Step 5: Granting Snowflake Access to the SNS Topic**
 
  Run below query in snowflake  
  ```
    DESC NOTIFICATION INTEGRATION gitlab_data_notification_int;
  ```
  And capture **SF_AWS_IAM_USER_ARN** and **SF_AWS_EXTERNAL_ID** 
 post this modify  the Trust Relationship in the IAM Role by setting 
 ```
 {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "AWS": "<sf_aws_iam_user_arn>"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "<sf_aws_external_id>"
        }
      }
    }
  ]
}
 ```

 This will require the IT help to update the policy. 


###  **Step 6: Grant usage permission on integration to loader role**

 With Accountadmin role execute below in snowflake.
 ```
 GRANT USAGE on  INTEGRATION gitlab_data_notification_int to role loader;
```

**Note:** `Above  setup should not be modified because modifying any step will require all the step from 1 to 6 redo  as the integration will break.`

### **Step 7: Create Lambda function to send slack notification** 
For this the user should have Create lambda function permission in AWS.

For Creating lambda function select 
- `Author from scratch`
- Give unique name to lambda function
- Select any of the python version 
- Architecture `Default`
- Under Change default execution role  select `Use an existing role` and under this select `Gitlab-lambda-snowflake`
- Click create function 

Once the function is created under code you can setup the basic python code to send the slack notification and example is below 
``` python
import urllib3
import json

http = urllib3.PoolManager()


def lambda_handler(event, context):
    url = "<Webhook URL >"

    #print(event)
    event_body = event["Records"]
    # Convert the input from a JSON string into a JSON object.
    payload = json.dumps(event_body)
    
    msg = {
        "channel": "#data-pipelines",
        "username": "SNOWFLAKE_TASK_PIPE",
        "text": payload,
        "icon_emoji": "snowflake"}

    encoded_msg = json.dumps(msg).encode("utf-8")
    resp = http.request("POST", url, body=encoded_msg)
    print(
        {
            #"message": event['Records'],
            "status_code": resp.status,
            "response": resp.data,
        }
    )

```

Above function will send all the event notification information into slack like below 

```
[{"EventSource": "aws:sns", "EventVersion": "1.0", "EventSubscriptionArn": "arn:aws:sns:us-west-2:855262394183:gitlab-snowflake-notification:1267d1fc-5ba2-4a9c-8686-ecb8e6a724d3", "Sns": {"Type": "Notification", "MessageId": "0670a05f-b745-573e-9329-fd766ed43654", "TopicArn": "arn:aws:sns:us-west-2:855262394183:gitlab-snowflake-notification", "Subject": null, "Message": "{\"version\":\"1.0\",\"messageId\":\"6b55da66-7491-4bf4-a715-2e19b2c3bf0e\",\"messageType\":\"USER_TASK_FAILED\",\"timestamp\":\"2023-07-13T10:51:48.517Z\",\"accountName\":\"GITLAB\",\"taskName\":\"VPRAKASH_PREP.PUBLIC.MYTASK\",\"taskId\":\"01ad98eb-001f-9ff5-0000-0000000014e7\",\"rootTaskName\":\"VPRAKASH_PREP.PUBLIC.MYTASK\",\"rootTaskId\":\"01ad98eb-001f-9ff5-0000-0000000014e7\",\"messages\":[{\"runId\":\"2023-07-13T10:51:45.445Z\",\"scheduledTime\":\"2023-07-13T10:51:45.445Z\",\"queryStartTime\":\"2023-07-13T10:51:48.234Z\",\"completedTime\":\"2023-07-13T10:51:48.498Z\",\"queryId\":\"01ad98eb-0406-74f1-0000-289d581e19ba\",\"errorCode\":\"002003\",\"errorMessage\":\"SQL compilation error:\\nTable 'MYTABLE' does not exist or not authorized.\"}]}", "Timestamp": "2023-07-13T10:52:01.923Z", "SignatureVersion": "1", "Signature": "P2dOGdYrEyTyurGBRDOzDlE0jGOcMtDSHk6Pt0jQmM5l7jBVvXwFsJRfnsTr/ElApxW4uhUPrxuc0wd1+ZuaWhG4XVxnHcNhTbknSdnkb5diXRhbcl7NIdcBJaLihwdjzJzSDYRShlCpIiuBqogO5JSOhkUX9HWjamLjyFJ/Lk0f2gaR4V6fe1BPJr+O08CB6Kz5i4O4iVlBA/HtUEpxvR2P+fWSfwleV61KE7IJrbjWG/znZhkpNHlQb7Lx0/riSTkSu1q9EA4NUCd0omwPdPwj/48CJFn6rCoUTrcQPfOMA99BXtEjAn4PxOfr/d+IpMMWOn/JqR5LElmSXKJpeA==", "SigningCertUrl": "https://sns.us-west-2.amazonaws.com/SimpleNotificationService-01d088a6f77103d0fe307c0069e40ed6.pem", "UnsubscribeUrl": "https://sns.us-west-2.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-west-2:855262394183:gitlab-snowflake-notification:1267d1fc-5ba2-4a9c-8686-ecb8e6a724d3", "MessageAttributes": {}}}]
```

Above need modification and to make it more readable. 

### **Step 7: Add trigger to the Lambda function as the SNS topic which is created in step 1** 

This will trigger the lambda function which will send the Slack notification 

### **Step 8: Alter snowflake snowpipe and snowflake task to send notification on failure** 

In this example I have done it for one of snowflake task 
```SQL
ALTER TASK RAW.PROMETHEUS.PROMETHEUS_LOAD_TASK suspend;
ALTER TASK RAW.PROMETHEUS.PROMETHEUS_LOAD_TASK SET ERROR_INTEGRATION = gitlab_data_notification_int;
ALTER TASK RAW.PROMETHEUS.PROMETHEUS_LOAD_TASK resume;
```

The task should be suspended in order to apply the integration. 

Once above is defined on any failure the notification will be sent to slack channel. 

All the required permission in AWS account has been provided to all data platform team member. Also the Permission has been granted to loader role to use snowflake integration.

**Note:** Snowpipe error notifications only work when the ON_ERROR copy option is set to SKIP_FILE (the default). Snowpipe will not send any error notifications if the ON_ERROR copy option is set to CONTINUE.

You can use the `NOTIFICATION_HISTORY` table function to query the history of notifications sent through Snowpipe. For more information, refer to [NOTIFICATION_HISTORY](https://docs.snowflake.com/en/sql-reference/functions/notification_history).
