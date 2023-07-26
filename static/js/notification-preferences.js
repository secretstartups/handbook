$( document ).ready(() => {
    function delAllNotificationCookies() {
        document.cookie.split('; ').forEach(c => {
          key = c.split('=')[0];
          if (key.includes('toast-')) {
            id = key.split('toast-')[1];
            document.getElementById(id+"-check").checked = false
            setCookie(key, false, 0);
          }});
    }

    function disableNotifications() {
        document.getElementById("showNotificationSwitch").checked = false;
        document.getElementById("forceAutohideSwitch").disabled = true
        document.getElementById("checkForPageUpdatesSwitch").disabled = true
        document.getElementById("dangerHideMenu").disabled = true
        document.getElementById("warningHideMenu").disabled = true
        document.getElementById("defaultHideMenu").disabled = true
        notificationPreferences.showNotifications = false;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
        delAllNotificationCookies();
        stopNotifications();
    }

    function formControlDisabled(disable) {
        if (disable) {
            document.getElementById("forceAutohideSwitch").disabled = true
            document.getElementById("checkForPageUpdatesSwitch").disabled = true
            document.getElementById("dangerHideMenu").disabled = true
            document.getElementById("warningHideMenu").disabled = true
            document.getElementById("defaultHideMenu").disabled = true
        } else {
            document.getElementById("forceAutohideSwitch").disabled = false
            document.getElementById("checkForPageUpdatesSwitch").disabled = false
            document.getElementById("dangerHideMenu").disabled = false
            document.getElementById("warningHideMenu").disabled = false
            document.getElementById("defaultHideMenu").disabled = false
        }
    }

    function viewNotification(e) {
        n = JSON.parse(document.getElementById(e.currentTarget.nid).value);
        renderNotification(n, false);
    }

    function markBtn(e) {
        nid = e.currentTarget.nid
        if(e.currentTarget.textContent === "Unread") {
            processedNotifications.pop(nid);
            setCookie("toast-"+nid, false, 0);
            document.getElementById(nid+"-check").checked = false
            e.currentTarget.textContent = "Read";
            e.currentTarget.classList.remove('btn-danger');
            e.currentTarget.classList.add("btn-success");
        } else {
          n = JSON.parse(document.getElementById(nid).value);
            switch(n.type) {
              case "warning":
                  setCookie("toast-"+nid, true, notificationPreferences.warningHide);
                  break;
              case "danger":
                  setCookie("toast-"+nid, true, notificationPreferences.dangerHide);
                  break;
              default:
                  setCookie("toast-"+nid, true, notificationPreferences.defaultHide);
          }
          e.currentTarget.textContent = "Unread";
          document.getElementById(nid+"-check").checked = true
          e.currentTarget.classList.remove('btn-success');
          e.currentTarget.classList.add("btn-danger");
        }
    }

    function enableControls() {
        document.getElementById("showNotificationSwitch").disabled = false;
        showNotification.checked = notificationPreferences.showNotifications;
        if(notificationPreferences.showNotifications) {
            formControlDisabled(false);
            forceAutohide.checked = notificationPreferences.forceAutohide;
            checkForPageUpdates.checked = notificationPreferences.checkForPageUpdates;
            dangerHide.value = notificationPreferences.dangerHide;
            warningHide.value = notificationPreferences.warningHide;
            defaultHide.value = notificationPreferences.defaultHide;
        } else {
          formControlDisabled(true);
        }
        for (let e of document.getElementsByClassName("btn")) {
            e.disabled = false
        }
        document.getElementById("disableNotificationsBtn").addEventListener("click", disableNotifications);
        document.getElementById("delAllCookiesBtn").addEventListener("click", delAllNotificationCookies);
    }

    const showNotification = document.getElementById("showNotificationSwitch");
    const forceAutohide = document.getElementById("forceAutohideSwitch");
    const checkForPageUpdates = document.getElementById("checkForPageUpdatesSwitch");
    const dangerHide = document.getElementById("dangerHideMenu");
    const warningHide = document.getElementById("warningHideMenu");
    const defaultHide = document.getElementById("defaultHideMenu");
    enableControls();

    showNotification.onchange = () => {
        notificationPreferences.showNotifications = document.getElementById("showNotificationSwitch").checked;
        enableControls()
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
        if(notificationProcess == null)
            startNotifications();
        else {
            stopNotifications();
        }
    };

    forceAutohide.onchange = () => {
        notificationPreferences.forceAutohide = document.getElementById("forceAutohideSwitch").checked;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
    };

    checkForPageUpdates.onchange = () => {
        notificationPreferences.checkForPageUpdates = document.getElementById("checkForPageUpdatesSwitch").checked;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
        if(notificationPreferences.checkForPageUpdates)
            startPageUpdates();
        else
            stopPageUpdates()
    };

    dangerHide.onchange = () => {
        notificationPreferences.dangerHide = document.getElementById("dangerHideMenu").value;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
    };

    warningHide.onchange = () => {
        notificationPreferences.warningHide = document.getElementById("warningHideMenu").value;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
    };

    defaultHide.onchange = () => {
        notificationPreferences.defaultHide = document.getElementById("defaultHideMenu").value;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
    };

    // Identify notifications we've already read
    document.cookie.split('; ').forEach(c => {
      key = c.split('=')[0];
      if (key.includes('toast-')) {
        id = key.split('toast-')[1];
        if(document.getElementById(id+"-check") != null)
          document.getElementById(id+"-check").checked = true
      }});

    // Set up server side notifications buttons
    for (let e of document.getElementsByClassName("notificationData")) {
        n = JSON.parse(e.value);
        document.getElementById(n.id+"-markBtn").nid = n.id;
        document.getElementById(n.id+"-viewBtn").nid = n.id;
        document.getElementById(n.id+"-markBtn").addEventListener('click', markBtn);
        document.getElementById(n.id+"-viewBtn").addEventListener('click', viewNotification);
        if(document.getElementById(n.id+"-check").checked) {
            document.getElementById(n.id+"-markBtn").textContent = "Unread";
            document.getElementById(n.id+"-markBtn").classList.add("btn-danger");
        } else {
            document.getElementById(n.id+"-markBtn").textContent = "Read";
            document.getElementById(n.id+"-markBtn").classList.add("btn-success");
        }
    }
});
