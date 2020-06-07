---
layout: handbook-page-toc
title: "Design :: Vault"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Epic: [Infrastructure &62](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/62)

## Idea/Problem Statement

Currently we manage all GitLab.com infrastructure secrets via chef-vault and
gkms. Our infrastructure at GCP all uses the gkms method, whereas older
services use `chef-vault`. Updates with `gkms` are done via a script in
`chef-repo`. The script downloads the encrypted JSON file, decrypts it, allows
you to edit it, checks for valid JSON, and finally re-encrypts and uploads the
new data. Updates to `chef-vault` are done via the `knife vault` command. Both
of these methods are hard to manage and have no audit trail or rollback
capabilities. Additionally, there is little in the way of access control which
prevents us from abiding by the principle of least privilege.

Hashicorp Vault (henceforth Vault) is a solution to this problem. Vault provides
a method to store our secrets and access them via an HTTP API. Vault also has
robust access control policies, auditing, and a variety of authentication
mechanisms.

### Non-Goals

Enabling the application to manage CI/CD secrets via Vault is an unrelated topic
and we also don't aim to provide a Vault instance for all GitLab.com customers.

## Design

Vault should be the only thing running on a server and no one should have
access, SSH or otherwise, to the server. We should deploy Vault in the most
isolated way possible without using any resources from other environments.
There is already an example of
[deploying Vault to GKE](https://github.com/sethvargo/vault-on-gke) using
Terraform. This would be relatively easy to adapt to our current environment.

We would deploy Vault in an HA configuration with Google Cloud Storage as the
storage backend and use GKMS to automatically unseal the vault on startup. We
would want to provision a new and heavily locked down GCP project in order to
keep the service completely isolated from other projects and services as well as
allow us to keep access to the project itself tightly controlled. The kubernetes
master node would only allow certain IP addresses to access it so we could lock
this down to only the ops CI runner(s) to prevent access from an employee
workstation.

The only way to access vault would be via the API which, as mentioned, would
have strict access control policies.

Sample authentication flow:

![authentication-flow](img/auth-flow.svg)

<details>
<summary>Show mermaid source</summary>

<pre>
graph LR;
subgraph gstg/gprd
A[Servers]
end
B[Users] --> D
subgraph GCP-Vault-Project
A -->C
E--encryption keys--- F[GKMS]
subgraph GKE
D[User/Password Authentication] --> E
C[GCE Service Account Authentication] --> E[Vault]
E
end
E -- storage backend--- G[Google Cloud Storage]
end

</pre>

</details>

### Secret Storage and Generation

Unfortunately, our secrets are stored on disk in plain text. Even by locking
down vault, it doesn't help as much when anyone with SSH access can go and look
at the secrets on disk. Vault has many secrets engines that can generate
passwords on the fly. For example there is a [Postgresql Database Secrets
Plugin](https://www.vaultproject.io/docs/secrets/databases/postgresql.html)
which can be configured to dynamically generate secrets and keep track of old
ones to ease transition. By using something like this with
[consul-template](https://github.com/hashicorp/consul-template) we would be able
to have the database password rotate frequently. Using consul-template would
also free chef from having to deal with writing secrets into config files as all
what's needed is to deploy the consul templates.
There are other secrets engines that offer similar such as the [Google
Cloud](https://www.vaultproject.io/docs/secrets/gcp/index.html) engine which can
dynamically generate IAM credentials.

Dynamic generation of secrets like this would also allow us to give employees
temporary and limited access to GCP or PostgreSQL if necessary without giving
them long lived credentials that someone will need to go clean up later or
otherwise keep track of.

There is an official gem called
[vault-rails](https://github.com/hashicorp/vault-rails) which is designed to
interface with vault via Rails. However, it doesn't seem to be designed for what
we need for managing infrastructure credentials but instead for de/encrypting
things like secret CI variables. But vault integration for CI/CD is tracked
in [this issue](https://gitlab.com/gitlab-org/gitlab-ce/issues/61053) and not
part of our design.

### Current Secrets to Consider

- Database credentials (in `gitlab.rb`)
  - Postgresql
  - Geo Postgres
  - Redis
  - pgbouncer
- SSL Keys (on disk)
  - nginx
  - registry
  - pages
- Credentials for object storage (on disk JSON file)
- Omniauth OAuth keys (in `gitlab.rb`)
- Secret keys for GitLab (in `gitlab.rb`)
  - OTP Key
  - Encryption key for CI variables and such
  - Gitaly
  - gitlab_workhorse
  - gitlab_shell
- Sentry DSNs (in `gitlab.rb`)
- IMAP credentials for mailroom (in `gitlab.rb`)
- Mailgun credentials (in `gitlab.rb`)
- CI runner tokens (`gitlab-runner.toml` runner config file)

All of the above secrets are stored in various JSON files encrypted via GKMS.
The relevant files are placed on disk via `chef` and `gitlab.rb` is also
generated by `chef`.

### Implementation Considerations

#### Unsealing

Hashicorp recently ported a feature to the open source product that
automatically unseals vault using GKMS. To maintain the balance between security
and recovery time objective we should use automatic unsealing in the event of
an unplanned reboot but require a minimum number of unseal keys if vault was
sealed on purpose by an operator.

SREs should provide their public gpg keys against which their individual unseal
keys will be encrypted. In case of on/offboarding of an SRE all unsealing
keys will need to be recreated (which requires no downtime).

Without automatic unsealing, we would need to have enough people on hand to
unseal the vault after an unplanned reboot. This could be problematic if it
happened during a holiday or other time when many people might be unavailable at
the same time.

However, it would be more secure to require several SREs to come together to
unseal the vault in the event of an unexpected sealing. Unsealing the vault
requires a minimum threshold of unseal keys to successfully unseal. For example,
if we had 5 unseal keys we might have a threshold of 3 such that 3 people with
keys would need to be present to unseal. In order to facilitate this, we would
have a PagerDuty service specific to Vault which would be triggered on a `seal
status` change provided by the `vault_exporter` mentioned below. When the seal
status became sealed for whatever reason, this service would page everyone with
a key. Because each vault instance is independently sealed/unseald, we will need
to take steps to ensure that a single sealed vault instance would not block the
entire cluster. Consul can be used as a service discovery mechanism to ensure
that sealed vault instances are never queried. We already have a consul cluster
configured in each environment, but we do not actively use it for service
discovery at this time.

#### GitLab.com and Self-managed

We should consider building support for managing GitLab configuration secrets
via Vault into the product. If nothing else, we could include `consul-template`
in omnibus and provide an example configuration for how to use it with Vault
for generating and accessing dynamic secrets.

### Operational Considerations

#### Monitoring

Vault would be monitored via Prometheus as the rest of our infrastructure is.
There is also a [Vault exporter](https://github.com/grapeshot/vault_exporter)
that reports on the health of Vault.

The `vault-exporter` provides metrics on the following

- uptime status
- initialized status
- seal status
- primary/secondary DR replica
- primary/secondary performance replica
- queries per second and latency

It also provides grafana dashboards via
[prometheus-ksonnet](https://github.com/kausalco/public/tree/master/prometheus-ksonnet).

#### Alternative Options

- [Vault Operator](https://github.com/coreos/vault-operator) (stale project)

#### Additional Tools

- [Kubernetes Vault Operator](https://github.com/Boostport/kubernetes-vault)
- [Banks Vault](https://github.com/banzaicloud/bank-vaults)

### Discarded Alternative Designs

#### Using Consul as storage backend

We want to have Vault staying independent from anything in production for
security, reliability and to prevent circular dependencies. That rules out to
use the existing Consul cluster in production. Standing up an independent Consul
cluster just for vault seems to introduce more complexity than necessary if GCS
as storage backend and Kubernetes for cluster management are sufficient already.
