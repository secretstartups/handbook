---
layout: handbook-page-toc
title: "Personal VPN"
description: "Basic questions answered, tips, and recommendations for using a personal VPN."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

GitLab does not use a [corporate VPN](/handbook/security/#why-we-dont-have-a-corporate-vpn), but does allow for personal VPNs to be used and [expensed](/handbook/finance/expenses/#reimbursements) by team members.

## What is a personal VPN?

A VPN (Virtual Private Network) is the extension of a private network across a public network, allowing the users of the private network a level of protection and privacy to their network traffic that might be lacking if crossing a public network. Typically the private traffic is "tunneled" and encrypted with safeguards built in to prevent leakage of data that could lead to compromising situations with the public network, such as network-based attacks or private data being revealed. Corporations with centralized headquarters and private internal networks in their offices have used VPNs for years to allow for remote workers to access internal systems when working remotely. As a remote-only company, GitLab does not use a corporate VPN.

A _personal_ VPN is similar to the corporate VPN in that it uses some of the same methods of tunneling, encryption, and safeguards that the corporate VPN uses, except it is intended for personal use. Instead of a corporate VPN server, the company providing the personal VPN service has its own server and simply uses it as a jump point to reach resources while protecting the user from some of the same dangers the corporate users face.

The personal VPN has a few other advantages. All personal VPN companies maintain their servers in different locations around the world, which not only helps with speed (there is a slight performance hit with using a personal VPN) but allows a user to access resources that are geographically restricted (watch a YouTube video not available in your country), avoid monitoring by your ISP (Internet Service Provider) of which websites you access, bypass Internet censorship, and many others. As a result, personal VPN service providers will compete with each other by offering enhanced privacy features, hundreds of servers in a variety of locations, support for various tunneling and communication options, end user device support, and more.

## Why would a GitLab team member use one?

There are a few reasons why a GitLab team member might want to use a personal VPN:

- You use public Wi-Fi frequently. This could be because of travel, deciding to work from a coffee shop for the afternoon, or some other reason.
- You are using a private network but you do not trust it to be secure. You are working from a relative's home, a university network, or some other network that is not public but may not have tight security controls (or they are unknown).
- You share your home network with housemates that work at other companies, are students, and even neighbors, and you'd like to ensure that your communications remain private.
- You wish to [isolate your work environment from your home environment](/handbook/security/network-isolation/).

## What are some recommended personal VPNs?

GitLab's Security Team has reviewed personal VPN clients, and the main things that were looked for were ease-of-use, decent choice of features and underlying protocols, proven track record, and support for the platforms used by GitLab team members. The recommended choices are [ProtonVPN](https://www.protonvpn.com/), [ExpressVPN](https://www.expressvpn.com/), and [NordVPN](https://www.nordvpn.com/). All three have been used by GitLab team members and should meet the basic needs of a secure and private product. ProtonVPN may have a slight edge in preference as the clients are [open source](https://github.com/ProtonVPN).

If you desire, you could consider using two personal VPNs, with one as the primary and a second one as a backup in the event the primary VPN failed to function properly. For example if you are using NordVPN, you might want to use the free version of ProtonVPN as your backup in case NordVPN ever fails. You should be able to expense a second one if needed. but bear in mind the [guidelines](/handbook/spending-company-money/#guidelines) for expensing items, especially "_Spend company money like it is your *own* money_".

It should be noted that while these particular brands were tested by the Security Team (and are the most common in use in an informal survey of Security Team members), other features may lead you to explore other offerings. These just happen to be products that Security examined. If you choose to use another personal VPN, keep in mind that ExpressVPN offers free online testing tools at their website, there are plenty of online reviews comparing products in head-to-head trials you can review, and if you have further questions feel free to ask the Security Team in the `#security` Slack channel.

## Important tips

- Be consistent in your usage. If your goal is to secure your device while using public Wi-Fi, always use the VPN.
- Get familiar with your personal VPN before you use it. If you are using one while traveling, don't try it out for the first time at the airport while waiting to board your flight. Try it out at home. If you have a primary VPN and a backup, get familiar with both of them before active use.
- Remember that a personal VPN is not a guarantee of complete security and privacy. Keep the software up-to-date with the latest patches, just like other applications and your operating system. Also remember that like any other organization, personal VPN vendors can have breaches, security flaws, and other issues that could compromise your security and privacy. Stay alert, check back with the vendor's website, and keep an eye on `#security` as there will certainly be discussion of such issues as the Security Team hears about them.
- Most personal VPNs are preconfigured to automatically update and install patches or new versions. Ensure those settings are enabled, refer to the personal VPN vendor's documentation (usually via an application "Help" function or on their website) for more information.
- Any settings that ensure "fail closed" or a "kill switch" should be enabled. This ensure that if your VPN fails to function, it doesn't automatically continue to allow network connectivity unprotected.
- There may be reasons you cannot use a personal VPN while working. For example, if you are supporting a government customer, you might only be able to assist that customer while in that country and only use network connections within the geographic confines of that country. A personal VPN might route your travel through different jurisdictions, and therefore should not be used.
- The same basic rules for personal usage that apply to you work laptop also apply to your personal VPN. However if you choose to use the personal VPN for additional devices in your home, this does not mean it is okay to connect up to GitLab work resources - the same access rules still apply, VPN or no.
- Questions? Ask in the `#security` Slack channel.
