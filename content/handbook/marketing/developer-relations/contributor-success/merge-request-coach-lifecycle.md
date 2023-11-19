---
aliases: /handbook/marketing/developer-relations/contributor-success/merge-request-coach-lifecycle.html
title: "Merge Request Coach Lifecycle"
---

## Applying to become a Merge Request Coach

- Create a [new issue](https://gitlab.com/gitlab-org/developer-relations/contributor-success/team-task/-/issues/new?issue_template=mr_coach_onboarding) using the `mr_coach_onboarding` template (see screenshot below).
- Fill in the placeholders in the issue template with your information.
- Assign the issue to yourself.
- Work through the steps in that new issue.

![new issue dialog showing how to select the mr_coach_onboarding issue template](new_mr_coach_onboarding_issue.png)

## Stepping down gracefully

If you are no longer able to serve as a Merge Request Coach, you should identify another GitLab team member to take your place so that the capacity of the remaining coaches remains the same. When you are ready to step down, you need to:

1. Make an announcement on the `#mr-coaching` Slack channel.
1. Update the `team.yml` file to remove "Merge Request Coach".
1. Remove yourself from the `@gitlab-org/coaches` group.

## References/resources

1. [Merge Request Coach responsibilities](/job-families/expert/merge-request-coach#responsibilities)
1. [Merge Request Coach collaboration guidelines](/job-families/expert/merge-request-coach#collaboration-guidelines)
1. [Community Discord channel](https://discord.gg/gitlab): please join if you haven't already!

<% coaches = Gitlab::Homepage.team.merge_request_coaches %>

## Current Merge Request Coaches

GitLab currently has <%= coaches.length %> merge request coaches:

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>Group</th>
    <%#<th>Location</th> %>
    <th>Departments</th>
  </tr>
</thead>

<tbody>
<% coaches.sort_by(&:group).each do |member| %>
  <tr><td><a href="/company/team/#<%= member.anchor %>"><%= member.name %></a></td>
  <td>
    <%= member.group %>
  </td>
  <%# <td> %>
      <%# if member.locality || member.country %>
      <%# location = [member.locality, member.country].compact.join(", ") %>
      <%#= location %>
      <%#= member.country_info&.emoji_flag %>
      <%# end %>
   <%# </td> %>
   <td>
     <%= member.departments.to_sentence %>
   </td>

  </tr>
  <% end %>
  </tbody>
</table>
