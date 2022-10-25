---
layout: handbook-page-toc
title: "e-marketplace (Disty) API"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Connected Systems

- Distributor e-marketplace
  - Arrow (Arrowsphere)
- Platypus (middleware)
- CustomersDot (destination & middleware)
- Visual Compliance (destination)
- Zuora Billing (destination & middleware)
- Salesforce "SFDC" (destination)

# Summary


# Sequence
<div class="x-scrollable">
<div style="width: 1800px;">

```mermaid
sequenceDiagram
    participant D as Distributor
    participant P as Platypus
    participant C as CustomersDot
    participant V as Visual Compliance
    participant Z as Zuora Billing
    participant S as SFDC
    actor Sell To
    actor Partner


    D->>+P: POST Order
    P->>+C: POST Order
    rect rgb(255, 80, 80)
        note over C,V: Restricted Parties Check
        C->>+V: Restricted Party?
        V-->>-C: Response
    end

    alt "Sell To" is a restricted party
        C-->>P: Error: Restricted Party
        P-->>D: Error: Restricted Party
    else "Sell To" is NOT a restricted party
        C-->>-P: Order Accepted
        P-->>-D: Order Status: Accepted

        alt If an error occurs at any point
            C->>+P: Error occurred during processing
            P->>+D: Order Status: Error
            D-->>-P: Response
            P-->>-C: Response
        end

        rect rgb(0, 204, 153)
            note over C,Z: Create Zuora Entities
            C->>C: Create customer account
            C->>+Z: Create subscription
            Z-->>-C: Response

            rect rgb(153, 187, 255)
              Note over C, S: Create SFDC Entities
              C->>+S: Create Opportunity, Quote, Contact
              S-->>-C: Response
            end

            C->>C: Create order

            Z->>+C: Callout
            C-->>-Z: Response
        end

        rect rgb(255, 153, 51)
            Note over C,Partner: Provisioning process
            Note over C: Fulfillment to confirm what occurs here
            C->>C: Create license

            C->>Sell To: Send license email
            C->>Partner: Send license email
            Note over Z,S: This might not be in v1
        end

        C->>+P: Order Fulfilled
        P->>+D: Order Status: Fulfilled
        D-->>-P: Response
        P-->>-C: Response
    end
```

</div>
</div>

# Error handling

# Data Models

```mermaid
erDiagram

```

# Security Components

1. Platypus authenticates with Workato using [OAuth2 Client Credentials](https://docs.workato.com/api-mgmt/oauth2.html#request-access-token)
2. Workato Authenticates with Zuora Revenue using a [custom built auth scheme](https://www.zuora.com/developer/revpro-api/#tag/Authentication)
3. All connections are over HTTPS

# Data classification

This integration handles and stores [Red Data](/handbook/security/data-classification-standard.html#red) (Customer data)

# Environments

| Environment | Zuora Billing                    | Zuora Revenue     | Platypus                | Workato             | Netsuite   |
|-------------|----------------------------------|-------------------|-------------------------|---------------------|------------|
| Production  | Production                       | Production        | Production              | Production          | Production |
| Staging     | Zuora Central Sandbox (10000796) | REVPRO_GITLAB_S02 | Staging                 | Development/Testing | Sandbox 2  |
| Development | Zuora API Sandbox 1 (14115)      | REVPRO_GITLAB_S01 | Local Dev & [Review Apps](https://docs.gitlab.com/ee/ci/review_apps/) | Development         | Sandbox 1  |
