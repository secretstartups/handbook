---
layout: handbook-page-toc
title: "Using the Platypus API"
description: "The Platypus API is a HTTP REST API. It is made up of various submodules which house various integration sources and data from different systems."
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The Platypus API is a HTTP REST API. It is made up of various submodules which house various integration sources and data from different systems. For example we have a Finance API which is split up into a Billing API and Accounting API which are both split again into other functionality. Each of these sub APIs is secured under its own API scope. API Clients are explicitly granted the ability to request these scopes and will have to request the scopes they need in order to get an access token with the correct permissions (claims).

# Environments & URLs

**Production:** [https://production.ci.nexus.gitlabenvironment.cloud](https://production.ci.nexus.gitlabenvironment.cloud)

**Staging:** [https://staging.ci.platypus.gitlabenvironment.cloud](https://staging.ci.platypus.gitlabenvironment.cloud/)

# API Resources & Documentation

A full OpenAPI Spec is published along with our Swagger documentation which can be found by visiting the `/docs` path of any platypus environment. For example: [https://production.ci.nexus.gitlabenvironment.cloud/docs](https://production.ci.nexus.gitlabenvironment.cloud/docs)

# Requesting Access to the Platypus API

If you would like to use any of the resources in the Platypus API, please reach out to the Enterprise Applications Integrations team in our slack channel [#bt-integrations](https://gitlab.slack.com/archives/C015U7R5XJ8). We will ask you about your project and what you need from the API and create you an API client with the appropriate permissions. Once we've done that we will securely provide you with your API client credentials which consist of a **Client ID** and **Client Secret**.

Keep reading for information on how to authenticate with Platypus

# Authentication

Platypus has a few different methods for authenticating requests but the preferred method for machine to machine clients is [OAuth2 Client Credentials Flow](https://auth0.com/docs/flows/client-credentials-flow). This authentication flow consists of a simple token handshake which will provide your API client with a JWT (JSON web token) Access Token that should be passed in the **Authorization header** of every request to Platypus.

## High-level auth flow

[_Image Source_](https://auth0.com/docs/flows/client-credentials-flow#how-it-works)

![Platypus auth flow image](../images/platypus-auth-flow.png)

1. Your client application will programmatically execute a token request to the Platypus OAuth2 token endpoint.
   ```bash
   curl --location --request POST 'https://staging.ci.platypus.gitlabenvironment.cloud/oauth/token' \
   --header 'Authorization: Basic Mjc2NTZjM2UtYjhiOS0xMWViLTg1MjktMDI0MmFjMTMwMDAzOmhhcHB5ZGF5cw==' \
   --header 'Content-Type: application/x-www-form-urlencoded' \
   --data-urlencode 'grant_type=client_credentials' \
   --data-urlencode 'scope=example.testscope:read example.testscope:write marketing.lead:write'
   ```
   1. The Client ID and Client Secret can be included either in the Basic Auth Header as seen in the example, or as parameters in the url encoded data `client_id` and `client_secret` respectively.
   1. The method for encoding a Basic Auth header is `base64('<client_id>:<client_secret>')`
   1. The integrations team will provide you with the right scopes you will need to access the API resources you want to use.
1. The auth server will respond with the access token and expiry
   ```json
   {
     "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIyNzY1NmMzZS1iOGI5LTExZWItODUyOS0wMjQyYWMxMzAwMDMiLCJlbWFpbCI6ImNsaWVudDFAbmV4dXMtc2VydmljZS1hY2NvdW50LmNvbSIsImNsaWVudF9uYW1lIjoiQ2xpZW50IDEiLCJzY29wZXMiOlsiZXhhbXBsZS50ZXN0c2NvcGU6cmVhZCIsImV4YW1wbGUudGVzdHNjb3BlOndyaXRlIiwibWFya2V0aW5nLmxlYWQ6d3JpdGUiXSwiaWF0IjoxNjI4MjgwMzUxLCJleHAiOjE2MjgyODM5NTF9.zmsGBPL6msn6oTRq7oP2Ka58Ls2smi18VnQtcFd4du20VdAINi_YykjjDUJlyirRKGt3wFOLD7_-SCQBln8_bDFYhnU1M0QhPP6NbECQszyFbY6Y5gl_DSNxN0IPCNTwf1RV1k8Yp6Lz7z0EM_2cwY2NYMgu1pP0D2fqQRIOMy6k6JXVtBfKPVdkE-un6lh4u7NDzem5pqhF7DYYGlakakm8jqtamIBgr3Ud_1b73io5aoX4G2IcCnDPFSEHevJOe_wGih5X1Mia3WDwoOTnK4ucpoj3fzfTuC0CPQrZl9p3ZJ4KW6Mz2e5bdtQvvxrnzK1tWSHR2eku6s0sTtCnA71LpT-brTAkSWJ4-AJuKjT2qS38RdiMTJctzhrjDJZVmBIQhdMW5AeW650He_K3t05Cp3YSlqfxSEsOP8f_X5Ha4DHqx9YFs8C3K6cOdJkIjQ9bhT1m_eSqFG0rd5r1Xt2QTqOgTd7l67VJUd1t_uFyD0OOYplKkdgfjcta85TPG8tSLBXd_uwJ1JL0cyelUkg3qpx4UH8sf95KQXBVuAJEKj3O6oWa0trHyrwvO2STVckdWgRzq4IDZ8okYIE_CIUcmQjuTgnaRkSZHEs-HfYxgloqnFYQvp63OMOu6pI43xNE2Qh-Dz3lH-h7hLJjzfxEH-lOOe8ms4iZSQyNKv0",
     "expires_in": 3600
   }
   ```
   1. `expires_in` is displayed in seconds
1. You will need to store the `access_token` and ensure that you know when it will expire so you can fetch a new one before that occurs.
1. In order to authorize your subsequent API requests, you must include the access token as a bearer token in each request.
   ```
   Authorization: Bearer <access-token>
   ```

## Notes and Tips

1. An easy way to know when your token is going to expire is to check the token payload. Because this token is a JWT (JSON web token), you can extract the expiry timestamp directly from the token. JWTs are of the format `header.payload.signature` where the payload is base64 encoded. In order to inspect it you can split the token string on the full-stop and then base64 decode the second part; `base64Decode(token.split('.')[1])`. The resulting string is a JSON object. The `exp` field of this object contains a UNIX timestamp of when the token expires.
1. A helpful way to avoid sending expired tokens is to preemptively request a new one a few minutes before the old one expires. You can take the expiry field, subtract five minutes and check that it hasn't expired before you run every request. If it has, you can run through the client credentials flow again to get a new token.
1. Many OAuth2 clients will perform all of the above logic for you so you don't need to think about it.
1. There are a bunch of json web token libraries for different languages that will handle decoding of tokens for you. See the list here: https://jwt.io/#libraries-io

## Troubleshooting

1. I am receiving a 401 response from the token endpoint
   1. Double check that you have the correct `client_id` and `client_secret` values
   1. Check the response body in case there's information there about what failed.
1. I am receiving a 403 response when I make requests to the API
   1. Ensure you are including your access token as a Bearer token in the `Authorization` header of each request
   1. Ensure your token has not expired. You can debug this by pasting your token in the debugger at [jwt.io](https://jwt.io/) and checking the `exp` field in the payload. If it shows you a date that's in the past, then it has expired.
   1. Ensure that your token has the correct scopes for the API endpoint you are trying to consume. You can debug this by pasting your token in the debugger at [jwt.io](https://jwt.io/) and checking the `scopes` claim in the payload. Check with the integrations team if you need additional scopes added to your API client.
