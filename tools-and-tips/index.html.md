---
layout: handbook-page-toc
title: "Tools and tips"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page contains useful tips for working at GitLab and for various tools we use such as [Slack](#slack), [Zoom](#zoom), and [Google](#google).

You can find more tools and tips in the following sub-pages:

- [macOS page](/handbook/tools-and-tips/mac/)
- [Linux page](/handbook/tools-and-tips/linux/)
- [Other apps](/handbook/tools-and-tips/other-apps/)
- [How to search like a pro](/handbook/tools-and-tips/searching/)
- [`git` page](/handbook/tools-and-tips/git/)
- [`rubocop` page](/handbook/tools-and-tips/rubocop/)

## GitLab tips

### Change your username at GitLab.com

- Starting point: let's say your username is `old-mary` and you want it to be just `mary`.
- **Note:** each GitLab account is tracked by an **userID**, which is a number stored in a database.
  If we change the username, the userID does not change.
  And all the permissions, issues, MRs, and relevant stuff within GitLab are related to your **userID**, not with your username.
- **Note:** if you are not a GitLab Team member, the same process applies except your e-mail ([STEP 2](#change-username-step-2)), which will be different (will not be @gitlab.com email), so you can replace it with your own email account.

##### STEP 1: Request your new username

- Access the username you want to request via `https://gitlab.com/mary`.
- Check its activity and projects to see if they are an inactive user [according to the name squatting policy](/handbook/support/workflows/namesquatting_policy.html).
- If you're a team member, Complete the [current process for requesting a dormant username](/handbook/support/internal-support/).
- There's no guarantee that the username will be available for you.

##### STEP 2: Create a new account with your new username
{: #change-username-step-2}

- If support replies to you telling that the username is free to use, create a new GitLab.com account with it.
  Use a personal email to register your new account and choose one that has not been used with your old GitLab account.
- Navigate to your [**Profile Settings** > **Emails**](https://gitlab.com/profile/emails), and add a new email.
  ⭐️ **Trick** ⭐️ If your email at GitLab is `mary@gitlab.com`, add the new email as `mary+something@gitlab.com`: this is a [Gmail trick](https://support.google.com/mail/answer/12096?hl=en)! All your emails sent to this alias will end up in your GitLab email account 😃
- Navigate to <https://gitlab.com/profile/notifications> and choose the notifications email: `mary+something@gitlab.com`.
- Open your old account in one browser and the new one in another browser (e.g., Chrome and Firefox, or Chrome and Safari) - log in to both accounts at the same time.

##### STEP 3: Let's have some fun (kidding, this is critical!)

- Navigate to <https://gitlab.com/profile/account> in both your accounts.
- Look for your username.
  This operation has to be done quickly, otherwise you are risking to lose your awesome new username to someone else quicker than you.
  We need to **swap** the usernames between both accounts, so you'll keep all your history, your privileges, issues, and MRs assigned to you, etc.
- If you work with 2 monitors, open each browser on one monitor.
  If you don't, open them side by side, so that you can keep an eye on both at the same time.
- Rename your new username `mary` to something like `mary-1` and **DO NOT** click **update username** yet.
  Rename your old username `old-mary` to your new username `mary` and **DO NOT** update that either.
  Just leave them typed into the boxes.
- Make sure you did the previous step right!
- ⚠️ **CRITICAL** ⚠️ Update the first one (`mary` to `mary-1`).
  Immediately, click **update** on the other one (`old-mary` to `mary`).
- Immediately, rename the `mary-1` to your old one `old-mary` and click **update username** again.
- Ta-Da! 🙌

##### STEP 4: Move your projects (or not)

- Now, if you have any personal projects, you might want to import them to your new account (the one that has your old username now).
  To do that, in your new account (the one with the old username), click **Create a New Project**, give it the very same name as the original one, click **Git - add repo by url**, and paste the `https://` URL of your project there.
  To make things easier, make sure all the projects you want to import are set to `public` view.
  You can make them private afterwards.
- If you have GitLab Pages projects with the default **GitLab.io** url, you will need to import them to you new account, then make a change to **trigger a build** and redeploy your site.
  They will be affected only if you're using a [CNAME with a subdomain instead of an A record](/blog/2016/04/07/gitlab-pages-setup/#custom-domains).
  This won't affect Pages projects that use custom domains, as they all point to the same Pages server IP via `A` record.
  Your groups won't be affected either, as they operate under their own namespace.
  Add both users as members of your groups and nothing changes.

That's it! Don't forget to update your username in the following places:
- [team page](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/team.yml)
- [Marketing Handbook](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/handbook/marketing/index.html.md), in case you're a Marketing Team member.
- [BambooHR](https://gitlab.bamboohr.com/home/) GitLab Username under contact details

### GitLab team members' resources

The [GitLab team-member resources project](https://gitlab.com/gitlab-com/gitlab-team-member-resources) has a wiki for sharing among [GitLab team-members](/company/team/structure/#team-and-team-members).

It's for topics like parenting where people may want to share knowledge, but the handbook is not the best fit.

### GitLab team members' setups

[@tipyn](https://gitlab.com/tipyn)'s [home office equipment and macOS setup](https://gitlab.com/tipyn/tipyn/blob/master/mac-os-setup.md)

### Linking Gravatar photo

Link your GitLab email address to an easily recognizable photo of yourself on GitLab, Slack, and [Gravatar](https://en.gravatar.com/).
It is company policy to use a photo, and not an avatar, a stock photo, or something with sunglasses for any of your GitLab accounts, as we have a lot of GitLab team-members and our brains are comfortable with recognizing people; let's use them.

### Creating gifs

We have a [dedicated section](/handbook/product/making-gifs) for that in the handbook.

### Resizing Images

[ImageMagick](https://imagemagick.org/) provides the `convert` CLI command which can be used to resize images. Our blog images do not need resolutions higher than 1920x1080. This saves bandwidth and makes the website load faster.

On macOS, install ImageMagick with Homebrew:

```shell
$ brew install imagemagick
```

On Linux, use your package manager:

```shell
$ sudo dnf install ImageMagick
$ sudo apt install imagemagick
```

This example converts an existing image to `1920x1080` resolution and replaces it inline:

```shell
convert blogimage.jpg -resize 1920x1080 blogimage.jpg
```

You can also use percentage values for the `-resize` parameter. The `convert` CLI command can do more things explained in the [documentation](https://imagemagick.org/script/convert.php).

### Using Mermaid

Mermaid is a tool that allows us to create flowcharts, graphs, diagrams, Gantt charts, etc. within GitLab! Check out the [examples in the GitLab docs](https://docs.gitlab.com/ee/user/markdown.html#mermaid) on how to use Mermaid.

A few additional resources that can be helpful when working with Mermaid are:
* The [live mermaid editor](https://mermaid-js.github.io/mermaid-live-editor) to check your work!
* [GitHub's Mermaid overview](https://mermaid-js.github.io/mermaid/#/)
* A [CSS color bank](https://www.rapidtables.com/web/css/css-color.html) to add color to your charts.
* You can see an example of how to add images to Mermaid charts [here](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcbiAgQVtDaHJpc3RtYXNdIC0tPnxHZXQgbW9uZXl8IEIoR28gc2hvcHBpbmcpXG4gIEIgLS0-IEN7TGV0IG1lIHRoaW5rfVxuICBDIC0tPnxPbmV8IERbTGFwdG9wXVxuICBDIC0tPnxUd298IEVbaVBob25lXVxuICBDIC0tPnxUaHJlZXwgRltmYTpmYS1jYXIgQ2FyXVxuICBDIC0tPiBHXG4gIEcoXCI8aW1nIHNyYz0naHR0cHM6Ly9pY29uc2NvdXQuY29tL21zLWljb24tMzEweDMxMC5wbmcnOyB3aWR0aD0nMzAnIC8-XCIpIiwibWVybWFpZCI6eyJ0aGVtZSI6ImRlZmF1bHQiLCJzZWN1cml0eUxldmVsIjoibG9vc2UifX0).
* Examples of Mermaid charts that have been created by GitLab team members:
  - [Talent Development Program Chart](/handbook/people-group/talent-development-program/#talent-development-program-chart) by [Cassiana Gudgenov](https://gitlab.com/cgudgenov), People Operations Specialist
  - [CEO Year at a Glance](/company/cadence/#year-at-a-glance)
  - [Data Infrastructure System Diagram](/handbook/business-ops/data-team/platform/infrastructure/#system-diagram)
* [Advanced layout demos](mermaid) for Mermaid diagrams

_Note: When creating Mermaid charts in the GitLab handbook, you need to type `three back tick symbols` followed by the word `mermaid` before the chart, and `three back tick symbols` at the end of the chart.
This will enable Markdown to distinguish between .md and Mermaid.
Please reference the example Mermaid charts linked above to see how this looks live._

### Visual help to differentiate between GitLab servers

If you are working on multiple GitLab instances and want to have a visual differentiation, you can change the default [Navigation theme](https://docs.gitlab.com/ee/user/profile/preferences.html#navigation-theme) to a different color.

### Calculating the GitLab handbook page count

Page counts are determined through a simple two-step process:

1. Count the number of words in the handbook.
   This can be done by running `find source/handbook -type f | xargs wc -w` from the root directory of the repository.
2. Submit the word count to [WordCounter](https://wordcounter.net/words-per-page) for conversion to a page count.

### Trainee maintainer issue upkeep

Part of the [maintainer training process](/handbook/engineering/workflow/code-review/#trainee-maintainer) is to keep track of Merge Request that have been reviewed and writing down an assessment on the review in the maintainer training issue.
Manual upkeep of the maintainer training issue can be time consuming. There are tools that others have built to help with this task:

- https://gitlab.com/nolith/review-tanuki
- https://gitlab.com/splattael/traintainer
- https://gitlab.com/arturoherrero/trainee
- https://gitlab.com/alberts-gitlab/review-tanuki

## www-gitlab-com Tips

The [https://about.gitlab.com](https://about.gitlab.com) site (this site!) lives in the
[www-gitlab.com](https://gitlab.com/gitlab-com/www-gitlab-com/) repo.

The documentation for the site itself is in markdown documents under the
[`doc` folder in the repo](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/doc).
We have decided, for [various reasons](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7234#note_371346396), not to include this documentation in the handbook itself.

### Local development on www-gitlab-com

If you are looking to do local development on the site,
[doc/development.md](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/development.md)
is probably the best place to start.

### Cloud development on www-gitlab-com with gitpod.io

If you don't want to configure your local machine, there is now a new alternative option
to use gitpod.io for "local" development in a cloud based environment. See
[doc/gitpod.md](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/gitpod.md)
for more details.

## Troubleshooting

### 2FA debugging

If 2FA stops working unexpectedly (no new phone or computer) it's usually because of improperly configured date & time on either device.
Make sure that "Automatic Date & Time" is **enabled** on both devices.
If they're already enabled try toggling them off and on again to force an update.
If this doesn't work, request that ITOps reset your 2FA setting.

Links for finding the settings:
- iOS: [Get help with the date and time on your iPhone, iPad, and iPod touch - Apple Support](https://support.apple.com/en-us/HT203483)
- macOS: [If the date or time is wrong on your Mac - Apple Support](https://support.apple.com/en-us/HT203413)
- Linux (using systemd): [systemd-timesyncd - ArchWiki](https://wiki.archlinux.org/index.php/systemd-timesyncd)

For Android there's no definitive link, since most vendors have different UIs for their settings.
But in the Settings-app, look for "Date & Time" and there should be a "Automatic Date & Time" toggle.

### Check which process occupies a given port

#### Using Netstat

Netstat is a command line tool which can be useful to print network connections, routing tables, interface statistics, etc. One of the most common uses for netstat during troubleshooting is to display a list of open ports listening for connections.

`sudo netstat -tulpn | grep -i listen`

```
[user@gitlab ~]$ sudo netstat -tulpn| grep -i listen
 tcp   0      0 127.0.0.1:5000     0.0.0.0:*     LISTEN     18948/registry
 tcp   0      0 127.0.0.1:9100     0.0.0.0:*     LISTEN     18841/node_exporter
 tcp   0      0 127.0.0.1:9229     0.0.0.0:*     LISTEN     18764/gitlab-workho
 tcp   0      0 127.0.0.1:8080     0.0.0.0:*     LISTEN     18980/unicorn maste
 tcp   0      0 127.0.0.1:9168     0.0.0.0:*     LISTEN     18808/puma 4.3.3.gi
 tcp   0      0 0.0.0.0:80         0.0.0.0:*     LISTEN     18831/nginx: master
```
If you find a port already in use, you won't be able to successfully start up a service or program that utilizes that same port. Options to resolve are:

- Stop the service currently running on the needed port and confirm the port is no longer in use
- Review documentation to determine whether it is possible to specify an alternate port for either process (the existing one or your new service)

#### Known Port Conflicts
When the GitLab Development Kit cannot start using the `./run` command and Unicorn terminates because port 3000 is already in use, you will have to check what process is using it.
Running `sudo lsof -iTCP:3000 -sTCP:LISTEN -n -P` will yield the offender so this process can be killed.
It might be wise to alias this command in your `.bash_profile` or equivalent for your shell.

You may also wish to add a function in your `.bash_profile` (or equivalent file for your shell) like this:

```zsh
function killport() {
  lsof -i tcp:$1 | awk '(NR!=1) && ($1!="Google") && ($1!="firefox") {print $2}' | xargs kill
}
```

which you can use like so:

```shell
> killport 3000
```

and it will kill whatever process is currently using port 3000.

## Terminal

### Display current git branch in the console

By adding this small configuration you will be able to view the git branch that you are using currently.
If you are not inside a git repository, it only displays the username and the current directory.

**For Bash:**

Add the following lines in your `.bash_profile`

```sh
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\]\$ "
```

Doing the following, makes the changes to get reflected in you current terminal:

```sh
source ~/.bashrc
```

**For Zsh:**

On macOS Catalina, ZSH is the [default shell](https://support.apple.com/en-us/HT208050).
By installing [Oh My ZSH!](https://ohmyz.sh/), the git plugin is automatically loaded and shows the current git branch.

Another option would be:

Add the following lines in your `~/.zshrc`

```sh
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PROMPT="%n@%d~%f%\$(parse_git_branch) %# "
```

The changes will show on the next terminal or immediately by running.

```sh
. ~/.zshrc
```


### Shell aliases

Use command aliases in your shell to speed up your workflow.
Take a look at [these aliases](https://gitlab.com/sytses/dotfiles/blob/master/zsh/aliases.zsh) and others in [Sid's dotfiles project](https://gitlab.com/sytses/dotfiles/tree/master).
For example, by adding the following to your `.bash_profile` or equivalent for your shell, you can just type <kbd>s</kbd> to checkout the `master` branch of this website, pull the latest changes, and open the repository in Sublime Text:

```sh
alias gco='git checkout'
alias gl='git pull --prune'
alias gca='git commit -a'
alias gp='git push origin HEAD'
alias www='cd ~/Dropbox/Repos/www-gitlab-com/source'
alias s='www;subl .;gco master;gl'
```

After editing, you can just type <kbd>gca</kbd> to commit all of your changes, followed by <kbd>gp</kbd> to push them to the remote branch.

## Travelling

### Long haul flights

Note: you have to pay for these items yourself.

- [Quiet comfort 35 Bose over ear noise canceling headphones](https://www.bose.com/en_us/products/headphones/over_ear_headphones/quietcomfort-35-wireless-ii.html)
- [Shaped sleep mask](https://www.amazon.com/gp/product/B01HYIER7W/ref=oh_aui_search_detailpage?ie=UTF8&psc=1) (so it doesn't touch your dried out eyes)
- Custom molded ear plugs (can be up to $200 hearing aid store but are usable in many situations, there are also [DYI kits](https://www.amazon.com/Radians-CEP001-Custom-Molded-Earplugs/dp/B003A28P4I) but Sid has not tried that)
- [Melatonin](https://www.webmd.com/vitamins-supplements/ingredientmono-940-melatonin.aspx?activeingredientid=940) (possible unsafe during pregnancy and breast-feeding)
- Sleeping pills (over the counter is fine)

### WorkFrom

[WorkFrom](https://workfrom.co/) is a crowd-sourced resource of coffee shops and other such places that are remote-work friendly.

## Wi-fi usage

When using unsecured Wi-Fi, consider a personal VPN.
We [don't have a corporate VPN](/handbook/security/#why-we-dont-have-a-corporate-vpn) but consider [purchasing](/handbook/finance/expenses/#reimbursements) a [personal VPN](/handbook/tools-and-tips/personal-vpn/) if you travel for GitLab or use unknown networks often.

Remember that if your job has restrictions based upon geolocation (for example supporting customers with specific data restrictions and country-based access), a personal VPN may not be the best choice as often the VPN vendor routes traffic through other countries.
If this restriction applies to you, consider tethering.
[Tethering](https://en.wikipedia.org/wiki/Tethering) is when you set up your mobile phone as a hotspot and connect your laptop up to it via Wi-Fi, avoiding the unsecured Wi-Fi network.
There is more information [here](https://www.computerworld.com/article/2499772/how-to-use-a-smartphone-as-a-mobile-hotspot.html) on the subject, and as long as your data plan supports it, you should be good to go.
Double check before international travel, as it may be supported but have hidden costs.

When connecting to a network with a [captive portal](https://en.wikipedia.org/wiki/Captive_portal), most websites will not load as modern sites use HTTPS, and captive portals interrupt that process.
Your device will try and compensate for this, but it can be tough to manage manually.
If you have trouble, try connecting to [http://captive.apple.com/](http://captive.apple.com/) first, which is intentionally only HTTP and will load the captive portal.

## U2F

Universal 2nd Factor (U2F) is a cryptographically strong 2FA (2-factor authentication) method. It is hardware-based, and is typically deployed via a USB or NFC device. The standard is open and is maintained by the [FIDO Alliance](https://fidoalliance.org/).

### How it works

During the authentication process, you enter in your username and your password. On systems with 2FA enabled and using U2F, the hardware token is queried. By pressing a button or tapping a sensor on the U2F device, the U2F device completes the authentication process in a cryptographically strong way. It is generally considered the most secure form of 2FA. It is also more convenient than manually entering codes generated by a [TOTP](https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm) application.

During the registration of the U2F device, a public/private key pair is generated, with the public key being registered with the service you will be authenticating with, and the private key is stored on a secure chip in the U2F device. When authenticating, after you've entered in your username and password, the U2F is queried via an encrypted message that can only be authenticated by the private key, so a button or sensor is pressed on the U2F device to allow the query to be completed, and the user is then granted access to the system.

### U2F devices

YubiKey: The most popular U2F device is Yubico's YubiKey. There are a wide variety of sizes and styles of YubiKeys. Yubico (along with Google) helped develop the original U2F standard before it was moved to the  FIDO Alliance. Most GitLab team members that have U2F devices have a YubiKey. It should be noted that for a long time Yubico's source code for its firmware was open source, but some of the newer versions of firmware are closed source. This has caused some concern in the security community, particularly those that prefer to use open source whenever possible.

Solo Security Key: Solokeys' Solo Security Key is growing in popularity, and while it often lags behind in certain features, it is also used by a few GitLab team members with success. The company began as a Kickstarter project, both the hardware designs and firmware source code are open source for Solokeys, and the open source nature is the reason a number of team members favor it.

### Are They Secure?

Both the YubiKey and the Solo have been examined by both the security industry at large, third party audits by both keys' companies, and by the Security Team. Either company's offerings are more than suitable for use within GitLab and work fine with U2F-compatible systems.

YubiKey has had a number of [security issues](https://www.yubico.com/support/security-advisories/) which are typically resolved quickly. They have a dedicated page for security advisories.

Solokeys has had a few [security issues](https://solokeys.com/blogs/news/security-analysis-of-the-solo-firmware-by-doyensec) but as their website has no dedicated security advisories page one must either scan through their blog or read through the [release notes](https://github.com/solokeys/solo/releases) on their source code repository.

In rare cases, a security issue involving a hardware token arises that requires the hardware token to be replaced as a firmware update will not mitigate the issue. This happened with [Yubico in 2017](https://www.yubico.com/keycheck/).

Most of the attack models that impact the U2F tokens require physical access to the token itself. That is, the security advisories involve coding issues that can only be exploited via access to the token or the computer that the token is plugged into. This in itself makes the devices more secure.

### Recommendations

Either device is fine for GitLab use, and there are other hardware tokens that are also decent (if you have questions, ask the Security Team in the `#security` Slack channel). The Security Team has looked at Yubico and Solokeys devices, and while both are secure, there are a few differences listed below one should keep in mind (current as of July 9, 2020):

- YubiKey offers GPG integration, Solo Security Key does not.
- Both products offer SSH integration, however Solo Security Key does not support ED25519.
- YubiKey allows for static password storage, Solo Security Key does not.

What GitLab team members need to keep in mind is that if you travel with your company laptop - either on a business trip, a trip to visit family and friends in another location but you intend to keep working, or just a trip to the local coffee shop - treat the U2F token with the same level of care as a credit card. Do not leave it where it could be stolen.

If you are concerned about potentially losing your U2F hardware token, you can always purchase a second one, register it, and store it at a secure location. Sites following the U2F standard should support multiple hardware tokens. That way if one is lost or stolen, you can still use the other token.

Usage of 2FA is mandatory for GitLab team members. While it is not mandatory to use a U2F hardware token at GitLab as your 2FA solution, it is highly recommended as it is one of the most secure and convenient ways to meet 2FA requirements.

## Slack

### Do Not Disturb Hours

Slack now supports "Do Not Disturb Hours" so you won't be pinged in the middle of the night or while you are dealing with family matters.
You can set your "Do Not Disturb Hours" by clicking on the bell at the top of the left pane in the Slack app.
You also have the option of snoozing for 20 minutes or up to 24 hours.
Note: Do Not Disturb can be overridden in the event of an emergency.
See Slack documentation for more information.

### Browse Channels

You can browse all available GitLab channels by clicking on "Channels" on the left pane in the Slack app.
From there, you can see every channel, who created it, and how many members there are.
Feel free to ask for recommendations from other team members for their favorite channels.
Every team member is automatically added to the `#company-fyi` and `#whats-happening-at-gitlab` channels, where announcements are made and information for the entire company is shared.
There are also a few default channels that every new hire is added to, such as: `#celebrations`, `#new_team_members`, `#questions`, `#random`, & `#thanks`; these channels are optional, but we think they are a great place for team members to interact and get to know each other.

### Organize Channels in Sidebar Sections

Slack now supports [organizing channels in sections](https://slack.com/intl/en-de/help/articles/360043207674-Organize-conversations-with-custom-sections). Previously this only was possible through "Starred" channels. Navigate into the Slack **preferences** and select the `Sidebar` navigation item. Click on `Create Section` to create a new section on the left sidebar. You can also do that from the settings menu of each existing section.

Feel free to organize this with your most frequent used channels, or specific team grouping. You can drag and drop and also hide sections. You can for example create the `info` section and add `#company-fyi` and `#whats-happening-at-gitlab` as channels. Additionally, add the `team` section and move all related channels there.

### Channels Access

In addition to GitLab team-members, designated groups such as the [Core Team](/community/core-team/) members and advisors outside of GitLab may be granted access to our Slack channels.
However, internal channels that start with `#a_` will be restricted to GitLab team-members who have been invited to those channels only.
Any confidential conversations regarding our customers should be restricted only to `#a_` channels.
The rationale for internal channels is that it could be a breach of many of our contracts for third parties to have knowledge of GitLab customers.
This is especially the case when third parties could be customers' competitors.

### Slack Status

Slack allows you to set your [status](https://slackhq.com/set-your-status-in-slack) for your fellow GitLab team members by using your choice of standard messages such as "Away" and "Lunch" or a custom message and your choice of emoji.
If you're off work for a holiday or vacation you can update your status by using [PTO by Roots](/handbook/paid-time-off/#pto-by-roots).
This is a great way to let your team know whether you are available.

To have your Slack status automatically set to "In a meeting" based on your Google Calendar, add the [Google Calendar app](https://gitlab.slack.com/apps/ADZ494LHY-google-calendar?next_id=0) to your Slack account.

### Invite

There are [multiple ways](https://get.slack.help/hc/en-us/articles/201980108-Invite-members-to-a-channel) to invite people into a Slack channel.
The easiest way is to use the invite command by typing `/invite @jenny`.
Avoid inviting people through a mention message.
E.g. `@jenny` as it can create a message that distracts others.

### Quick Switcher

Quick Switcher is a great feature to know about if you want to get productive with Slack.
As the name suggests, it allows you to switch between channels and direct messages quickly.
Invoke it with <kbd>Cmd</kbd> + <kbd>k</kbd> on Mac or <kbd>Ctrl</kbd> + <kbd>k</kbd> on Windows or Linux and start typing the name of the person to chat with or the channel you are interested in.
You can then navigate the suggestions with <kbd>↑</kbd> and <kbd>↓</kbd> keys and hit <kbd>enter</kbd> to select.

### Display only unread conversations

With lots of channels and direct messages, Slack can become overwhelming. To help
keep track of activity on Slack, and to simplify the interface, consider
[displaying only unread conversations](https://slack.com/intl/en-au/help/articles/360043207674-Organise-your-sidebar-with-customised-sections-Organise-your-sidebar-with-customised-sections-Organise-your-sidebar-with-customised-sections#manage-conversation-display).

### Minimize Visual Distractions

Animated images and emoji can add meaning to conversation, but they can also be distracting.
If you would prefer to have static images and emoji, disable the animation.
For details, see [Manage animated images and emoji](https://get.slack.help/hc/en-us/articles/228023907-Manage-animated-images-and-emoji).

### Sort channels and direct messages with stars

To sort direct messages and channels, open the direct message or channel and click on the star icon.
For details, see [Star channel or direct message](https://get.slack.help/hc/en-us/articles/201331016-Star-channels-messages-or-files#star-a-channel-or-dm).

### Unfurling Links in Messages

Slack has a built-in feature to [Unfurl](https://api.slack.com/docs/message-link-unfurling) links included in messages posted to Slack.
This will post a preview of the link alongside the message.
You can remove the unfurled preview of the link by hitting the "x" in the top-left of the preview.
This will then prompt you to confirm removing the attachment, which you can hit "Yes, remove".

![Unfurl attachment removal](/images/handbook/tools-and-tips/unfurl-remove.png)

In the confirmation prompt you may also see a checkbox to _"Disable future attachments from this website"_.
As a workspace admin if you select the disable option **this will denylist the link/domain across the workspace and will impact every user**.
If you do happen to denylist a link or a domain, they can be modified in the Workspace admin portal under [Settings & Permissions](https://gitlab.slack.com/admin/attachments).

### Change Group DMs to Private Channels

If you are in a group direct message with multiple people, you can [change it to a private channel](https://get.slack.help/hc/en-us/articles/217555437-Move-group-DMs-to-a-private-channel), in order to avoid extra pings and allow additional team members to be added or removed to the channel.

### Custom theme

The interface colors can be customized in Slack.
This is especially useful when using multiple slack accounts, setting up different themes makes it really easy to differentiate them instantly.
The theme selector is available under Preferences > Themes.

In order to setup a GitLab theme, send yourself the following message: `#643685,#634489,#FC6D26,#ffffff,#71558f,#ffffff,#FCA326,#e24329`, and press the `Switch sidebar theme` button.

### Slack Apps

Many applications can integrate with Slack.
Recommended apps:

1. Google Calendar - By integrating your calendar with Slack, you'll get notifications about meetings directly in Slack.
   Most important - 1 minute before a meeting begins, you'll receive a message with the meeting info, including a link to join meetings that are occurring in Zoom.
   You can set up the integration by typing /gcal into any message field.

### Slack Reminders

Slack reminders help you to remember things without having to keep it all in your head.
You can set reminders for yourself or other team members.
You will receive a notification at the specified time.

You can use natural language with the `/remind` command.
Type `/remind help` to get some tips.
For full information on Slack reminders [see the Slack help](https://get.slack.help/hc/en-us/articles/208423427-Set-a-reminder).

## Zoom

There is a lot of information pertaining to Zoom, as it is a critical part of GitLab's
communication. See the [Zoom handbook page](/handbook/tools-and-tips/zoom).

```
Tip: The [Google Calendar](/handbook/tools-and-tips/#google-calendar) invite is the single source of truth for the Zoom link. Avoid linking the Zoom link in Google Document agendas since those may quickly become out of date. If the zoom link changed around the start of the meeting it is OK to have it in there temporarily.
```

## Google

### Google Docs

#### Google Docs Pro Tips

1. Quickly create a new Google Doc in chrome: type "docs.new" in the chrome address bar.
   Likewise "sheets.new" for a Google Sheet etc...
1. While in a document with many other editors, click on the image or icon of any user at the top of the document to move focus to their cursor and what they are typing in the document.
   This is great when someone is speaking about something they are typing on a video call and you are not sure where they are in the document.
1. Quickly find all action items assigned to you with a [search for `followup:actionitems`](https://drive.google.com/drive/search?q=followup:actionitems).
1. To add additional rows to a numbered list in a Google Document, press `Return` to add additional spaces under the existing numbered list in the document, highlight those spaces, and click the numbered list icon in the formatting bar (or press `Command ⌘ + Shift + 7` on a Mac) to create a numbered list from the spaces. See video on [how to add more rows to a numbered list](https://www.youtube.com/watch?v=dgyttEJi-ZQ) for a quick tutorial.

See also [Live Doc Meetings](https://about.gitlab.com/company/culture/all-remote/live-doc-meetings/) for more Google Doc tips.

### Google Analytics

[Google Analytics (GA)](https://analytics.google.com/) is an essential tool for making data-driven decisions.
It receives data from both about.gitlab.com and docs.gitlab.com websites.
Read through the [Inbound Marketing Handbook](/handbook/marketing/inbound-marketing/search-marketing/analytics/) for more information on GA.

For example, you can look at the GA data to analyze how visited is a certain page, in a period of your choice.
You can also look at the GA referrals data to understand where the users are coming from and where they go when they leave a certain page.

To see the data for a specific page:

- Open [GA](https://analytics.google.com/analytics/web/), and expand **Behavior** on the sidebar
- Click **Site content > All pages**
- On the top-right, adjust the period of time you'd like to analyze
- On the middle of the page, look for a search bar and paste the URL you'd like to analyze (without `https://`) and click on the magnifier button to search:

    ![Google Analytics - find pageviews](/images/handbook/tools-and-tips/google-analytics-find-pageviews.png)

    Note that you can use the search tool with:

    - A full URL, which will return results for that specific URL
    - Part of an URL, e.g., `/2017/`, which will return the results for all the blog posts published on 2017
    - The higher directory on the file tree, which will return the results for a range of URLs in that tree.
      E.g., `docs.gitlab.com/ee/ci/` will return the results for all the range of pages contained in the `/ci/` directory

- GA will output the data about the page (or range of pages) you searched for, including pageviews, unique pageviews, and other data:

    ![Google Analytics - see pageviews](/images/handbook/tools-and-tips/google-analytics-pageviews.png)

To find the referrals for a certain page, continue from the steps above.

- Click on one of the website links to look at the data for a page of your choice

    ![Google Analytics - find referrals](/images/handbook/tools-and-tips/google-analytics-find-referrals.png)

- Just above the graph, click **Navigation summary**
- GA will output the referrals, including **Previous Page Path** and **Next Page Path**:

    ![Google Analytics - see referrals](/images/handbook/tools-and-tips/google-analytics-referrals.png)

### Set your picture in Google

Optional: [Set your picture](https://myaccount.google.com/personal-info) in Google so that your picture will show where you are in a  Google document (vs showing just your first intial).  This will allow others to more easily follow a discussion when meeting attendees move around in a document.

### Google Calendar

#### Finding a time

Please make use of the Find a Time tab in Google Calendar, especially when scheduling events with teammates in other parts of the world:

![Google Calendar - Find a Time](/images/handbook/tools-and-tips/google-calendar-find-a-time.png)

Find a Time presents a new or existing event's time for all participants, adjusting for time zones as appropriate.
To use Find a Time:

1. Create a new event or modify an existing event.
1. Click the "Find a Time" tab. Invited guests will be presented in the availability table and represented by a column.
    * Areas outside of someone's working hours (9:00 AM - 5:00 PM by default) are represented in light grey.
    * Guests who are optional will not appear in the availability table by default.
      You can add them by checking their name in the "Guests" area on the right hand side.

#### GitLab Availability Calendar

The GitLab Availability Calendar has been deprecated to allow for GitLab to scale effectively.
We have created [tools and tips for managing your time off](/handbook/paid-time-off/).

#### GitLab Team Meetings Calendar

The GitLab Team Meetings Calendar is available to all team members and can be found in your calendars list.
You can find the details for the Company Calls, Group Conversations, 101s, and other teams' meetings here, so you can attend a different team's meeting and ask questions, learn about what they're working on, and get to know the rest of the GitLab Departments and teams.
These meetings are open to everyone in GitLab.
If you are creating a new team meeting, please copy it to the GitLab Team Meetings calendar, and reach out to the People Experience team by pinging `@people_exp` in the `#people-connect` Slack channel with any questions or requests.
Please reach out to the People Experience team for any requests and changes to the GitLab Team Meetings calendar.

To add an event to this calendar:

1. Create your calendar invite. 
1. Add your zoom link. 
1. Add agenda. 
1. Under Add Guests, add `Gitlab Team Meetings` 


#### Managing invite responses

If you are familiar with queries in Gmail, add a filter to remove invites responses from your inbox with the following query:

`*.ics subject:("invitation" OR "accepted" OR "rejected" OR "updated" OR "canceled event" OR "declined") when where calendar who organizer`

You can also create a filter to remove ALL invite responses from your inbox with the following search terms:

- Subject: "invitation" OR "accepted" OR "rejected" OR "updated" OR "canceled event" OR "declined"
- Has the words: *.ics 

Then click Create filter:

- Skip the Inbox
- Apply the label (of your choosing)

#### Modifying Events

Please click 'Guests can modify event' so people can update the time in the calendar instead of having to reach out via other channels.
You can configure this to be checked by default under [Event Settings](https://calendar.google.com/calendar/r/settings).)

![Google Calendar - Guests can modify events setting](/images/handbook/tools-and-tips/google-calendar-guestsmodifyevent.png)

#### Restore Deleted Calendar Items

(This assumes you are using [Google's new Calendar](https://support.google.com/calendar/answer/7541906)).

When you have accidentally deleted something from the Team Meetings calendar, you can recover it by:

* Go to [Google Calendar](https://calendar.google.com/calendar/r) and click the gear icon at the top left of your screen.
* Choose the [Trash](https://calendar.google.com/calendar/r/trash).
* Make sure you are on the correct calendar, by clicking on the name of the calendar in the left sidebar.
* Hover over the item you'd like to restore and click the arrow to "Restore".

#### Sharing

We recommend you set your Google Calendar access permissions to 'Make available for GitLab - See all event details'. Team member calendars should **not** have access permissions set to 'Make available to public' due to the risk of sensitive data exposure and [zoombombing](https://en.wikipedia.org/wiki/Zoombombing).

Consider marking the following appointments as 'Private':

* Personal appointments
* Confidential & sensitive meetings with third-parties outside of GitLab
* 1-1 performance or evaluation meetings
* Meetings on organizational changes

There are several benefits and reasons to sharing your calendar with everyone at GitLab:

1. Transparency is one of our values and sharing what you work on is in line with our message of "be open about as many things as possible".
1. Due to our timezone differences, there are small windows of time when our availabilities overlap.
   If other members need to schedule a new meeting, seeing the details of recurring meetings (such as 1-1s) will allow for more flexibility in scheduling without needing to wait for a confirmation from the team member.
   This speaks to our value to be more efficient.

![Google Calendar - make calendar available setting](/images/handbook/tools-and-tips/google-calendar-share.png)

If you'd like to share your calendar with e.g. your partner you can use the 'Share with specific people' feature and set the permissions to 'See only free/busy (hide details)':

![Share with specific people](/images/handbook/tools-and-tips/share-with-specific-people.png)

#### Speedy Meetings

Enable speedy meetings to automatically provide a buffer at the end of events you schedule.
This thoughtfully allows participants with back-to-back events the opportunity to use the restroom or grab a cup of coffee without being late to their next function.

![Google Calendar - Enable speedy meetings](/images/handbook/tools-and-tips/google-calendar-speedy-meetings.png)

#### World Clock

Add as many time zone world clock as you wish by going to Settings -> World Clock.

![Google Calendar - World Clock](/images/handbook/tools-and-tips/world-clock.png)

### Google Cloud Platform

See the [Engineering handbook](/handbook/engineering/#resources) for a listing of cloud resources and how to gain access to them.

### Google Drive

#### First, an important message - Don't use Google Drive/Apps (unless you have to)

We would be remiss if we didn't start this section off with this IMPORTANT message:  **Your default storage place for information that needs to persist and be available to others in the company should be ON THE WEBSITE/IN THE COMPANY HANDBOOK and not in Google Drive and Google Apps files!!** This is from the top.
This is how we operate, because Google Docs/Apps can only be found and contributed to by team members, and not by users, customers, advocates, future employees, Google handbook searches, or developers.

#### Do not link directly to Google Drive/Apps

Having said that, there is content which doesn’t make sense to be created on the website directly (e.g. large collections of data in tables, spreadsheets for calculations, etc) or for which Google Drive storage makes sense.

When directing folks to these files in Google Drive please include name of the file in the handbook so that team members can search for it in Google Drive. If you link directly to the URL, people from outside the organization can request access, creating workload and the potential for mistakes.

#### Keeping it organized

It is important that we not just throw files into random or general places in the shared Google Drives.
Doing so makes it harder for others to find and work with the content.
Here are some guidelines to organizing the Google Drive content:

* First by department (e.g. strategic marketing)
* then by subject (e.g. analysts relations)
* then by sub-subjects as deep as necessary (e.g. Gartner -> 2018 ARO MQ)

#### Using Google Drive

For starters, when your GitLab Google company account is created you automatically get a Google Drive with unlimited storage allocation in your own "home" directory (called My Drive).
You can get to it by:

1. (optional) Login to your GitLab account in your browser (if you are using Chrome)
2. Open your web browser to https://drive.google.com
3. If you're not already logged in as your GitLab account (Chrome users should be) then login to Google using your GitLab account
4. This will take you to your Google Drive (called My Drive) which is like your home directory.
   If you create Google files using Google Apps and don't specify where to store them, they will be put in this home directory.

This is great for storing your own working files.
As already stated, **this should never be the final resting place for shared files** that are meant to be used by the rest of the company (or beyond).

#### Existing GitLab Google Drive repositories

There are a few Google Drive repositories of GitLab shared files (there might be more, please add if not listed here):

- [UX Research Drive](https://drive.google.com/drive/folders/0AH_zdtW5aioNUk9PVA) - This houses all findings from [Customer Discovery Meetings](/handbook/product/product-processes/#customer-discovery-meetings) and raw, confidential materials from customers shared with Design, UX Research, Product and Customer Success. Distilled findings from [User Research](/handbook/engineering/ux/ux-research/) are stored in the [UXR_Insights repository](https://gitlab.com/gitlab-org/uxr_insights/).
- [GitLab Marketing Drive](https://drive.google.com/drive/u/0/folders/0Bz6KrzE1R_3helZZQlV3ajFNTzg) - This houses all shared files from the entire Marketing organization.
  The best practice is for sub-organizations to have their own directory inside this space (e.g. [Strategic Marketing](https://drive.google.com/drive/u/0/folders/0Bz6KrzE1R_3hNjJMNUt2LUJGREU)).
- [Sales Drive](https://drive.google.com/drive/u/0/folders/0BzQII5CcGHkKSFFJWkx3R1lUdGM) - This houses all the shared files from the Sales organization.
  The best practice is for some sub-organizations to have their own directory inside this space (e.g. [Customer Success](https://drive.google.com/drive/u/0/folders/0B3MA-pZf8fAYdUl6Nk5ObzlQbjQ)).
- [GitLab Alliance Drive](https://drive.google.com/drive/folders/1ElkWOoepL1eAGi2WfxPNM3W9uEMx62US) - This houses all shared files from the entire Alliance organization.
  The best practice is for sub-organizations to have their own directory inside this space (e.g. [Partner Discussions](https://drive.google.com/drive/folders/1tAmu6pnw0cwR7dXj1Yeylrpt-ijerXyQ)).

How do you use these? You don't have to remember these URL's.
To add these links to your Google Drive My Drive directory, do the following:

![Add to Drive Animation](/images/handbook/tools-and-tips/add2drive.gif)

1. Make sure you are logged into your GitLab account in Google Drive in your browser
2. Open the link of interest (from above) to go to that directory
3. Find the directory path across the top (under the "Search Drive" field)
4. Find the name of directory in that path that you want to add to your drive (e.g. Sales)
5. Click on the down arrow next to it
6. From the resulting pop-up menu, select "Add to My Drive"
7. From now on you can get to that directory by first going to your drive (https://drive.google.com) and then opening that link

#### Adding Google Drive to your Mac

To really make your Google Drive easier to access, you can have your Google Drive show up on your Mac Finder as a regular drive.
With this it is easier to store and view files such as videos, analyst reports (PDFs), etc.

Here's how to do this:

![Download Drive Sync Animation](/images/handbook/tools-and-tips/downloaddrivesync.gif)

1. Make sure you are logged into your GitLab account in Google Drive in your browser
2. Go to your Google Drive (https://drive.google.com)
3. Click on the "Settings" icon (Gear) to the right of the search field
4. From the resulting menu, select "Download Drive File Stream for Mac"
5. It might pull up a new page/tab and use your personal login.
   If it does this you won't see "Download & install Drive File Stream" on the page.
   Switch to your GitLab account.
6. Download and install 

### Google Forms

Use these [GitLab branded form templates](https://drive.google.com/open?id=0BxrZ6azkqZ1bVDl1TTZuelFOb1k) when creating internal or external surveys or forms.
Make a copy of the form and only edit the copy; do not edit the template itself.

### Google Hangouts

Computers with older CPUs (pre-2016/Skylake) may be missing hardware acceleration for [VP9](https://en.wikipedia.org/wiki/VP9#Hardware_encoding.2Fdecoding_support).
In Chrome, this can cause excessive CPU due to use of the codec.
On macOS switching to Safari or using [h264ify](https://github.com/erkserkserks/h264ify) ([Chrome Web Store](https://chrome.google.com/webstore/detail/h264ify/aleakchihdccplidncghkekgioiakgal)) solves this since it will use h264 that is hardware accelerated.

To check the status of acceleration on Chrome, see the "Video Encode" option in [about://gpu](about://gpu) (type the address about://gpu directly into the browsers address bar as the hyperlink will not work).

### Google Mail (Gmail)

#### Auto-advance

If you use the archive function, you normally return to your overview.
With Auto-advance you can select whether to advance to the next or previous message.
"Auto-advance" can be enabled from the Advanced section under Settings.
This reveals the Auto-advance settings in the General section under Settings.
The default setting of showing the previous (older) message is usually preferred.

#### Email signature

Set up an [email signature](https://support.google.com/mail/answer/8395) which includes your full name and job title so people can quickly know what you do.

##### Example

*Note: You can copy and paste the template below to use it in your own signature.*

<span style="font-family: serif;font-size: small;display: block;">John Doe</span>
<span style="color: #999999;font-family: sans-serif;font-size: small;display: block;">Frontend Engineer | GitLab</span>
<img src="https://lh3.googleusercontent.com/lFQxFbGYJpI6e_oQkEJ6WVDr-9RAmCZgV7_vgKs8zLJzIsSDF13zot8wtdMqFvBq8OH6jPiv6kwszHf5r_YrSNoXKRdSb42dsyyw7oOSSan1Nuq8ud2AtaD4yBwM-1xtYAb7IMFz" width="98" height="37">

#### Filters

##### Apply label on mention

It might be useful to add a Gmail filter that adds a label to any GitLab notification email in which you are specifically mentioned, as opposed to a notification that you received simply because you were subscribed to the issue or merge request.

1. Search for `from:(gitlab@mg.gitlab.com) "you+have+been+mentioned+on"`.
2. Click the down arrow on the right side of the search field.
3. Click **Create filter with this search**.
4. Check **Apply the label:** and select a label to add, or create a new one, such as "Mentioned".
5. Check **Also apply filter to matching conversations**.
6. Click **Create filter**.

##### Apply label to all GitLab-generated emails

GitLab issues and merge requests can generate a lot of email notifications depending on your settings and how in-demand your attention is.
It can be useful to apply a label to these generated emails and move them out of your immediate inbox.

1. Search for `from:gitlab@mg.gitlab.com`.
1. Click the down arrow on the right side of the search field.
1. Click **Create filter with this search**.
1. Check **Skip the Inbox (Archive it)**.
1. Check **Apply the label:** and select a label to add, or create a new one, such as "GitLab.com".
1. Check **Also apply filter to matching conversations**.
1. Click **Create filter**.

You can learn more about how to use Gmail filters to organize your inbox in [Productivity Hack video](https://www.youtube.com/watch?v=YOgm-vZVqng).
To import downloaded [filter export](https://drive.google.com/file/d/1vm_psZOXjYZ9ulKYmdMqrTk435KcR1DL/view) go to Gmail => Settings => Filters and Blocked Addresses => Import filters.

#### Keyboard shortcuts

Keyboard shortcuts only work if you've turned them on in Gmail Settings.

Steps below:

- In "Settings" scroll down to the "Keyboard shortcuts" section
- Turn Keyboard shortcuts "on"
- Scroll down and Save Changes

[Here are some shortcuts you can use](https://support.google.com/mail/answer/6594?hl=en&ref_topic=3394150)

#### Split screen

List your inbox and preview mails in one view with this configuration change:

- Cog/settings top right of inbox.
- Settings option.
- Inbox tab
- Reading pane: enable
- Select a position for the reading pane, Right of Inbox or Below Inbox
- Save changes
- Reload inbox

### Google Slides

Use this general [GitLab branded slide template](https://docs.google.com/a/gitlab.com/presentation/d/16FZd01-zCj_1jApDQI7TzQMFnW2EGwtQoRuX82dkOVs/edit?usp=sharing) when creating slide decks for internal and external use.
Make a copy of the slide deck and only edit the copy; please do not edit the template itself.

#### Updating your slide deck theme

Here are a few quick steps for updating your slide decks to match the most recent template:

1. In the top toolbar click `Theme` which will open the Themes panel (on the right-hand side).
   ![Change theme in Google Slides](/images/handbook/tools-and-tips/google-slides-change-theme.png)
1. At the bottom of the Themes panel, click `Import theme`.
1. In the Import theme dialog box type `GitLab_Template` into the search field.
1. Find the `GitLab_Template` and click the `Select` button in the bottom left to apply the theme to your slide deck.
1. Minor adjustments may be needed once the new theme is applied; the 'Layout' button in the toolbar will help you find the right slide layout for your content.
