---
layout: handbook-page-toc
title: "LeanData"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Tool Uses     

LeanData works within the Salesforce (SFDC) ecosystem and is primarily responsible for routing all record types ([lead](#lead-routing-object), [contact](#contact-routing-object), [account](#account-routing-object) and [opportunity](#opportunity-routing-object)). Leveraging the advanced functionality with LeanData we are able to build and execute the Sales and Marketing Go-to-Market (GTM) strategy.  

## LEAD Routing Object

### LEAD Workflow 
Current as of 9 December 2019

![](/images/handbook/marketing/marketing-operations/20191010_LeanData_LEADflow.png)

### FlowBuilder   

#### `New Lead` Node 

1. `Created by Admin` = Records must be created by `Sales Admin` AND have `Person Score` < (greater  than) 15 points.
     1. Minimum of 15 points means the records has interacted with *at least* one piece of content, is a known name or provided a company-domained `Email`.
1. `Company Missing?` = if the `Company` field is empty or filled with a non-standard enrichment value the workflow will send to `Standardize Company` node. 
     1. Accepted enrichable value is `[[unknown]]` OR **blank**.
     2. Any other value will render the field "filled" and enrichment solutions **will not** overwrite.
1. `Matched Account` matches `Company Name` to any existing ACCOUNT with Salesforce (SFDC).  
     1. If matched records advances to `Route to Matched Account` which will leverage the [owner mapping](#owner-mapping) functionality routing to the designated SDR. 
     1. If ACCOUNT Owner is `Invalid`, `Inactive` or `Sales Admin` -> workflow will push record to `Sales Segment` node. 
1. `Sales Segment` - filter records based on segment (Large, Mid-market, SMB, Unknown), enriched on the SFDC record by our designated data sources. Explanation of how `Sales Segment` is determined can be found on the [Business Ops Resource page](/handbook/business-ops/resources/#segmentation)
     1. If `Large` => `Enterprise` this will route and filter based on the pairings for the Enterprise level SDRs. 
     1. If `Mid-Market` or `SMB` => `Commercial` this will further filter by `Region` then `Sales Segment` before ultimately routing to appropriate SDR team or Representative.
     1. If `Unknown` => progresses to next node.
1. `Employee Bucket` - specific forms on our website & in-product ask for end user to self-select **Number of Employees** in their company. This is a tertiary data point and is only used to route when no other information is available on the record.    
     1. If `2,000-9,999` or `10,000+` => `Enterprise` node which will further segment by `Region` and route to the correct Round Robin or Territory SDR. 
     1. If `1-99`, `100-499` or `500-1,999` => `Commercial` node which will further filter by `Region` then `Sales Segment` before ultimately routing to appropriate SDR team or Representative.
     1. If `Unknown` => routed to the `SDR Queue`
1. `SDR Queue` is managed by SDR Leadership and they are responsible for routing the records to their respective teams for research and follow up.   


#### `Updated Lead` Node 
1. Activated if `Person Score` value changes **at any time**.  
1. `Score Update?` will route the record if the `Person Score` is greater than or equal to `50 points` AND if `OwnerID` is a system Administrator of any kind. 
     1. If TRUE => `Matched Account` node
     1. If FALSE => LeanData will put them in a holding queue until the `Person Score` is updated again at which point LeanData will check criteria again. 

==> Routing will then follow same path as `New Lead` flow starting at **Step 3** [above](#new-lead-node).


### Monthly Updates  

1. Workflow updates are done on a **MONTHLY** basis to incorporate SDR changes
1. Clone `LIVE` workflow 
1. DO NOT adjust the **Owner Mappings** until the day the workflow is to take effect


## CONTACT Routing Object
Current as of 9 December 2019  

![](/handbook/marketing/marketing-operations/leandata/20191209_LeanData_CONTACTflow.png)



## ACCOUNT Routing Object
Current as of 12 December 2019 

This workflow **is not** activated to run on a recurring basis. It only can be used on a one-time routing manual push at this time. 

![](/handbook/marketing/marketing-operations/leandata/20191212_LeanData_ACCOUNTflow.png)



## Territory Management 
 
The Territory Management capability aims to help sales and marketing teams execute go-to-market strategies that seamlessly automate complex territory lead routing and distribution.    

### Version 1.0 

Launched Version 1.0 of **Territory Management for ACCOUNTS** on 12 December 2019. Each of our three `Segments` (`Large`, `Mid-Market` and `SMB`) have a dedicated Territory spreadsheet which are only editable by the Sales & Marketing Operations teams.  

* [Large](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=1172192878)
* [Mid-Market](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=1477932297)
* [SMB](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=1917614011)

Launched Version 1.0 of **Territory Management for SDR** on 20 December 2019. Each of the three `Segments` (`Large`, `Mid-Market` and `SMB`) have a dedicated Territory spreadsheet cloned from the above documents but modified to define `OwnerID` as an SDR or Round Robin matching the pairings.  

* [Large](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=463255548)
* [Mid-Market](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=1196243637)
* [SMB](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit#gid=991220603)

### LEAD Territory Management Append Workflow

A dedicated workflow was created to append the Territory Management data to specific fields on the LEAD object that would not interfere with the regular LEAD workflow that handles inbound LEAD flow.  

Specific LeanData fields on the LEAD object in Salesforce related to Territory Management: 
- `LeanData Owner`
- `LeanData Territory`
- `LeanData Region`
- `LeanData Sub-Region`

![](/handbook/marketing/marketing-operations/leandata/20191222_LeanData_LEADtmflow.png)


#### Follow our [implementation process](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/84)
{:.no_toc}


### Product Documentation

* [**LeanData Datasheet**: Territory Management](http://info.leandatainc.com/DSTerritoryManagement_2Download.html)
* [**LeanData Blog**: Territory Management: Align Sales & Marketing on Revenue](http://learn.leandatainc.com/routing-rules-leandatas-sales-and-marketing-blog/territory-management-align-sales-marketing-on-revenue)


## Advanced Functions  

### Owner Mapping

Extracted from LeanData:  
> Map an existing account owner to a new account team owner in LeanData Router for leads routed to matched accounts. This is typically used by organizations with account teams where SDRs first qualify leads for account exec owners.

The [Sales Development team](/handbook/marketing/revenue-marketing/sdr/) is responsible for qualification of all records both inbound/outbound.   

Utilizing **Owner Mapping** an ACCOUNT owner (i.e. Strategic Account Leader (SAL)) can be mapped to a designated Sales Development Representative (SDR), which will route any matched records to the SDR for qualification before handing it off to a SAL.   

The **Owner Mapping** functionality is leverated in the `Route to Matched Account` node of the [LEAD workflow](#lead-workflow).  

More information about [Record Ownership](/handbook/business-ops/resources/#record-ownership). 

### Round Robin   
Details TBA

### Schedules

#### Vacation Setting
{:.no_toc}

When someone is scheduled to be out of office for any amount of time we are able to leverage the LeanData **Vacation Setting** to designate a *temporary* routing change. The need to manually route is limited assignment flow will **automatically** remove / re-add the person to the flows.    

For assignment rules leveraging the [**round robin**](#round-robin) functionality, there must be *at least* ONE "active" member at all times. 

##### Submit a Vacation   

The Marketing Operations team are the only ones able to add or delete a vaction request. If you need to schedule and submit a vacation, please use the [`LeanData OOO` issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=leandata_ooo)) within the Marketing Operations project. 