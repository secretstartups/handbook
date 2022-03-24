---
layout: handbook-page-toc
title: "Marketing Data Pump Field Mapping Change Checklist"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Common data model:

- [ ] Add field in the Lead data model. Make sure the field name is exactly same as Column Name in .csv file.

## Recipes - In order of change:

1. ### Mapping leads data from CSV to data model:
	- [ ] Step 1: New call for Mapping fields to data model : Add new field in input and response schema. make sure the field is part of Data Array and not outside of it.
	- [ ] Step 2: Map to Lead data model: Map step1 field to the data model field.
	- [ ] Step 4: Return response from Mapping fields to data model: Add new field mapping from step 2 to the response step.
2. ### Handling Duplicate Leads:
	- [ ] Step 1: New call for Dedup Leads: Add new field to the input schema. Check for data type mismatch. Add the field to the output schema with field name = Field API name in Marketo org.
	- [ ] Step 2: Search leads in Marketo: Search and Add new field to the output fields list.
	- [ ] Step 5: Execute ruby code: Sort Array: Add the field to the output schema. Make sure the field name is same as Step 1.
	- [ ] Step 8: Parse JSON document: Add the field to the sample document list. The field name = Step 2 name with sample value. like: "CDB_Ind_Namespace_is_SaaS_Trial__c": false
	- [ ] Step 9: Return response from Dedup Leads: Add the field mapping to the response step from Step 8
3. ### Callable Lead data Upsert in Marketo:
	- [ ] Step 1: New call for UpsertLead: Add new field to the input LeadData array. Check for 'optional' value before saving the field.
	- [ ] Step 3: Create/update/upsert leads in Marketo: Map new field for upsert in Marketo from Step 1.
	- [ ] Step 11: Update lead in Marketo: Follow the same mapping logic as Step 3. This time map using Step 7 field.
4. ### S3 to Marketo lead import:
	- [ ] Step 1: New CSV file in Amazon S3: Add the field name to the columns list in exact order as it is in the file.
	- [ ] Step 6: Mapping fields to data model: Map step 1 new field to the recipe input.
	- [ ] Step 7: Call recipe UpsertLead: Add Step 5 new field to the recipe input. Check in any data transformation is needed for the field in formula mode.
