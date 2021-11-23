---
layout: handbook-page-toc
title: "Meltano At Gitlab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Quick Links

[Airflow](https://airflow.gitlabdata.com){:.btn .btn-purple-inv}
[Data Image Project](https://gitlab.com/gitlab-data/data-image){:.btn .btn-purple-inv}
[GitLab Data Utils Project](https://gitlab.com/gitlab-data/gitlab-data-utils/){:.btn .btn-purple-inv}
[Python Guide](/handbook/business-technology/data-team/platform/python-guide){:.btn .btn-purple-inv}

## Meltano

Currently 3 project repository is in place for Meltano.
| SNo.  | Repository | Description | 
| - | ---------- | ----------- |
| 1 | [Gitlab-data-meltano](https://gitlab.com/gitlab-data/gitlab-data-meltano) | his project hold infrastructure related code i.e. it hold kubernetes pods creation information in `gitlab-app.yaml` and configuration in `meltano.yml`. | 
| 2 | [meltano_taps](https://gitlab.com/gitlab-data/meltano_taps) |  This is primary repository which holds the TAP source code. It has at the moment source code for `TAP-XACTLY` and `TAP-ADAPTIVE ` | 
| 3 | [tap-zengrc](https://gitlab.com/gitlab-data/tap-zengrc) | This project which hold tap-zengrc source code.  | 


### Kubernetes cluster Setup with terraform explained for Meltano.

We host Meltano in Kubernetes cluster of one node pool named `meltano-pool` with one active node. The node pool is not scalable. 
The main definition of terraform is present in the file `meltano_infra/meltnao_gcp_gke.tf` in the [gitlab-data-meltano](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/tree/main). In the repo we have 2 other tfvar file

- meltano_infra/meltano_gke_production.tfvars   -- For production cluster creation 
- meltano_infra/meltano_gke_staging.tfvars -- For staging environment cluster creation

In order to do the deployment of terraform script you need to be owner at the moment.In this terraform script we are storing the state of the terraform into remote location in GCS in bucket `gitlab-analysis-data-terraform-state/meltano-production/state`. This gives added advantage that any team member with proper permission will be able to update,delete and create the cluster from last time it has been created.

Below is the step which we need to create the kubernetes cluster  and what thing we need to keep in mind when working on staging cluster and production. So that we don't corrupt the remote state. 

Step 1: Run the initialize command `terraform init` in your local from folder `meltano_infra`.  
Step 2: Select the proper workspace to do the update, destroy or create the cluster.
To see all the workspace list run the command.     
`terraform workspace list`
```
╰─$ terraform workspace list
* default
  production
  staging
```
It might show that the current workspace is pointed to default. We don't use default workspace. We have 2 types of workspace 
1) production 
2) staging

To which  ever environment you want to change use command `terraform workspace select <workspace name>` to select that environment. For production run `terraform workspace select production`.
Ensure before running next command that you are in correct workspace i.e. to environment you want to do the update. To do that you can do below
```
╰─$ terraform workspace list
  default
* production
  staging
```
`*` indicate current workspace.
  
**All about workspace in terraform**

This happens for the first time , it will be required only when you  want to setup a complete new bucket.Not required otherwise.
As soon you initialise the  terraform using `terraform init` in the directory it will create the `default.tfstate` in the GCS bucket in path `gitlab-analysis-data-terraform-state/meltano-production/state`.
Then create the workspace using `terraform workspace new staging ` for different environment.
For meltano we have 2 workspace one staging and other is production. We don't run any thing on staging , it is required only to test the cluster creation.

```terraform
╭─vedprakash@veds-MacBook-Pro ~/repos/gitlab-data-meltano/meltano_infra ‹Terraform-script-meltano*›
╰─$ terraform workspace new staging                                                                                                                                                                                          1 ↵
Created and switched to workspace "staging"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
╭─vedprakash@veds-MacBook-Pro ~/repos/gitlab-data-meltano/meltano_infra ‹Terraform-script-meltano*›
╰─$ terraform workspace new production
Created and switched to workspace "production"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
╭─vedprakash@veds-MacBook-Pro ~/repos/gitlab-data-meltano/meltano_infra ‹Terraform-script-meltano*›
╰─$
```

Once above is done it will create 2 state file in GCS bucket named `production.tfstate` and `staging.tfstate`. This is required because we don't want to mix with production cluster while trying to change staging cluster and vice versa.

To select production use command `terraform workspace select production ` or for staging use command `terraform workspace select  staging`.
When you switch between workspace you will the statement `Switched to workspace "staging".` or name of any workspace we want to switch.

Step 3:
Now to create the cluster we need to run below command `terraform plan -var-file=meltano_gke_production.tfvars -out "plan_to_apply"` this will generate the plan for the cluster creation of staging enviornment.
all looks good then run the command `terraform apply "plan_to_apply"`
It will give output like below
```
google_container_cluster.meltano_cluster: Creating...
google_container_cluster.meltano_cluster: Still creating... [10s elapsed]
google_container_cluster.meltano_cluster: Still creating... [20s elapsed]
google_container_cluster.meltano_cluster: Still creating... [30s elapsed]
google_container_cluster.meltano_cluster: Creation complete after 5m1s [id=projects/gitlab-analysis/locations/us-west1-a/clusters/data-ops-meltano-staging]
google_container_node_pool.meltano-pool: Creating...
google_container_node_pool.meltano-pool: Still creating... [10s elapsed]
google_container_node_pool.meltano-pool: Still creating... [20s elapsed]
google_container_node_pool.meltano-pool: Still creating... [30s elapsed]
google_container_node_pool.meltano-pool: Still creating... [40s elapsed]
google_container_node_pool.meltano-pool: Still creating... [50s elapsed]
google_container_node_pool.meltano-pool: Still creating... [1m0s elapsed]
google_container_node_pool.meltano-pool: Creation complete after 1m7s [id=projects/gitlab-analysis/locations/us-west1-a/clusters/data-ops-meltano-staging/nodePools/meltano-pool-staging]
```
Then in the cluster page we can see the cluster created with name `data-ops-meltano` for meltano production and for staging `data-ops-meltano-staging`.The node pool is also suffixed with -staging for staging environment.
As this point onward we don't do anything in staging environment. Although we can very well use it but it will require creation of separate airflow database postgres in cloud sql for airflow running in meltano.

The Kubernetes cluster is running [data-ops-meltano](https://console.cloud.google.com/kubernetes/clusters/details/us-west1-a/data-ops-meltano/details?project=gitlab-analysis). 

The UI of Meltano is not exposed to internet. To view the logs we have to look in the kubernetes container logs. It can be found under "LOGS" tab or under the overview page by selecting the `meltano-gitlab` cluster under workloads.

Now the cluster is ready all we need to do is applying the configuration on the cluster. Follow below steps for the same.

Step 1: Connect to the Kubernetes cluster from local(Prerequisites is Google cloud SDK installed). In case the command doesn't work then connect to GCP and select Cluster under Kubernetes and select connect to cluster. It will reveal the latest command.
At present the production cluster has been setup with name `data-ops-meltano` following naming convention of other data team cluster.

`gcloud container clusters get-credentials data-ops-meltano --zone us-west1-a --project gitlab-analysis`

Step 2: We run Meltano in its own Kubernetes cluster with in the `meltano` namespace. Create namespace `meltano` by using the file kube_namespace_secret_yaml/namespace_meltano.yaml using below command.  
`kubectl apply -f namespace_meltano.yaml`

Step 3: Create all the required named secret using below command from the directory `kube_namespace_secret_yaml`. We have used YAMl file to ensure consistency across all GKE environment.
```
# This will create secret airflow-db
kubectl apply -f kube_secret_airflow_db.yaml
# This will create secret airflow
kubectl apply -f kube_secret_airflow.yaml
# This will create secret cloud-sql
kubectl apply -f kube_secret_cloud_sql.yaml
# This will create secret meltano-db
kubectl apply -f kube_secret_meltano_db.yaml
# This will create secret tap-secrets
kubectl apply -f kube_secret_tap_secrets.yaml
Once all are created to check the list of secret created use below command
kubectl get secrets --namespace=meltano
# Below should be the output.
```

Step 3: Edit each of the secret and add the key:value to them. For each one of them the value is stored in 1 password as a file. We need open it and paste the required section from there. Below is the mapping of each secret file and secret name under which it is stored in 1password under `meltano_secret`.

|SNo|Secret Name|1password secret name|
| - | ---------- | ----------- |
|1|airflow|meltano_secret_airflow|
|2|airflow-db|meltano_secret_airflow_db|
|3|cloud-sql|meltano_secret_cloud_sql|
|4|meltano-db|meltano_secret_meltano_db|
|5|tap-secrets|meltano_secret_tap_secrets|

To edit secrets use below command 
```
kubectl edit secrets cloud-sql -o yaml --namespace=meltano
kubectl edit secrets meltano-db -o yaml --namespace=meltano
kubectl edit secrets airflow -o yaml --namespace=meltano
kubectl edit secrets tap-secrets -o yaml --namespace=meltano
kubectl edit secrets airflow-db -o yaml --namespace=meltano
```

Step 4: The final step in the configuration process. Apply the configuration or manifest of meltano to the cluster. 
```
# Applying the  manifest does NOT require the namespace
kubectl apply  -f gitlab-app.yaml
```
To reapply in case of adding new variables or change the image name use first delete the existing configuration and reapply. To delete simply use 
```
# Delete the deployment of namespace
kubectl delete  -f gitlab-app.yaml
```

At this stage whole of production environment is up and running of meltano in GKE with latest configuration of all tap present in  `meltano.yml` . 




For new developed taps, we will create a new repository per tap, like the tap-zengrc or under different folder [meltano_taps](https://gitlab.com/gitlab-data/meltano_taps).


To update what extractors are being used, update the `meltano.yml` file in the main project [Gitlab-data-meltano](https://gitlab.com/gitlab-data/gitlab-data-meltano). Add a git tag after the change is merged and update the gitlab-app.yml kubernetes manifest to point to the new image.

Meltano uses Airflow internally and we use Cloud SQL as the metadata database. The [`meltano` database](https://console.cloud.google.com/sql/instances/meltano/overview?project=gitlab-analysis).
```
#Connect to the Kubernetes cluster from local(Prerequisites is Google cloud SDK installed). In case the command doesn't work then connect to GCP and select Cluster under Kubernetes and select connect to cluster. It will reveal the latest command. 
gcloud container clusters get-credentials meltano-mashey --zone us-west1-a --project gitlab-analysis
```
Currently in the setup we have below secret defined in the cluster. 
- cloud-sql
- meltano-db
- airflow
- tap-secrets
- airflow-db





### Exec into a container

```
kubectl exec -it gitlab-production-5dd4c79694-vwwtm  -c tap-xactly /bin/bash
```
**Notes:** The pod name might change so look for the pod name in either UI or  by using the command   `kubectl get pods`

```
# Applying the updated manifest does NOT require the namespace
kubectl apply  -f gitlab-app.yaml
```

```
# Delete the deployment of  namespace
kubectl delete   -f gitlab-app.yaml
```
Watch the [video](https://youtu.be/H7m99t4IghM) on walkthrough of `Meltano setup in GKE` 

## Add Config variable to meltano setup to be used by TAPs. 

Whenever we need to pass on the config to Meltano taps. We need to do the below 5 activity.  

1) Decide the unique variable name and add those variable values to the Kubernetes secret named `tap-secrets` in the [cluster](`https://console.cloud.google.com/kubernetes/clusters/details/us-west1-a/meltano-mashey/details?project=gitlab-analysis`).
The command to edit the secret file is `kubectl edit secret tap-secrets  -o yaml `  
2) Add those variables in the `gitlab-app.yaml` file using references like below. 
```
 # Kubernetes Secrets:: zengrc
        - name: ZENGRC_USERNAME # Keep it unique in the environment
          valueFrom:
            secretKeyRef:
              name: tap-secrets # this is the secret name under which we have added the secrets it can be any secret file present.
              key: ZENGRC_USERNAME # Keep it unique in the secret file.
        - name: ZENGRC_PASSWORD # Keep it unique in the environment
          valueFrom:
            secretKeyRef:
              name: tap-secrets # this is the secret name under which we have added the secrets it can be any secret file present.
              key: ZENGRC_PASSWORD # Keep it unique in the environment
```
3) After modifying the file, we need to apply the newly prepared deployment file to the cluster. In order to do this, we need to drop the existing deployment and apply the new one. Use below to command for the same. 
- `kubectl delete   -f gitlab-app.yaml`  to delete the existing deployment. 
- `kubectl apply  -f gitlab-app.yaml ` to apply the new deployment. 

4) Refer to these defined variables in the config file i.e. `meltano.yml` like below 
```
config:
  username: $ZENGRC_USERNAME
  password: $ZENGRC_PASSWORD
```

The reason for doing this is because the username and password is not a unique key in the environment it is being used by other taps as well so to pass on the correct TAPS config we pass the reference to the lube secret variable name.    
5) We need to ensure we copy the latest `meltano.yml` file to the container. using the below command. 
`kubectl cp meltano.yml default/<**pod-name**>:/projects`

Check everything is fine by running the schedule of all taps. 
`meltano schedule run zengrc-to-snowflake`

## Adding Tap to the meltano.yml file
At the moment the current setup is adding the tap information to [meltano.yml](https://gitlab.com/gitlab-data/gitlab-data-meltano/-/blob/main/meltano.yml) file by creating a MR. Once the required information is added to meltano.yml file follow below steps to enable the TAP. 
Below is the sample of Require Information we need to add for each TAP. 
```
## The Name of the TAP under plugins: -- > extractors:

- name: tap-zengrc
    namespace: tap_zengrc
    pip_url: git+https://gitlab.com/gitlab-data/tap-zengrc
    executable: tap-zengrc
    capabilities:
    - discover
    settings:
    - name: base_url
    - name: username
    - name: password
    config:
      base_url: https://gitlab.api.zengrc.com/api/v2    
## Schedules of the tap under schedules section
schedules:
- name: zengrc-to-snowflake
  extractor: tap-zengrc
  loader: target-snowflake
  transform: skip
  interval: '@daily'
  start_date: 2021-07-13
```
Then follow below steps to copy the meltano.yml to the running container. 
- Connect to the required cluster. In our case `meltano-mashey` which is current active cluster using command `gcloud container clusters get-credentials meltano-mashey --zone us-west1-a --project gitlab-analysis`
- Connect to the container using command `kubectl exec -it gitlab-production-5f8fd9ccb-npvxl  -c tap-xactly /bin/bash`. Note:- Pod name might change to get the correct pod name use `kubectl get pods`
- Copy modified meltano.yml to  container from local `kubectl cp meltano.yml default/gitlab-production-5f8fd9ccb-npvxl:/projects`
- Try running the schedule `meltano schedule run zengrc-to-snowflake` for the first time it will ask to install the extractor below is the error we got even in our session.
```
    meltano          | Running extract & load...
    meltano          | ELT could not be completed: Cannot start extractor: Executable 'tap-zengrc' could not be found. Extractor 'tap-zengrc' may not have been installed yet using `meltano install extractor tap-zengrc`, or the executable name may be incorrect.
    ELT could not be completed: Cannot start extractor: Executable 'tap-zengrc' could not be found. Extractor 'tap-zengrc' may not have been installed yet using `meltano install extractor tap-zengrc`, or the executable name may be incorrect.
```
- Post that installed the extractor
```
  root@gitlab-production-5f8fd9ccb-q6gt4:/projects# meltano install extractor tap-zengrc
  Installing 1 plugins...
  Installing extractor 'tap-zengrc'...
  Installed extractor 'tap-zengrc'
```
- Post that re run the command `meltano schedule run zengrc-to-snowflake` if this keep pushing data in snowflake then the TAP is working as expected. 





