(function() {
    function genNotification() {
        const id = crypto.randomUUID();
        const type = document.getElementById("notificationType").value;
        const icon = (() => {
            div = document.createElement('div')
            div.innerHTML = document.getElementById("notificationIcon").value;
            return div.firstChild.classList.value;
        })();
        const title = document.getElementById("notificationTitle").value;
        const url = document.getElementById("applyToURL").value;
        const messageHTML = document.getElementById("notificationHTML").value;

        let now = new Date();
        let expiry = new Date(now.getTime() + (1*24*60*60*1000))
        if (document.getElementById("expiryDate").value != "")
            expiry = new Date(Date.parse(document.getElementById("expiryDate").value));
        const autohide = document.getElementById("autoHide").checked;
        const nowStr = now.toISOString().split('T')[0] + " " + now.toTimeString().split(" ")[0];
        const expiryStr = expiry.toISOString().split('T')[0] + " " + expiry.toTimeString().split(" ")[0];
        let n = {
            "id": id,
            "type": type,
            "icon": icon,
            "title": title,
            "url": url,
            "messageHTML": messageHTML,
            "posted": nowStr,
            "expires": expiryStr,
            "autohide": autohide
        }
        if(url === "*")
            delete n['url'];
        return n
    }

    async function getPageList() {
      let response = await fetch("/sitemap.xml");
      let data = await response.text();
      generatePageList(data);
    }

    function generatePageList(xml) {
      const siteMapDoc = parser.parseFromString(xml,"text/xml");
      const pages = siteMapDoc.getElementsByTagName("url");
      Array.prototype.slice.call(pages).forEach(e => {
        // This happens in local dev where there's no git information
        // for the current file so no lastmod element.
        page = document.createElement("option")
        loc = e.getElementsByTagName("loc")[0].textContent;
        page.value = loc.split(window.location.origin)[1];
        document.getElementById("pagesList").appendChild(page);
      });
    }

    document.getElementById("testBtn").onclick = () => {
        renderNotification(genNotification(), false);
    }
    document.getElementById('createBtn').onclick = () => {
        document.getElementsByTagName('pre')[0].textContent = JSON.stringify(genNotification(),null,2);
    }
    document.getElementById('copyBtn').onclick = () => {
        navigator.clipboard.writeText(JSON.stringify(genNotification(),null,2))
        renderNotification({
                "id": crypto.randomUUID(),
                "type": "success",
                "icon": "fa-solid fa-clipboard",
                "title": "JSON Copied to Clipboard",
                "messageHTML": "<p>The notification json has been copied to the clipboard.  Please add it to the end of the notification.json file and raise a new MR to share your notification with the world.</p>",
                "expires": new Date(),
                "autohide": true
            })
    }
    document.getElementsByTagName('pre')[0].textContent = JSON.stringify(genNotification(),null,2);
    getPageList();
})();
