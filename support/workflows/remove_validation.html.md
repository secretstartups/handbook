---
layout: handbook-page-toc
title: Remove Validation
description: "Workflow to remove validation on a GitLab.com user account"
category: GitLab.com
subcategory: Accounts
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow covers how to remove validation for a GitLab.com user account. All free users [created after May 17, 2021](https://about.gitlab.com/blog/2021/05/17/prevent-crypto-mining-abuse/) require a credit or debit card validation to use shared runners on GitLab.com. 

> Credit card validation *is not* connected to a customers.gitlab.com account or Zuora subscription.

## Workflow

You must ensure the customer is aware that removal of validation will result in their GitLab.com account being unable to use shared runners until they provide a credit or debit card for validation.

1. Complete the [Account Changes workflow](account_changes.html) to verify the account owner and that you have received their permission to proceed.
2. Sign into your admin account and locate the customer's user account.
3. Under the account tab, click `Edit`.
    1. Uncheck the "Validate user account" box.
    1. Add an [Admin Note](admin_note.html).
    1. Save your changes.
4. Use the `Support:SaaS::Credit Card Validation Removal Successful` macro.
