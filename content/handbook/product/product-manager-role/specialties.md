---

title: Product Management Specialty Assignments
---







<% department = 'Product Management' %>
<% product_team = Gitlab::Homepage.team.department_matches(department: department) %>

<%= "## #{department} Team with Specialty" %>

| Team Member | Specialty |
| ----------- | --------- |
<% product_team.each do |member| %>
    <%= "| #{member.name} | #{member.specialty} |" %>
<% end %>

## How to Make Changes

In order to make changes to the specialty of these team members follow the [outlined process](/company/team/structure/#setting-product-group-for-team-members) for updating in BamboHR. 

## How to add an option to the Bamboo Dropdown

Reach out to the Total Rewards team by asking in #total-rewards slack.. 
