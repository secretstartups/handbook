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

We run Meltano in its own Kubernetes cluster with in the `default` namespace. Currently 3 project repository is in place. The Kubernetes cluster is running [GCP as meltano-mashey](https://console.cloud.google.com/kubernetes/clusters/details/us-west1-a/meltano-mashey/details?project=gitlab-analysis). 

The UI of Meltano is not exposed to internet. To view the logs we have to look in the kubernetes container logs. It can be found under "LOGS" tab or under the overview page by selecting the `meltano-gitlab` cluster under workloads.

For Meltano we have the following repositories. 

|   | Repository | Description | 
| - | ---------- | ----------- |
| 1 | [Gitlab-data-meltano](https://gitlab.com/gitlab-data/gitlab-data-meltano) | his project hold infrastructure related code i.e. it hold kubernetes pods creation information in `gitlab-app.yaml` and configuration in `meltano.yml`. | 
| 2 | [meltano_taps](https://gitlab.com/gitlab-data/meltano_taps) |  This is primary repository which holds the TAP source code. It has at the moment source code for `TAP-XACTLY` and `TAP-ADAPTIVE ` | 
| 3 | [tap-zengrc](https://gitlab.com/gitlab-data/tap-zengrc) | This project which hold tap-zengrc source code.  | 

For new developed taps, we will create a new repository per tap, like the tap-zengrc. 

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

#### Creating secret file 
```
kubectl create secret generic cloud-sql
kubectl create secret generic meltano-db
kubectl create secret generic airflow
kubectl create secret generic tap-secrets	
kubectl create secret generic airflow-db
```
#### Editing Secrets
```
kubectl edit secrets cloud-sql 
kubectl edit secrets meltano-db
kubectl edit secrets airflow
kubectl edit secrets tap-secrets
kubectl edit secrets airflow-db
```


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





