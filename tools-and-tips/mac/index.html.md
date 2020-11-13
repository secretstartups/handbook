---
layout: handbook-page-toc
title: "macOS tools and tips"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page lists various tips and tools for macOS.

## macOS tips

Here are some useful [tips](https://support.apple.com/explore/new-to-mac) if you are new to macOS.
Even if you are not new, these [keyboard shortcuts](https://support.apple.com/en-us/HT201236) may come in handy.

If you are switching from Windows to macOS, these [tips](https://support.apple.com/en-us/HT204216) may be useful.

## Taking screenshots and videos

On a macOS, there are a few screen shot key shortcuts that can be very helpful:

* `command + shift + 3` - takes a screen shot of your entire screen(s - it will create an image for each screen you have)
* `command + shift + 4` - allows you to select an area on the screen to take a screen shot (it will create one image of your selected are)
* `command + shift + 5` - brings up a tool that allows you to do all of these things as well as create a video (with audio) of all or part of your screen.

In the case of `command + shift + 3` and `command + shift + 4`, if you also hold your control key (so, `command + shift + control + 3`), your screen shot will be in your clipboard. Alternatively you can quickly select the screenshot preview in the bottom right corner and press `command + c`.

You can paste the screenshot from your clipboard into a lot of applications with `command + v`. GitLab supports pasting the screenshot into issue descriptions, comments and the Web IDE.

If you have a screen shot in your clipboard, you can open the `Preview` and then create an image from the clipboard using the `File -> New from clipboard`.

For screen recordings, you can use Quicktime Player to capture an area or the full screen.
Open the application and, under the `File` menu, select `New Screen Recording`, or press `command + control + n`.

## Disabling macOS notification center

During a presentation or screen share, you might want to disable your notifications on macOS to prevent distractions or possible embarrassment.

The Notification Center can be quickly disabled by Option-Clicking the menu bar icon in the top right of your screen.
This disables notifications until the next day.
Option-Click again to re-enable immediately.
Alternatively, click on the Notification Center icon, then scroll _up_ to reveal the "Do Not Disturb" toggle.

If your laptop is a MacBook with a Touch Bar, note that you can assign a handy "Do Not Disturb" button on your Control Strip.
In System Preferences, navigate to Keyboard settings and click "Customize Control Strip..." to add this.

## Locking your screen

### On your macOS menu bar

1. Click on the Apple logo  menu
1. Click “Lock Screen”

Alternatively, you can use the keyboard shortcut `⌃+⌘+Q` (`ctrl+cmd+Q`).

### On your macOS Touch Bar

1. Open `System Preferences > Keyboard`
1. Click `Customize Control Strip…`
1. Drag the `Screen Lock` icon to the Touch Bar
1. Done!

### With Alfred

With enabling [Alfred](/handbook/tools-and-tips/other-apps/#alfred) and e.g. replacing Spotlight's `Cmd + Space` shortcut, you can do speedy locking with your keyboard:

1. Press `Cmd + Space`.
1. Type in `lock`. After repeating this for a while, you can just type `l`.
1. `Enter` to lock the screen.

## Keeping your Mac awake

There are some great app-based solutions that will keep your Mac awake listed in the [macOS utilities](#macos-utilities) table below, but there’s also a really simple built-in way to do this:

```shell
> caffeinate -dis
```

The options being used here are `-d` to prevent the display from sleeping, `-i` to prevent the system from idle sleeping, and `-s` to prevent the system from sleeping when running on AC power. Running the `caffeinate` command like this will just start a never ending process in your Terminal that you can later `ctrl+c` (`⌃+c`) to exit, allowing the system and displays to sleep once again. You can also set a timeout (in seconds) with the `-t` option to automatically exit the `caffeinate` command at some later time. For example, to prevent the system or displays from sleeping for 1 hour, you can run:

```shell
> caffeinate -dist 3600
```

## macOS utilities

The following macOS utilities are favourites among GitLab team members.
Make sure to join the [#macOS](https://gitlab.slack.com/archives/CDKA4RCE7) Slack channel for Questions and tips about using macOS.

| Category | Utility | Description | 
|---|---|---|
| Cursor | [Yoink](https://eternalstorms.at/yoink/mac/) ~$8 USD, free trial | creates a holding pen for drag-and-drop activities to allow cross-monitor or allow rearranging windows during the drag process |
| Date/Time | [Clocker](https://apps.apple.com/au/app/clocker/id1056643111) | Helps you keep track of the time of your team members in different time zones. |
| Date/Time | [There](https://there.pm/) | Helps you keep track of the time of your team members in different time zones. |
| Date/Time | [Itsycal](https://www.mowglii.com/itsycal/) | Itsycal is a tiny menu bar calendar. If you want, it will display your events as a companion to the macOS Calendar app. |
| Date/Time | [Mini Calendar](https://apps.apple.com/us/app/mini-calendar/id1088779979) | Mini Calendar is a lightweight application, which helps to access monthly calendar quickly and easily. |
| Date/Time | [Dato](https://apps.apple.com/us/app/dato/id1470584107) ~$3 USD | System menu bar date and time replacement with current time in various time zones and calendar events |
| Date/Time | [Status Clock](https://itunes.apple.com/us/app/status-clock/id552792489) | Status Clock places a second clock on the menu bar for showing the UTC time. Perfect for anyone doing sysadmin work or tasks that require referencing UTC (or any secondary timezone). |
| Desktop background | [Downlink](http://downlinkapp.com/) | Every 20 minutes (or every hour, you pick), Downlink updates your desktop background with the freshest images of Earth. |
| Media | [BeardedSpice](https://beardedspice.github.io/) | BeardedSpice is a menubar application for macOS that allows you to control web based media players and some native apps with the media keys found on macOS keyboards. |
| Menubar | [Bartender](https://www.macbartender.com/) | Lets you organize your menu bar icons, by hiding them, rearranging them, show hidden items with a click or keyboard shortcut and have icons show when they update. |
| Monitoring | [iStat Menus](https://bjango.com/mac/istatmenus/) | An advanced macOS system monitor for your menubar |
| Notes | [Tyke](https://tyke.app/) | A little bit of scratch paper that lives on your macOS menu bar. |
| Productivity | [HazeOver](https://hazeover.com/) | This app automatically highlights the front window by fading out all the background windows. |
| Productivity | [Skitch](https://evernote.com/products/skitch) | A simple tool to snap a part of your screen and point out details with annotations, shapes, and highlights. **IMPORTANT:** Do not save screenshots to Evernote as it violates the [Acceptable Use Policy](/handbook/people-group/acceptable-use-policy/#unacceptable-system-and-network-activities). |
| System control | [Lungo](https://apps.apple.com/us/app/lungo/id1263070803) | Lungo prevents macOS from falling asleep and your screen from dimming. |
| System control | [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704) | Amphetamine can keep your macOS, and optionally its display(s), awake through a super simple on/off switch, or automatically through easy-to-configure Triggers |
| System control | [Keeping You Awake (Free & Open Source)](https://github.com/newmarcel/KeepingYouAwake) | Prevents your macOS from entering sleep mode for a predefined duration or as long as it is activated |
| System control | [Macs Fan Control](https://crystalidea.com/macs-fan-control) | Control fans on macOS computers |
| System control | [ToothFairy](https://apps.apple.com/us/app/toothfairy/id1191449274) | If clicking on 2 things to connect your AirPods is too much, this makes it a single click |
| System control | [Muzzle](https://muzzleapp.com/) | A simple macOS app to silence embarrassing notifications while screensharing |
| System control | [Choosy](https://www.choosyosx.com/) | Granular browser selection. Use Chrome for Google apps, Firefox for YouTube, or Zoom links without a browser redirect|
| Window manager | [Rectangle](https://rectangleapp.com/) | Move and resize windows in macOS using keyboard shortcuts or snap areas (based on the no longer supported [Spectacle](https://www.spectacleapp.com/) |
| Window manager | [Divvy](https://mizage.com/divvy/) | Allows you to quickly and efficiently “divvy up” your screen into exact portions and save arrangements to shortcuts and keybinds |
| Window manager | [Magnet](https://magnet.crowdcafe.com/) | macOS doesn’t tile windows aside from full-screen split, for more options, use Magnet |
| Window manager | [Moom](https://manytricks.com/moom/) | Moom makes window management as easy as clicking a mouse button—or using a keyboard shortcut, if you're one of those types of people. |
