function setCookie(cname, cvalue, exdays) {
  const d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  let expires = "expires="+ d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  let name = cname + "=";
  let decodedCookie = decodeURIComponent(document.cookie);
  let ca = decodedCookie.split(';');
  for(let i = 0; i <ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

async function checkForPageChanges() {
  let response = await fetch("/sitemap.xml");
  let data = await response.text();
  processXml(data);
}

function processXml(xml) {
  const siteMapDoc = parser.parseFromString(xml,"text/xml");
  const pages = siteMapDoc.getElementsByTagName("url");
  urls = [];
  Array.prototype.slice.call(pages).forEach(e => {
    // This happens in local dev where there's no git information
    // for the current file so no lastmod element.
    if(e.getElementsByTagName("lastmod").length === 0) {
      let lastmod = document.createElement("lastmod");
      let now = new Date()
      lastmod.textContent = arrivalTime.toISOString();
      e.appendChild(lastmod);
    }
    urls.push({
      "url": e.getElementsByTagName("loc")[0].textContent,
      "lastmod": e.getElementsByTagName("lastmod")[0].textContent
    });
  });
  page = urls.find(e => e.url == window.location.href);

  const lastmod = new Date(Date.parse(page.lastmod));

  if(lastmod > arrivalTime)
    renderNotification({
        "id": crypto.randomUUID(),
        "type": "info",
        "icon": "fa-solid fa-circle-info",
        "title": "Page has been update",
        "url": window.location.pathname,
        "messageHTML": "<p>This page has been updated on the server.  If you want to see the lastest version please refresh the page.</p>",
        "posted": "2023-07-20 16:54:00",
        "expires": "2024-07-19 20:00:00",
        "autohide": false
      }, false);
}

async function processNotifications() {
  const response = await fetch('/notifications.json', {cache: "no-store"});
  let jsonData = await response.json();

  // Filter out notifications that have already been processed
  // or have already been seen.
  notifications = jsonData.notifications.filter(n => {
    if (processedNotifications.includes(n.id)) {
      return false;
    }
    // Don's show warnings we've seen before
    seenWarning = getCookie("toast-"+ n.id);
    if(seenWarning)
        return false;
    const now = new Date();
    // Don't show warnings which have expired
    const expiry = new Date(Date.parse(n.expires));
    if (now > expiry)
        return false;
    const valid = new Date(Date.parse(n.posted));
    // Don't show warnings which haven't been posted yet
    if (now < valid)
        return false;
    if (n.url != null && window.location.pathname != n.url)
      return false;
    return true
  });
  // Add newly processed notifications to cache unless they'll be valid soon (1 day)
  notifications.forEach(n => {
    const now = new Date();
    const validSoon = new Date(now.getTime() + (1*24*60*60*1000))
    const posted = new Date(Date.parse(n.posted))
    if(validSoon < posted)
      upcomingNotifications.push(n);
    processedNotifications.push(n.id);
  });

  notifications.forEach(n => {
    renderNotification(n);
  })
}

function processUpcomingNotifications() {
  upcomingNotifications = upcomingNotifications.filter(n => {
    const now = new Date();
    const posted = new Date(Date.parse(n.posted))
    if (now < valid) {
      return true;
    }
    processedNotifications.push(n.id);
    renderNotification(n)
    return false;
  })
}

function renderNotification(notification, withCookie=true) {
  const {title, icon, messageHTML, autohide, type, expires, posted, id} = notification;
  const toastEl = document.createElement("div");
  toastEl.id = `toast-${id}`;
  toastEl.className = "toast";
  toastEl.style = "width: 40em !important";
  if(notificationPreferences.forceAutohide)
      toastEl.setAttribute('data-bs-autohide', true);
  else
      toastEl.setAttribute('data-bs-autohide', autohide);
  toastEl.role = "alert";
  toastEl.setAttribute("aria-live", "assertive");
  toastEl.setAttribute("aria-atomic", true);
  typeClasses = "bg-primary text-white";
  switch(type) {
    case "danger":
      typeClasses = "bg-"+ type + " text-white";
      break;
    case "warning":
      typeClasses = "bg-" + type + " text-black";
      break;
    case "success":
      typeClasses = "bg-" + type + " text-white";
      break;
    case "info":
      typeClasses = "bg-" + type + " text-black";
      break;
  }
  toastEl.innerHTML = `
      <div class="toast-header ${typeClasses} h4">
        <strong class="me-auto"><i style="margin-right: 0.75em" class="${icon}"></i> ${title}</strong>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body">
        ${messageHTML}
      </div>
  `;
  if(withCookie) {
      toastEl.addEventListener('hidden.bs.toast', () => {
          if(document.getElementById(id+"-check") != null)
            document.getElementById(id+"-check").checked=true;
          switch(type) {
              case "warning":
                  setCookie("toast-"+id, true, notificationPreferences.warningHide);
                  break;
              case "danger":
                  setCookie("toast-"+id, true, notificationPreferences.dangerHide);
                  break;
              default:
                  setCookie("toast-"+id, true, notificationPreferences.defaultHide);
          }
      });
  }
  document.getElementById('toasts').appendChild(toastEl);
  const toast = new bootstrap.Toast(toastEl);
  toast.id = id;
  allToasts.push(toast);
  toast.show();
}

function startNotifications() {
  // Do initial processing of notifications
  processNotifications();
  checkForPageChanges()
  // Then check for new notifications every 30s
  notificationProcess = setInterval(function() {
    processNotifications();
  }, 30000);
  upcomingNotificationsProcess =  setInterval(function() {
    processUpcomingNotifications();
  }, 1000);
  startPageUpdates();
}

function stopNotifications() {
  if(notificationProcess != null)
    clearInterval(notificationProcess);
  if(upcomingNotificationsProcess != null)
    clearInterval(upcomingNotificationsProcess);
  if(checkForUpdatesProcess != null)
    clearInterval(checkForUpdatesProcess);
  allToasts.forEach((t) => {
    t._element.remove();
  });
}

function startPageUpdates() {
  if(notificationPreferences.checkForPageChanges)
    checkForUpdatesProcess = setInterval(function() {
      checkForPageChanges()
    }, 30000);
}

function stopPageUpdates() {
  if(checkForUpdatesProcess != null)
    clearInterval(checkForUpdatesProcess);
}

let notificationPreferences = getCookie("notification-preferences");
let upcomingNotifications = [];
let processedNotifications = [];
let dropCookie = true;
let allToasts = [];
const arrivalTime = new Date();
const parser = new DOMParser();
let notificationProcess = null;
let checkForUpdatesProcess = null
let upcomingNotificationsProcess = null;

$( document ).ready(() => {
  if (notificationPreferences === "") {
      notificationPreferences = {
          "showNotifications": true,
          "forceAutohide": false,
          "checkForPageUpdates": true,
          "dangerHide": 1,
          "warningHide": 7,
          "defaultHide": 365
      };
      setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
      n = {
          "id": crypto.randomUUID(),
          "type": "success",
          "icon": "fa-brands fa-gitlab",
          "title": "Now with Added Notifications",
          "messageHTML": `<p>The Handbook now has notifications.  This allows us to share important updates
          about the site and pages with you as well as providing features such as checking for page updates.
          You can control your notifications from the <a href="/handbook/about/tools/handbook-preferences">
          Handbook Preferences</a> pages or if you don't want notifications you can disable them by clicking
          the button below.</p>

          <p>
            <button type="button" id="imGoodBtn" class="btn btn-success text-white">I'm Good</button>
            <button type="button" id="killNotificationsBtn" class="btn btn-light">I don't want notifications</button>
          </p>`,
          "expires": new Date(),
          "autohide": false
      }
      renderNotification(n, false);
      document.getElementById("killNotificationsBtn").addEventListener("click", () => {
        notificationPreferences.showNotifications = false;
        setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);
        stopNotifications()
      });
      document.getElementById("imGoodBtn").nid = n.id;
      document.getElementById("imGoodBtn").addEventListener("click", (e) => {
          t = allToasts.find(t => t.id === e.currentTarget.nid);
          t.hide();
      });
  } else {
    notificationPreferences = JSON.parse(notificationPreferences);
  }
  //extend the date of the cookie for another year
  setCookie("notification-preferences", JSON.stringify(notificationPreferences), 365);

  if(notificationPreferences.showNotifications) {
    startNotifications()
  }
});
