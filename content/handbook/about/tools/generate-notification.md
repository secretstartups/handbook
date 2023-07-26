---
title: Notification Generator
description: Simple tool for generating handbook notifications
---

{{< cardpane >}}
{{< card header="**Create a notification**" footer="<button id=\"testBtn\" class=\"btn btn-secondary\">Test</button> <button id=\"createBtn\" type=\"Generate JSON\" class=\"btn btn-primary\">Generate JSON</button>" >}}
  <div class="mb-3">
    <label for="notificationTitle" class="form-label">Title</label>
    <input type="text" class="form-control" id="notificationTitle" aria-describedby="notificationTitleHelp" value="Page has been update">
    <div id="notificationTitleHelp" class="form-text">The title of notification.</div>
  </div>
  <div class="mb-3">
        <label for="notificationType" class="form-label">Type</label>
        <select id="notificationType" class="form-select" aria-label="Default select example">
          <option selected>Open this select menu</option>
          <option value="danger">Danger</option>
          <option value="warning">Warning</option>
          <option value="info" selected="selected">Info</option>
          <option value="success">Success</option>
          <option value="other">Other</option>
        </select>
        <div id="notificationTypeHelp" class="form-text">The type sets color of the title bar of the notification and the duration the notification is dismissed for.</div>
    </div>
  <div class="mb-3">
      <label for="notificationIcon" class="form-label">Icon</label>
      <input type="text" class="form-control" id="notificationIcon" aria-describedby="notificationIconHelp" value='<i class="fa-solid fa-circle-info"></i>'>
      <div id="notificationIconHelp" class="form-text">The <a href="https://fontawesome.com/search?o=r&m=free">FontAwesome</a> icon to show with the notification.</div>
  </div>
  <div class="mb-3">
        <label for="notificationHTML" class="form-label">Message text (HTML)</label>
        <textarea class="form-control" id="notificationHTML" rows="3"><p>The GitLab Handbook homepage has been updated with a new look.</p></textarea>
        <div id="notificationHTMLHelp" class="form-text">The <a href="https://fontawesome.com/search?o=r&m=free">FontAwesome</a> icon to show with the notification.</div>
    </div>
    <div class="mb-3">
            <label for="expiryDate" class="form-label">Expires</label>
            <input id="expiryDate" class="form-control" type="datetime-local" id="expiryDate" aria-describedby="expiryDateHelp">
            <div id="expiryDateHelp" class="form-text">The date the notification expires</div>
      </div>
  <div class="mb-3">
        <label for="applyToURL" class="form-label">Page to apply to</label>
        <input type="text" class="form-control" list="pagesList" id="applyToURL" aria-describedby="applyToURLHelp" value="*">
        <datalist id="pagesList">
            <option value="*">
        </datalist>
        <div id="applyToURLHelp" class="form-text">Apply notification to a specific page. &lowast; = all pages</div>
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="autoHide" checked="checked">
    <label class="form-check-label" for="autoHide">Autohide</label>
  </div>
{{< /card >}}
{{< /cardpane >}}

{{< cardpane >}}
{{< card code=true header="**Notification code**" footer="<button id=\"copyBtn\" type=\"Generate JSON\" class=\"btn btn-primary\">Copy to Clipboard</button>" >}}{
    "id": "F9A827C3-ED85-442B-B6CA-77A18FAE3F4E",
    "type": "info",
    "icon": "fa-solid fa-circle-info",
    "title": "Page has been update",
    "messageHTML": "<p>The GitLab Handbook homepage has been updated with a new look.</p>",
    "posted": "2023-07-20 16:54:00",
    "expires": "2024-07-19 20:00:00",
    "autohide": false
  }
{{< /card >}}
{{< /cardpane >}}

<script src="/js/notification-generator.js"></script>
