---
layout: handbook-page-toc
title: "Configuring GitLab with group-level Kubernetes cluster"
description: “How to configure GitLab with your Google Kubernetes cluster”
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

After your GitLab Demo Cloud account has been created, your runners and CI jobs will use the pre-configured instance-level cluster by default. The instance-level cluster is designed to be transparent behind the scenes and does not support customization or administration and reporting capabilities as a demo systems user.

You can request your own Kubernetes cluster that is provisioned in Google Cloud's Google Kubernetes Engine (GKE) service by the demo systems team. By having your own cluster, you have full administrative access to the cluster for troubleshooting CI jobs and pods that are experiencing issues.

This tutorial shows you how to connect your cluster to your GitLab group after you are notified that your cluster is ready. You will access the Google Cloud Platform (GCP) console to see your cluster, use the Google Cloud Shell to run `kubectl` commands on your cluster, and access the GitLab Demo Cloud Omnibus instance to configure your pre-created group with a Kubernetes cluster. After your cluster has been added, we will install Helm, Prometheus and install your own GitLab Runner.

#### Pre-Requisites
* Creating and accessing your account
* Request a Kubernetes cluster in `#demo-systems` Slack channel

## Step-by-Step Instructions

### Task 1. Access the Google Cloud Platform (GCP) Console (Web UI)

When your cluster was provisioned by the demo systems team, you received a Slack message with a link to your newly created cluster. If you have that link available, you can open the link and skip to Task 2.

If you do not have the link available, these instructions show you how to navigate the GCP console to locate your cluster.

1. Open a **new tab or window** in your web browser.

2. Visit [https://console.cloud.google.com](https://console.cloud.google.com).

3. If you're not already signed in, please sign in with your GitLab email account.

4. In the blue top navigation bar, locate and click on the dropdown menu to the _right_ of the `Google Cloud Platform` title. These are the projects (authentication realms) that you have access to. Click on the current project and choose `group-cs` from the list. If you do not see `group-cs` listed, please post on the `#demo-systems` channel to request access.

    ![Top navigation](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-1.png)

    ![Project selection](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-2.png)

5. In the blue top navigation bar, locate and click on the hamburger menu icon to the _left_ of the `Google Cloud Platform` title. These are all of the services that are available in the Google Cloud Platform. In the **Compute** section, click on **Kubernetes Engine** or **Kubernetes Engine > Clusters**.

6. On the _Kubernetes clusters_ page, locate the filter bar above the table to clusters and type in your username (ex. `jmartin`). Select the default option for the `name:` filter.

7. When your cluster appears, click on the name of your cluster.

    ![Cluster selection](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-3.png)

8. You are now at the dashboard for your cluster. It is recommended to bookmark this page for future access.

### Task 2. Obtain the Cluster CA Certificate

1. Create a new file in your preferred text editor so we can copy and paste values into it for temporary reference.

2. Copy and paste your cluster name (at the top of the cluster dashboard) into the text file (Ex. `demosys-us-jmartin-cluster`).

3. In your browser on the cluster dashboard in the GCP console, locate and click on the **Show credentials** link next to the Endpoint (IP address value).

    ![Show credentials link](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-5.png)

4. In the _Cluster credentials_ pop-up modal window, **copy and paste each of the values to your text editor file**. For the value for the Cluster CA certificate, be sure to include the hyphen lines for `BEGIN CERTIFICATE` and `END CERTIFICATE`.

5. Click the **Close** button in the bottom right corner.

### Task 3. Connect to Google Cloud Shell for configuring `gitlab-admin` service account

> These instructions have been customized from the [GitLab documentation](https://gitlab-core.us.gitlabdemo.cloud/help/user/project/clusters/add_remove_clusters#add-existing-cluster) to show the specific instructions for the demo systems infrastructure.

1. On your cluster dashboard in the GCP console, locate and click on the **Connect** button in the top page navigation (below the search bar in the blue top navigation).

2. In the _Connect to the cluster_ pop-up modal, click the **Run in Cloud Shell** button.

    > If you have experience with `kubectl` and `gcloud` command-line tools, you can optionally use the command shown. If you want to use them locally, you need to install them from here ([kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-with-homebrew-on-macos), [gcloud](https://cloud.google.com/sdk/docs/downloads-versioned-archives#installation_instructions)).

    ![Cloud shell access](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-4.png)

3. At the bottom of your browser window, a terminal window will appear. It may take a few moments for the Cloud Shell to finish provisioning.

    > The Cloud Shell is a small container that Google provides for you to have terminal access in your browser without needing to configure your local machine.

4. When the Cloud Shell terminal appears, the first line will be pre-populated with a command to obtain the credentials for your cluster using role-based access control (RBAC). **Simply press the ENTER key.**

    ```
    jmartin@cloudshell:~ (group-cs-9b54eb)$ gcloud container clusters get-credentials demosys-us-jmartin-cluster --zone us-central1-c --project group-cs-9b54eb
    ```
    ```
    Fetching cluster endpoint and auth data.
    kubeconfig entry generated for demosys-us-jmartin-cluster.
    ```

    > If you do not see the output shown in the example above, it is likely that your GCP account has permissions issues and you should contact `#demo-systems` team for assistance.

5. **Use the following command** to get the API URL and **copy/paste the outputted URL to your text file**.

    ```
    kubectl cluster-info | grep 'Kubernetes master' | awk '/http/ {print $NF}'
    ```
    For recent versions of Kubernetes:
    ```
    kubectl cluster-info | grep 'Kubernetes control plane' | awk '/http/ {print $NF}'
    ```
    ```
    https://35.239.222.203
    ```

    > This will return an IP address that is the same as the endpoint IP that you can see in the GCP Console Web UI with an `https://` prefix. Keep in mind that this URL does not provide a web UI for your cluster and is only used for API purposes.

    ![Cloud shell example](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-13.png)

6. **Use the following command** to create the service account.

    ```
    kubectl create sa gitlab-admin -n kube-system
    kubectl create clusterrolebinding gitlab-admin --serviceaccount=kube-system:gitlab-admin --clusterrole=cluster-admin
    ```
   You will receive a confirmation.
    ```
    serviceaccount "gitlab-admin" created
    clusterrolebinding "gitlab-admin" created
    ```

8. **Use the following command** to get the API token for the `gitlab-admin` service account and copy/paste the value of the `token` to your text editor.

    ```
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep gitlab-admin | awk '{print $1}')
    ```
    ```
    Name:         gitlab-admin-token-b5zv4
    Namespace:    kube-system
    Labels:       <none>
    Annotations:  kubernetes.io/service-account.name=gitlab-admin
                  kubernetes.io/service-account.uid=bcfe66ac-39be-11e8-97e8-026dce96b6e8

    Type:  kubernetes.io/service-account-token

    Data
    ====
    namespace:  11 bytes
    token:      eyJhbGciOiJSUzI1NiIsImtpZCI6ImFCSFZicS1DbUpYbkZDNnRBcnc0TzhYeDNXbnBJMWoxck93ZHI3UkhOYVUifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5
    c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJnaXRsYWItYWRtaW4tdG9rZW4tanI1bTciLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiZ2l0bGFiLWFkbWluIiwia3ViZXJuZXRlcy5pby9zZXJ
    2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiOGZhODFkMzktZTM0NC00ZDQxLTkzMmEtZmNkYzViOGY5NTRkIiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Omt1YmUtc3lzdGVtOmdpdGxhYi1hZG1pbiJ9.loW-jWN9Ktvoi0z34y2jaTCcr9SiPH-v_X_pvXYMfeus7
    T84mSqIztkTBW9S8V2mZ_Be_QVbVMJERjUDrCyKwcvH1vwSJPNuYFJLCONDbevm1i9VgJz-ieCk_Qtl0FC1-gnCKZmJot76FEQpXjGrwRmZ0JQDxWtg680bLxEYqv7DZXcZzWNusdYOufziveiU9xE8b1XiprqeEj6Gy7BzI9jeCxGDAnC0Ff7D5rgAGi6GNayrGWZ8YXYvi1dhEekG-pW8
    MkZ8MTKopynxgLJ8ksv_vzCRSiwQ79H7mSR3TwTXoqjjzD3XOY2gIACGt2tpLRJu3mTuUQWkrL69bfLFnw
    ca.crt:     1115 bytes
    ```

9. In your text editor, **remove the line breaks in the token** so that it is on a single line.
    > The line breaks appear as a space in the token when pasting into the GitLab UI and will result in a connection error with invalid credentials if you do not remove the line breaks.

    ![Line breaks before](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-6.png)

    ![Line breaks after](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-7.png)

10. You have successfully obtained the credentials needed to connect your cluster from GitLab.

### Task 4. Access Your Demo Cloud Account

1. Open a **new tab or window** in your web browser.
2. Visit [https://gitlabdemo.com](https://gitlabdemo.com).
3. Sign in using your Demo Cloud SSO credentials that you created when you self-registered.
    > It is recommended to rename your 1Password login to `Demo Cloud SSO` so it's easy to recognize.

### Task 5. Accessing the GitLab Instance

When your account was created, the GitLab handle that you provide is used to automatically provision a user account and organizational group (with owner permissions) on the GitLab instance that we use in our demo environment.

1. On the Dashboard, you will see all of the Demo Cloud resources that you have access to.
2. Locate the **GitLab Omnibus (US)** card (bordered section).
    > When you created your account on gitlabdemo.com, your account on the Demo Cloud GitLab instance was automatically created using the GitLab handle that you chose and the same password as you used for gitlabdemo.com.

    ![GitLab Omnibus Card](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/creating-accessing-your-account-1.png)

3. Click on the **My Group Button**. A new tab or window will appear with the GitLab instance.

4. If you are redirected to a login screen, please use your Demo Cloud SSO credentials in 1Password.
    > It is recommended to add the URL of the GitLab Omnibus instance as a website on your existing 1Password record for Demo Cloud SSO.

5. After logging in, you will see your group.

    ![Group Dashboard](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-1.png)

6. You can always access your group from the top navigation by selecting **Groups > Your Groups** and expanding the **Demo Systems Users** parent group to see your group name.

    ![Group Top Nav](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/accessing-group-creating-projects-3.png)

### Task 6. Add Kubernetes Cluster to GitLab Group

1. In the left side bar, locate and click on **Kubernetes**.

2. On the Kubernetes page, you will see a list of clusters that are available. If you have not added a group cluster, this should only show instance clusters.

3. In the top right corner, click the **Add Kubernetes cluster** button.

    ![Add cluster button](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-8.png)

4. On the _Add a Kubernetes cluster integration_ page, click the **Add existing cluster** tab.

5. In the form fields, use the following values and copy and paste the appropriate values from your text editor file.

    ```
    Kubernetes cluster name:     (copy/paste - ex. demosys-us-jmartin-cluster)
    Environment scope:           *
    API URL:                     (copy/paste - ex. https://35.239.222.203)
    CA Certificate:              (copy/paste)
    Service Token:               (copy/paste)
    RBAC-enabled cluster:        checked
    GitLab-managed cluster:      checked
    ```

6. Click **Add Kubernetes cluster**.
    > If you are adding your cluster to many GitLab projects, flag **GitLab-managed cluster** just on the first integration.

    ![Cluster form example](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-9.png)

### Task 7. Install One-Click Applications on Cluster

1. On the newly created cluster page, click the **Applications** tab.

2. Locate _Prometheus_ and click the **Install** button. Please wait a few moments for this to complete.

3. Locate _GitLab Runner_ and click the **Install** button. Please wait a few moments for this to complete.

    ![Installed applications](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-14.png)

4. At the top of the page, click on the **Health** tab for your cluster.

5. Take a few moments to understand the metrics that are available from Prometheus. If you experience errors with your cluster, you can understand if it's related to CPU and Memory saturated using Prometheus.

    ![Installed applications](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-15.png)

### Task 7. Review the runner configuration

1. In the left sidebar of your group, navigate to **Settings > CI/CD**.

2. In the _Runners_ section, click the **Expand button**.

3. Scroll down and locate the **Available group runners** section.

    ![Runner in GitLab](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-10.png)

4. **Click on the title** for the available runner.

5. You can review the details of the runner including the version of the runner.

6. For any future CI jobs in your group's projects, the Kubernetes runner will be used.

7. **Switch to the GCP console tab** in your browser, and click **Workloads** in the left sidebar, and adding the name of your cluster to the filter bar.

8. You will see the runner pod listed.

    ![Pods in GKE](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-11.png)

### Task 8. Review the cluster performance

1. From the list of workloads, click on the name of your cluster in the table to link to your cluster.

2. Click the **Nodes** tab at the top of the page, then click the name of the node(s) listed.

3. You will see a dashboard for this node with the pods that are running and the resources being used.

    ![Node Details](https://storage.googleapis.com/gitlab-demosys-docs-assets/tutorials/getting-started/configuring-group-cluster-12.png)

4. Please keep in mind that there are ~15 pods in the `kube-system` namespace that Kubernetes uses for management of the cluster and you should not delete them.

5. If you run into errors about no pods available or resource constraints, you should visit your nodes and look for review apps that were created a long time ago and delete those pods to make space for new pods, or look at using lifecycle policies in your CI file.

## Review

You have successfully configured a Kubernetes cluster with your group on GitLab.

You can now close the GCP console tab and continue using GitLab with Kubernetes integrated.
