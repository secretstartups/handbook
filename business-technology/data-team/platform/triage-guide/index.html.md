---
layout: handbook-page-toc
title: Triage Guide
description: Helpful tips for general problems faced on triage. 
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

### Useful regex 

##### Match lines where these terms do not exist 

`^(?!.*(<First term to find>|<Second term to find>)).*$`

e.g. For cleaning up Airflow logs: 

`^(?!.*(Failure in test|Database error)).*$`

