---
layout: handbook-page-toc
title: 'Zendesk API'
category: Zendesk
description: 'Training documentation concerning Zendesk API'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what the Zendesk API is
* How to authenticate for the Zendesk API
* Common libraries
* How to use the Zendesk API
* Common use cases

## What is the Zendesk API

The
[Zendesk Support API](https://developer.zendesk.com/api-reference/ticketing/introduction/)
is a collection of Zendesk endpoints you can use to get various information or
do various tasks. It is quite robust and something we use from time to time.

## How to authenticate to the Zendesk API

### Basic authentication

To authenticate using basic authentication, you'll need to know your username
(email) and password for your Zendesk account. With those in hand, you can
either use those directly or encode the string into base64 (and use it in the
headers).

Example of using it raw:

```bash
curl https://gitlab.zendesk.com/api/v2/users.json \
  -u jcolyer@gitlab.com:my_password
```

Example of using it via headers

```bash
echo 'jcolyer@gitlab.com:my_password' | base64
amNvbHllckBnaXRsYWIuY29tOm15X3Bhc3N3b3JkCg==

curl https://gitlab.zendesk.com/api/v2/users.json \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tOm15X3Bhc3N3b3JkCg=="
```

### API token authentication

To authenticate via an API token, you'll need to know your username and the API
tokenh in question. With those in hadn, you can either use those directly or
encode the string into base64 (and use it in the headers). When using an API
token, you must add `/token` after your username.

```bash
curl https://gitlab.zendesk.com/api/v2/users.json \
  -u jcolyer@gitlab.com/token:api_token
```

Example of using it via headers

```bash
echo 'jcolyer@gitlab.com/token:api_token' | base64 
amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=

curl https://gitlab.zendesk.com/api/v2/users.json \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

### Oauth access token authentication

To use an Oauth access token, you'd first need to create an Oauth app in
Zendesk (see
[Zendesk docs](https://support.zendesk.com/hc/en-us/articles/203663836-Using-OAuth-authentication-with-your-application)
for more information). With the access token in hand, you would pass this into
the headers.

Example of using it via headers

```bash
curl https://gitlab.zendesk.com/api/v2/users.json \
  -H "Authorization: Bearer gErypPlm4dOVgGRvA1ZzMH5MQ3nLo8bo"
```

## Common libraries

The most common library we use for the Zendesk Support API is the
[zendesk_api_client gem](https://github.com/zendesk/zendesk_api_client_rb).
This ruby gem is quite powerful and acts as a nice HTTP library for interacting
with the Zendesk Support API.

### Authenitcation with the ruby gem

To authenticate with the ruby gem, you will need to setup the client itself so
you can call upon it.

For authentication via password:

```
require 'zendesk_api'

client = ZendeskAPI::Client.new do |config|
  config.url = ZENDESK_URL/api/v2
  config.username = 'YOUR_EMAIL
  config.password = 'YOUR_PASSWORD'
end
```

For authentication via API token:

```
require 'zendesk_api'

client = ZendeskAPI::Client.new do |config|
  config.url = ZENDESK_URL/api/v2
  config.username = 'YOUR_EMAIL
  config.token = 'API_TOKEN'
end
```

To tell the client to retry connections/requests when an API limit error
occurs, you can use `config.retry = true` in the above configuration
block.

To have the gem not verbosely output warnings, you can use
`config.logger = false` in the above configuration block.

## How to use the Zendesk API

**Note**: This focuses solely on the Zendesk API via curl. For more information
on using a library, check out the corresponding library's documentation.

To get started, you would need to know the endpoint you wish to use. Generally
speaking, the most common ones you might use for quick actions are:

* [Zendesk Support API Tickets endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/tickets/)
* [Zendesk Support API Users endpoints](https://developer.zendesk.com/api-reference/ticketing/users/users/)
* [Zendesk Support API Organizations endpoints](https://developer.zendesk.com/api-reference/ticketing/organizations/organizations/)

For more administrative tasks, the common ones you might use are:

* [Zendesk Support API Ticket Forms endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/ticket_forms/)
* [Zendesk Support API Ticket Fields endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/ticket_fields/)
* [Zendesk Support API Views endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/views/)
* [Zendesk Support API Triggers endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/triggers/)
* [Zendesk Support API Macros endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/macros/)
* [Zendesk Support API Automations endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/automations/)

Once you have determined what you wish to do, go to the corresponding API
endpoint documentation and make note of:

* The request type
  * GET
  * POST
  * PUT
  * DELETE
* The endpoint URL
* Any required parameters

From there, you will craft a curl command in the format of:

```bash
curl ZENDESK_URL/api/v2/ENDPOINT \
  -X REQUEST_TYPE \
  -H HEADER_INFO \
  -u AUTHENTICATION \
  -d DATA_TO_USE
```

Where:

* `ZENDESK_URL` is the URL of the Zendesk instance
* `ENDPOINT` is the endpoint to use
* `-X REQUEST_TYPE` is the request type from the documentation (not needed if
  making a GET request)
* `-H HEADER_INFO` is any needed header information (not always needed)
* `-u AUTHENTICATION` is the user/pass or user/token combo (not needed if using
  header based authentication)
* `-d DATE_TO_USE` is the data to send with the request (not always needed)

As an example, if you wanted to get the details for automation `12345`, your
curl command might look like:

```bash
curl https://gitlab.zendesk.com/api/v2/automations/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

Likewise, if you wanted to update automation `12345` to set `active` to false
(i.e. deactivate it), your curl command might look like:

```bash
curl https://gitlab.zendesk.com/api/v2/automations/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"automation": {"active": false}}'
```

If we wanted to full on delete automation `12345`, your curl command might look
like:

```bash
curl https://gitlab.zendesk.com/api/v2/automations/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X DELETE
```


## Common use cases

For all examples:

* `12345` refers to the items ID number

### Automations

#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/automations \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/automations/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Deactivate

```bash
curl https://gitlab.zendesk.com/api/v2/automations/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"automation": {"active": false}}'
```

### Macros

#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/macros \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/macros/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Deactivate

```bash
curl https://gitlab.zendesk.com/api/v2/macros/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"macro": {"active": false}}'
```

### SLA Policies


#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/slas/policies \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/slas/policies/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

### Tickets

#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/tickets \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/tickets/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```


#### Change status to closed

```bash
curl https://gitlab.zendesk.com/api/v2/tickets/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"ticket": {"status": "closed"}}'
```

### Triggers

#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/triggers \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/triggers/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Deactivate

```bash
curl https://gitlab.zendesk.com/api/v2/triggers/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"trigger": {"active": false}}'
```

### Views

#### List all

```bash
curl https://gitlab.zendesk.com/api/v2/views \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Show details

```bash
curl https://gitlab.zendesk.com/api/v2/views/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Deactivate

```bash
curl https://gitlab.zendesk.com/api/v2/views/12345 \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo=" \
  -H "Content-Type: application/json" \
  -X PUT \
  -d '{"trigger": {"active": false}}'
```

#### List tickets in a view

```bash
curl https://gitlab.zendesk.com/api/v2/views/12345/tickets \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

#### Count tickets in a view

```bash
curl https://gitlab.zendesk.com/api/v2/views/12345/count \
  -H "Authorization: Basic amNvbHllckBnaXRsYWIuY29tL3Rva2VuOmFwaV90b2tlbgo="
```

## Useful links

* [Zendesk API Docs](https://developer.zendesk.com/api-reference/ticketing/introduction/)
* [Zendesk Oauth docs](https://support.zendesk.com/hc/en-us/articles/203663836-Using-OAuth-authentication-with-your-application)
* [zendesk_api_client gem](https://github.com/zendesk/zendesk_api_client_rb)
* [Zendesk Support API Tickets endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/tickets/)
* [Zendesk Support API Users endpoints](https://developer.zendesk.com/api-reference/ticketing/users/users/)
* [Zendesk Support API Organizations endpoints](https://developer.zendesk.com/api-reference/ticketing/organizations/organizations/)
* [Zendesk Support API Ticket Forms endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/ticket_forms/)
* [Zendesk Support API Ticket Fields endpoints](https://developer.zendesk.com/api-reference/ticketing/tickets/ticket_fields/)
* [Zendesk Support API Views endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/views/)
* [Zendesk Support API Triggers endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/triggers/)
* [Zendesk Support API Macros endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/macros/)
* [Zendesk Support API Automations endpoints](https://developer.zendesk.com/api-reference/ticketing/business-rules/automations/)
