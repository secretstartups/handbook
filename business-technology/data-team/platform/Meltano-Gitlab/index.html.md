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

We run Meltano in its own Kubernetes cluster with in the `meltano` namespace. The primary project is https://gitlab.com/gitlab-data/meltano-gitlab which is a fork of https://github.com/Mashey/gitlab-meltano.

The kubernetes cluster is running [GCP as meltano-mashey](https://console.cloud.google.com/kubernetes/clusters/details/us-west1-a/meltano-mashey/details?project=gitlab-analysis). 

The UI of Meltano is not exposed to internet. To view the logs we have to look in the kubernetes container logs. It can be found under "LOGS" tab or under the overview page by selecting the `meltano-gitlab` cluster under workloads.

To update what extractors are being used, update the `meltano.yml` file in the main project. Add a git tag after the change is merged and update the gitlab-app.yml kubernetes manifest to point to the new image.

Meltano uses Airflow internally and we use Cloud SQL as the metadata database. The [`meltan0` database](https://console.cloud.google.com/sql/instances/meltano/overview?project=gitlab-analysis).
```
#Connect to the Kubernetes cluster from local(Prerequisites is Google cloud SDK installed). In case the command doesn't work then connect to GCP and select Cluster under Kubernetes and select connect to cluster. It will reveal the latest command. 
gcloud container clusters get-credentials meltano-gitlab --zone us-west1-a --project gitlab-analysis
```

Many Kubernetes commands are similar to what we use for Airflow, except the flag `--namespace=meltano` or `-n=meltano` is used. For example:

```
# Editing Secrets
$  kubectl edit secrets tap-secrets --namespace=meltano
$  kubectl edit secrets admin-sdk --namespace=meltano
$  kubectl edit secrets cloud-sql --namespace=meltano
```



```
# Exec into a container
$  kubectl exec -ti meltano-gitlab-85bf9f958b-bbffl -c gitlab /bin/bash --namespace=meltano
```

```
# Applying the updated manifest does NOT require the namespace
$  kubectl apply -f ./gitlab-app.yaml
```

```
# Delete the deployment of meltano namespace
kubectl delete deployment meltano-gitlab --namespace=meltano
```
Watch the [video](https://youtu.be/H7m99t4IghM) on walkthrough of `Meltano setup in GKE` 

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
- Connect to the required cluster. In out case `meltano-gitlab` using command `gcloud container clusters get-credentials meltano-mashey --zone us-west1-a --project gitlab-analysis`
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





