---
layout: handbook-page-toc
title: "Design :: Snowplow"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

Snowplow is part of the infrastructure for GitLab.com's telemetry gathering.
You can read more about this
[here](https://gitlab.com/gitlab-org/telemetry/issues/12).

GitLab.com needs it's own in-house implementation of Snowplow. Our current
Snowplow service provider, while functional, does not provide the data
security we require for user identifiable data we may collect.

Risks include making sure we can set up a functioning Snowplow implementation
before our vendor contract expires. We also need to consider how flexible and
scalable our implementation needs to be. This adds another environment that
needs time and attention to make sure it is working reliably and performant.

## Design

### The Snowplow Architecture
The Snowplow pipeline consists (primarily) of the following stages:
1. A public facing load balancer that listens on port 443 with a valid SSL
  certificate.
1. A Snowplow collector application. These nodes receive traffic via
  the load balancer and log raw (unprocessed) events to the stream service.
1. A stream service (AWS Kinesis). This consists of several streams to buffer
  events for collection, enriching and writing to disk.
1. A Snowplow enricher application to enrich the data. These nodes pick up
  raw events from the stream service, enrich the events, and put them back
  into another stream. There are enrichments that are configured to specify
  what additional data is added to the events.
1. A data store to house enriched data (AWS S3). AWS Kinesis Firehose is
  used to transcribe events to an S3 bucket.

Snowplow's own documentation lives in their [primary repo](https://github.com/snowplow/snowplow/#snowplow-technology-101).

Notes from discussion and considerations:
* Local logging will be enough for the initial implementation.

Future considerations that may be added later:
1. A move to Google Cloud Provider to consolidate into a single cloud provider.
1. Logging is local right now and may be improved.
1. Better health checks to replace failing nodes quickly.
1. Better monitoring and alerting.

### Assumptions
1. The Snowplow product primarily supports AWS services and the consumer of
the data is already familiar with accessing the data via S3. For these reasons
we should build the Snowplow pipeline in AWS. As GCP support grows in the
Snowplow product, this should be reconsidered.
1. We would most likely use Terraform to manage the infrastructure. It could
exist as it's own project or environment in order to prevent changes causing
problems or interference with gitlab.com production.
https://gitlab.com/gitlab-com/gitlab-com-infrastructure

### Implementation Considerations

#### Testing

Since this is a new set of systems, we can test it before we begin to use it.
Ideally we could attempt send live events to both the old and new Snowplow
collectors and verify we see working collection and enrichment.

#### GitLab.com and Self-managed

Both GitLab.com and self-managed installs could ship events to the collector
for Snowplow.

### Operational Considerations

#### Automation

Deploying and managing the infrastructure is automated using Terraform in a
new environment in the current
[terraform repository](https://gitlab.com/gitlab-com/gitlab-com-infrastructure).

EC2 and Auto-Scaling Groups will allow the scaling of nodes to meet capacity
demands.

####  Monitoring

Metrics for basic operation are required for troubleshooting and alerting. A
CloudWatch exporter will provide metrics for the Snowplow infrastructure to
be alerted on and graphed. Since this could be leveraged in the future to
reference other AWS infrastructure, this should probably reside in GCP and not
be an integral part of the Snowplow environment. This
[exporter](https://github.com/prometheus/cloudwatch_exporter) should be
capable of referencing CloudWatch metrics via the AWS API so it can live in
GCP near our prometheus systems.

An external monitor of the collector port would also be a good idea.
