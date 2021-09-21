---
layout: handbook-page-toc
title: "OneTrust Cookie Consent Implementation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# OneTrust Cookie Consent Implementation

## Why OneTrust?

In Q3, the Digital Experience team is implementing [OneTrust](https://www.onetrust.com/products/cookie-consent/) as a tool to replace CookieBot for cookie consent. 

This implementation will be on `about.gitlab.com` specifically, but if added to the top-level `gitlab.com` domain it will propagate down to all subdomains. This allows visitors to any GitLab domain to configure their cookie preferences once across all GitLab tools. 


## The OneTrust Tool

Within OneTrust, we have access to a variety of controls:
- Dashboards showing the rate of consent and declines in various regions
- Categorization of all cookies (ie. Functional vs Performance cookies)
- The test scripts and production scripts that should be placed in the `<head>` of the GitLab website
- The design of the banner and modal (button colors, logo)

To request access to the OneTrust tool, please reach out to #mktgops in slack

## UX

The look of the modal and banner are currently managed within OneTrust. There are options for colors and logo, as well as how to add a button that is always present on the webpage (such as our Cookies Settings button in the `about.gitlab.com` footer). Alternatively, there is a default OneTrust button (blue checkmark in the bottom left corner) that can be ever-present on all pages. 

Note: There are legal requirements around having the banner appear for certain regions, and having those regions' cookies set too "off" by default. 

Any changes to the UX and other configurations should be published within OneTrust by going to _OneTrust > Cookie Compliance > Scripts > gitlab.com > Publish_. The changes could take up to 4 hours to appear. After clicking publish, we also have the option of re-triggering the cooke consent banners even if viewers have already dismissed it. 


## Implementation

OneTrust is implemented with a `<script>` tag in the `<head>` of the webpage, above other scripts since consent is necessary before other scripts load and potentially set cookies. 

### Test Script

OneTrust provides a test script to use on staging environments:

```
<script type="text/javascript" src="https://cdn.cookielaw.org/consent/{{ID}}-test/OtAutoBlock.js" >
</script>

<script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js"  type="text/javascript" charset="UTF-8" data-domain-script="{{ID}}-test" >
</script>

<script type="text/javascript">
  function OptanonWrapper() { }
</script>
```

`{{ID}}` should be replaced with the specific domain ID for GitLab (Found in _OneTrust > Cookie Compliance > Scripts > gitlab.com_)


### Production Script

To be used on live pages in place of the Test Script above:

```
<script src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js"  type="text/javascript" charset="UTF-8" data-domain-script="{{ID}}" >
</script>

<script type="text/javascript">
  function OptanonWrapper() { }
</script>
```

Again, `{{ID}}` should be replaced with the specific domain ID for GitLab (Found in _OneTrust > Cookie Compliance > Scripts > gitlab.com_)

### Adding a button to the footer

We should always provide an option for users to re-configure their cookies. We can do this by either using OneTrust's default (floating blue checkmark button on all pages) or turn off that checkmark and add a link in the footer like so:

```
<button id="ot-sdk-btn" class="ot-sdk-show-settings">
  Cookie Settings
</button>
```

This button can be styled as needed with custom css. 
