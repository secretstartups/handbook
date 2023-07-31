---
layout: markdown_page
title: Troubleshooting GitLab Cloud Native chart deployments
category: Self-managed
description: Using the kubeSOS to troubleshoot GitLab Cloud Native chart deployments
---

## What is KubeSOS

[KubeSos](https://gitlab.com/gitlab-com/support/toolbox/kubesos/-/tree/master) is a tool that uses [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl) and [helm](https://helm.sh/) to retrieve GitLab cluster configuration and logs from GitLab Cloud Native chart deployments. This information is then zipped into a tar file and shared with the support team to help with troubleshooting GitLab deployments.

### Requirements

* kubectl client v1.14+
* helm 2.12+

## Usage

You can either download the script:

```bash
wget https://gitlab.com/gitlab-com/support/toolbox/kubesos/-/raw/master/kubeSOS.sh

chmod +x kubeSOS.sh
./kubeSOS.sh [flags]

```

| Flags | Description | Required   | Default
| :---- | :---------- | :--------- | :------
| `-n`  | namespace   | No | "default"
| `-r`  | helm chart release | No | "gitlab"

Or use `curl`:

```bash
curl https://gitlab.com/gitlab-com/support/toolbox/kubesos/raw/master/kubeSOS.sh | bash -s -- [flags]
```

Data will be archived to `kubesos-<timestamp>.tar.gz`

### Extracting the archive

Use the `tar` linux utility to extract the data into a folder

```bash
tar -zxvf kubesos-<timestamp>.tar.gz
```

## Troubleshoot a Gitlab installation

There are two main areas to check when troubleshooting a cloud native application like GitLab:

* **Cluster setup**: We will assume that the cluster is correctly setup as per our [recommendation](https://docs.gitlab.com/charts/installation/cloud/) and enough resources have been allocated to the nodes. We will look at a few commands that would be helpful in confirming this.

* **Application Failures**: This will be our primary area of focus and we will be trying to identify why Gitlab is not working or not behaving correctly.

## Cluster setup

We recommend a cluster with 8vCPU and 30GB of RAM so a few things to checks is if the nodes have enough resources. Use unix commands like `top`, `free` to confirm this.

Check if the nodes are registered correctly and verify that all of the nodes you expect to see are present and that they are all in the `Ready` state.

```bash
kubectl get nodes
```

To get detailed information about the overall health of your cluster, use the following command:

```bash
kubectl cluster-info dump
```

To delve deeper into troubleshooting the cluster have a look at [Troubleshoot Clusters](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-cluster/#looking-at-logs) which gives you insights as to the logs that you would look into.

### Gitlab Requirements

In order to deploy GitLab on Kubernetes, ensure the setup meets the following:

* `kubectl 1.13` or higher, compatible with your cluster (+/- 1 minor release from your cluster).
* `Helm v3` (3.2.0 or higher).
* A Kubernetes cluster, version `1.13` or higher. `8vCPU` and `30GB` of RAM is recommended.

Going back to our generated KubeSos output, confirm by checking:

### kubectl-check

To check the version of `kubectl` installed

```bash
% more kubectl-check
```

### Helm version

```bash
% more helm-version
```

### Debugging Pods

Check the current state of the pod through checking the `get_pods` file. All pods should be `running` or `completed`.

```bash
 % more get_pods
NAME                                                   READY   STATUS      RESTARTS   AGE
gitlab-gitaly-0                                        1/1     Running     0          12m
gitlab-gitlab-exporter-586ccff5fb-6g67t                1/1     Running     0          12m
gitlab-gitlab-grafana-app-6bf7db585b-75fgt             2/2     Running     0          12m
gitlab-gitlab-shell-7547c6457-54xm8                    1/1     Running     0          12m
gitlab-gitlab-shell-7547c6457-lmfb2                    1/1     Running     0          12m
gitlab-migrations-76-gq7pq                             0/1     Completed   0          12m
gitlab-nginx-ingress-controller-786f5f5ddd-ktwh5       1/1     Running     0          12m
gitlab-nginx-ingress-controller-786f5f5ddd-nqk2w       1/1     Running     0          12m
gitlab-nginx-ingress-default-backend-7ff88b95f-rv6jt   1/1     Running     0          12m
gitlab-prometheus-server-5b47c879b4-g9xvb              2/2     Running     0          12m
gitlab-redis-master-0                                  2/2     Running     0          12m
gitlab-registry-7f874b748d-bxtnh                       1/1     Running     0          12m
gitlab-registry-7f874b748d-rs246                       1/1     Running     0          12m
gitlab-sidekiq-all-in-1-v1-95cbfd5f7-546sq             1/1     Running     0          12m
gitlab-task-runner-6f7dcc8897-psscr                    1/1     Running     0          12m
gitlab-webservice-default-659fdddb9b-cmrbd             2/2     Running     0          12m
gitlab-webservice-default-659fdddb9b-hhctp             2/2     Running     0          12m
```

Any pod in `pending` status indicates a possible problem which one can confirm by checking the recent events from the `describe_pods` file. If a pod is stuck in `Pending` it means that it can not be scheduled onto a node. This could be due to lack of resources such as CPU or Memory in your cluster. More on this in [Debugging Pods](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-application/#debugging-pods)

### Services

For services the main thing to confirm is if the `loadbalancer` has been assigned an External IP and is not in `pending` state.

```bash
% more get_services | grep gitlab-nginx-ingress-controller | grep LoadBalancer

gitlab-nginx-ingress-controller LoadBalancer   172.20.34.155   36.0.0.25   80:32220/TCP,443:30038/TCP,22:30963/TCP   45d
```

or in AWS

```bash
% more get_services | grep gitlab-nginx-ingress-controller | grep LoadBalancer

gitlab-nginx-ingress-controller LoadBalancer   172.20.164.155   a48.eu-west-5.elb.amazonaws.com   80:32220/TCP,443:30038/TCP,22:30963/TCP   45d
```

Further checks would involve confirming if all the services have been assigned an [endpoint](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-application/#my-service-is-missing-endpoints)

```bash
% more endpoints
NAME                                      ENDPOINTS                                           AGE
gitlab-cert-manager                       10.16.4.130:9402                                    23h
gitlab-gitaly                             10.16.4.164:8075                                    23h
gitlab-gitlab-exporter                    10.16.4.155:9168                                    23h
gitlab-gitlab-pages                       10.16.4.156:8090                                    23h
gitlab-gitlab-shell                       10.16.2.36:2222,10.16.4.162:2222                    23h
gitlab-grafana-app                        10.16.4.131:3000                                    23h
```

### Ingress

Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource. Confirm if the hosts and address are configured correctly and if the ingress has been assigned an IP.

```bash
% kubectl get ingress
% more describe_ingress
```

### Deployments

To quickly confirm the applications that are setup, check the following file:

```bash
% more get_deployments
NAME                                   READY   UP-TO-DATE   AVAILABLE   AGE
gitlab-cainjector                      1/1     1            1           9d
gitlab-cert-manager                    1/1     1            1           9d
gitlab-gitlab-exporter                 1/1     1            1           9d
gitlab-gitlab-pages                    1/1     1            1           9d
gitlab-gitlab-runner                   1/1     1            1           9d
gitlab-gitlab-shell                    2/2     2            2           9d
gitlab-grafana-app                     1/1     1            1           9d
gitlab-kas                             2/2     2            2           9d
gitlab-minio                           1/1     1            1           9d
gitlab-nginx-ingress-controller        2/2     2            2           9d
gitlab-nginx-ingress-default-backend   1/1     1            1           9d
gitlab-prometheus-server               1/1     1            1           9d
gitlab-registry                        2/2     2            2           9d
gitlab-sidekiq-all-in-1-v1             1/1     1            1           9d
gitlab-task-runner                     1/1     1            1           9d
gitlab-webservice-default              2/2     2            2           9d
```

If any of the deployments are not ready use the `describe_deployments` file to check the reason for failure. It's is also worth checking for errors in the `describe_pods` file.

```bash
% more describe_deployments
```

### Persistent Volumes and Claims

GitLab uses persistent volumes to store data so if any of the pods are in `pending` status, check if the volumes exist and their status is `Bound`. Confirm amount of space allocated for each and if required allocate more resources.

```bash
% more get_pvc
NAME                            STATUS   VOLUME        CAPACITY ACCESS MODES   STORAGECLASS   AGE
data-gitlab-postgresql-0        Bound    pvc-44c3643e-  8Gi        RWO         standard       9d
gitlab-minio                    Bound    pvc-8a739402-  10Gi       RWO         standard       9d
gitlab-prometheus-server        Bound    pvc-29fc7b9d-  8Gi        RWO         standard       9d
redis-data-gitlab-redis-master  Bound    pvc-b9b67a9d-  8Gi        RWO         standard       9d
repo-data-gitlab-gitaly-0       Bound    pvc-af7ca188-  50Gi       RWO         standard       9d
```

### User supplied values

The `user_supplied_values.yaml` file lists all user supplied values that were set while installing GitLab. This is helpful in confirming if the supplied values are correct and will work as they override the chart defaults. The `all_values.yaml` file has all values that have been used to set up Gitlab.

### Application logs

Finally it generates all the application logs which can be used to debug specific application issues.

```bash
% ls -alrt *.log
-rw-r--r--  1 staff  staff   100356 Jun 20 14:45 cainjector.log
-rw-r--r--  1 staff  staff    33000 Jun 20 14:45 cert-manager.log
-rw-r--r--  1 staff  staff  1274320 Jun 20 14:45 gitaly.log
-rw-r--r--  1 staff  staff    56873 Jun 20 14:45 gitlab-exporter.log
-rw-r--r--  1 staff  staff     1606 Jun 20 14:45 gitlab-gitlab-runner.log
-rw-r--r--  1 staff  staff      595 Jun 20 14:45 gitlab-pages.log
-rw-r--r--  1 staff  staff     4394 Jun 20 14:45 gitlab-shell.log
-rw-r--r--  1 staff  staff     1462 Jun 20 14:45 kas.log
-rw-r--r--  1 staff  staff        0 Jun 20 14:45 minio.log
-rw-r--r--  1 staff  staff  1203696 Jun 20 14:45 nginx-ingress.log
-rw-r--r--  1 staff  staff     3456 Jun 20 14:45 postgresql.log
-rw-r--r--  1 staff  staff    10789 Jun 20 14:45 prometheus.log
-rw-r--r--  1 staff  staff     4757 Jun 20 14:45 redis.log
-rw-r--r--  1 staff  staff     6158 Jun 20 14:45 registry.log
-rw-r--r--  1 staff  staff  1166489 Jun 20 14:45 sidekiq.log
-rw-r--r--  1 staff  staff     1955 Jun 20 14:45 task-runner.log
-rw-r--r--  1 staff  staff  4750701 Jun 20 14:45 webservice.log
```
