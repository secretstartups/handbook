---
layout: handbook-page-toc
title: "Salesforce Booking Metrics Field Data Dictionary"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to use this documentation

Below is a Data Dictionary for the Booking Metrics fields put into place for FY22. They encompase our move to [ARR](https://about.gitlab.com/handbook/sales/sales-term-glossary/arr-in-practice/) as well as tracking other amounts such as True Ups. 

---

## ARR fields

| **Field**     | **Definition**                                | **SFDC API**     | **Replaces**    |
|-----------|-------------------------------------------|--------------|-------------|
| Net ARR   | The net change to ARR of an opportunity   | ARR_Net__c   | iACV        |
| ARR Basis | Current Subscription ARR (Renewals Only)  | ARR_Basis__c | Renewal ACV |

## Amount and Time fields

| **Field**                      | **Definition**                                              | **SFDC API**                      |
|----------------------------|---------------------------------------------------------|-------------------------------|
| Amount                     | The total dollars charged on the Opp (All Kinds)        | Amount                        |
| Recurring Amount           | All Recurring dollars (Gitlab Seats, Storage)           | Recurring_Amount__c           |
| True Up Amount             | All One-time True Up dollars                            |  True_Up_Amount__c            |
| Pro Serv Amount            | All Professional Services Dollars                       | ProServ_Amount__c             |
| Other Non-Recurring Amount | All other one-time fee products (Additional CI Minutes) | Other_Non_Recurring_Amount__c |
| Subscription Start Date    | The Start Date of the period for the opportunity        | Start_Date__c                 |
| Subscription End Date      | The End Date of the period for the opportunity          | End_Date__c                   |
