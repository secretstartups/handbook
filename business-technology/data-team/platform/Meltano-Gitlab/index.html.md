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

The kubernetes cluster is running [GCP as meltano-gitlab](https://console.cloud.google.com/kubernetes/clusters/details/us-west1-a/meltano-gitlab/details?project=gitlab-analysis). 

The UI of Meltano is not exposed to internet. To view the logs we have to look in the kubernetes container logs. It can be found under "LOGS" tab or under the overview page by selecting the `meltano-gitlab` cluster under workloads.

To update what extractors are being used, update the `meltano.yml` file in the main project. Add a git tag after the change is merged and update the gitlab-app.yml kubernetes manifest to point to the new image.

Meltano uses Airflow internally and we use Cloud SQL as the metadata database. The [`meltano-gitlab` database](https://console.cloud.google.com/sql/instances/meltano-gitlab/overview?project=gitlab-analysis).
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
