---

title: "Marketo Tech Stack Guide"
description: "Reference for how Marketo is implemented."
---



<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />








## Marketo Tech Stack Guide

> **Note:** Refer to the **[Tech Stack Index](/handbook/business-technology/tech-stack/)** to browse Apps and **[Tech Stack Applications](/handbook/business-technology/tech-stack-applications/)** to manage Apps.

<% data.tech_stack.each do |stack| %>
<% if stack.title == "Marketo" %>
- **Description:** <%= stack.description %>
- **Provisioner:** <%= stack.provisioner %>
- **Deprovisioner:** <%= stack.deprovisioner %>
- **Critical Systems Tier:** <%= stack.critical_systems_tier %>
<% end %>
<% end %>

### Integrations

To see the different systems that are connected to Marketo, please visit the [Marketo System Infrastructure Mapping FigJam](https://www.figma.com/file/efXfz35A2SRcGqB0SGCcMf/Marketo-System-Infrastructure-Mapping?type=whiteboard&node-id=0%3A1&t=Vgyw5KRPT0Zd38qT-1).


### Data Model
Marketo is a flat database that utilizes Email Address as the unique ID. The `Person` Object is the main object.
### Key Reports / Dashboards

