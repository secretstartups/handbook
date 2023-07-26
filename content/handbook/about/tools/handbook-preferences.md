---
title: Handbook Preferences
description: Control your Handbook preferences
---

<noscript>
<div class="alert alert-danger" role="alert">
  JavaScript needs to be enabled for notifications to work
</div>
</noscript>

{{< cardpane >}}
{{< card header="**Notification Preference**" >}}
<div class="form-check form-switch mb-3 h4">
  <input class="form-check-input" type="checkbox" role="switch" id="showNotificationSwitch" disabled>
  <label class="form-check-label" for="showNotificationSwitch">Show Notifications</label>
</div>
<div class="form-check form-switch mb-3 h4">
  <input class="form-check-input" type="checkbox" role="switch" id="forceAutohideSwitch" disabled>
  <label class="form-check-label" for="forceAutohideSwitch">Force Autohide</label>
</div>
<div class="form-check form-switch mb-3 h4">
  <input class="form-check-input" type="checkbox" role="switch" id="checkForPageUpdatesSwitch" disabled>
  <label class="form-check-label" for="checkForPageUpdatesSwitch">Check for page updates</label>
</div>
<hr>
<p class="h4"><strong>Quick Actions</strong></p>
<p><button type="button" id="disableNotificationsBtn" class="btn btn-warning" onclick="disableNotifications()" disabled>Disable Notifications and Cleanup</button><br>
<p><button type="button" id="delAllCookiesBtn" class="btn btn-danger" onclick="delAllNotificationCookies()" disabled>Delete All Notification Cookies</button></p>

{{< /card >}}
{{< card header="**Notification Time Limits**" >}}
<div class="form-floating mb-3">
<select id="dangerHideMenu" class="form-select" aria-label="Hide danger notifications for" disabled>
  <option value="0">Never</option>
  <option value="1" selected="selected">1 Day (default)</option>
  <option value="7">1 Week</option>
  <option value="30">1 Month</option>
  <option value="365">1 Year</option>
</select>
<label for="dangerHideMenu">Hide danger notifications for</label>
</div>
<div class="form-floating mb-3">
<select id="warningHideMenu" class="form-select" aria-label="Hide warning notifications for" disabled>
  <option value="0">Never</option>
  <option value="1">1 Day</option>
  <option value="7" selected="selected">1 Week (default)</option>
  <option value="30">1 Month</option>
  <option value="365">1 Year</option>
</select>
<label for="warningHideMenu">Hide warning notifications for</label>
</div>
<div class="form-floating">
<select id="defaultHideMenu" class="form-select" aria-label="Hide other notifications for" disabled>
  <option value="1">1 Day</option>
  <option value="7" selected="selected">1 Week</option>
  <option value="30">1 Month</option>
  <option value="365">1 Year (default)</option>
</select>
<label for="defaultHideMenu">Hide other notifications for</label>
</div>
{{< /card >}}
{{< /cardpane >}}

{{< card header="**Server Side notifications**">}}
{{< server-notifications >}}
{{< /card >}}


<script src="/js/notification-preferences.js"></script>
