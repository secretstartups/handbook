---
layout: handbook-page-toc
title: Pair Programming
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Intro

I ([Chad](https://gitlab.com/cwoolley-gitlab)) was asked to provide some notes and tips on pair programming, based on his experience with part- and full-time pair programming, in-person and remote, since the early 2000's.

Here they are.  Pair programming is a big topic, and much has been written on it, but I've tried to keep it short, and mention the points I find most important.

## References

* [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html) at MartinFowler.com - This is a very good and thorough article. I recommend it as a good introduction to the various styles, benefits, and challenges of pair programming.
* [Pair Programming glossary entry](https://www.agilealliance.org/glossary/pairing) from AgileAlliance.org - This page contains some additional info and links, including origins of and academic publications relating to pair programming. 

## Important Points

The [MartinFowler.com article above on pair programming](https://martinfowler.com/articles/on-pair-programming.html) is very thorough.  Here are a few points I feel are important to call summarize, and provide some additional info/analysis. I won't necessarily describe each one; please refer to the article for that.

### General Advice

#### Pairing is Exhausting

* Everyone who pair-programs full-time for the first few days or week always says that it's one of the most intense and tiring development experiences they've had, but they almost invariably say they learned a ton of new things, about software, people, and themselves.
* Be aware of this, and take lots of breaks.

#### Experience Level Does Not Matter

* As long as all people in the pair/mob have a basic understanding of the ecosystem, tools, and languages being used, then they can pair together effectively.
* Even if there is one person who is a very experienced expert, and another person who is more inexperienced, the expert can still benefit!  This often takes the form like this:
  * expert person: ...coding and narrating some cool and complex thing...
  * inexperienced person: "Wait! Stop! Please explain what you are doing, I don't understand why you are doing that."
  * expert person: "Well, I am doing such and such, and I need to do that because..."
  * expert person: ...is silent for a minute
  * expert person: "Hmm.  Well, now that I think of it, maybe that's not a good idea..."
  * expert person: "Yeah. We don't actually need to do that at all. Lets do this other thing that's a lot simpler!"
* And just like that, an hour (or day, or week) of unnecessary coding time, complexity, code debt, unnecessary "gold plating", premature performance optimization, etc, were avoided, just by making the "expert" stop and think about what they were doing.

#### Don't jump right into coding

* Spend some time chatting and getting comfortable with each other
* Read the requirements together completely, and make sure you fully understand them.  Document and follow up on any questions that come up.
* Talk about the plan - what the archirecture will be, how you will test it, any unknown/confusing parts.  This can also reduce debates, disagreement, and confusion as the pairing session progresses.

### Ask Questions! Don't be confused

* As soon as you are confused about something, ask the other person to stop and explain it!  If you are lost or confused, you cannot contribute effectively to the pair.  If it's something that is too complex to teach/learn in the current pairing session, consider switching tasks.

#### Be vocal and communicate

* Someone should **always** be talking about what is happening while pairing. In a driver-navigator approach, this is the driver. If the driver is just typing and not talking, **stop** them, and ask them to narrate what they are doing. If they are unable to, switch it up, or consider switching to another style such as Strong Pairing. 
* If you want to take over the keyboard, ask first, don't just start typing.  But always be aware of being a "keyboard hog".
* If you have a different idea or plan, bring it up sooner rather than later, but also be open to other approaches.  Follow GitLabs values, such as [Disagree, commit, and disagree](/handbook/values/#disagree-commit-and-disagree).
* **Stop** and **Explain** things often, but don't be condescending or mansplain.  It's a fine line, it helps to often say things like "are you familiar with this approach?"

#### Be aware and empathetic of different personalities

* Some people are more extroverted and opinionated, some people aren't.  The beginning of the pairing session is a great time to find out each others personalities, so you can be aware and accommodate them.  If the other person is more introverted and quiet, you might want to stop more often and ask them if they have input.

## Pair Programming Styles

### Driver and Navigator

* This is the most common I've seen with two-person pairs, and is usually the default.
* The Driver's most important jobs is to **always narrate what they are thinking and doing**.  This is hard, and an acquired skill!  But it's critical, so the Navigator knows what's going on.
* The Navigator should be thinking ahead and high level. Their job isn't to find typos, it's to be making sure the big picture still makes sense and is on track (although it's find to point out typos after waiting to make sure that the Driver has had time to notice it but still missed it).

### Ping Pong Pairing

* This can be used when you are doing "Test First" Test-Driven Development (TDD), where you write a failing test before you write the implementation.  I.e. "Red, Green, Refactor".  You can google these terms for more details.
* It is a fun way to pair, especially for people new to pairing, because it is structured and prevents keyboard-hogging.
* However, it usually goes smoother when a problem is well-defined.  If you are not clear what exactly you need to do, it can be hard to write a test for it.  However, this is also often where TDD can really help, by simply focusing on the requiments without worrying about the big picture, and letting the test drive an emergent architecture.

### Strong Pairing

* This is a great approach if someone has a tendency to be a keyboard hog, or if one person in the pair has a lot more experience in the domain than the other.
* The general idea is that **any** ideas for the code must be typed by the **other** person - **not** the person with the idea.
* This forces the person with the idea to be able to articulate it verbally, which often can surface problems or oversights which might not be otherwise be obvious if they were typing it themselves.
* If the Driver has an idea, then they must **give up the keyboard** to someone else to drive, then describe their idea for the new driver to code up.
* However, it can be frustrating at times. Be patient, and switch to another style if you need a break.

### Mob Pairing

(*This approach is not mentioned in the article*)

* This is a form of Strong Pairing, but with more than two people. Currently (as of March 2020), there are open sessions going on every Friday to work on frontend code cleanup and refactoring, if you want to get a taste of this.
* Like Strong Pairing, there is still a single "Driver", and they are simply typing ideas from other people (not their own).
* But, the ideas can come from an other person in the "mob".
* This sounds chaotic, but when done in practice, it can be really cool, and you can get a lot of really high-quality code written in a short time. I know of one company which did **all** their development mob-programming style, and were successful with it.

## When Not to Pair

* One of the main downsides of pair programming is not having time to go at your own pace, and explore things deeply which you might not be able to in a pair.
* It can be hard or impossible to get in "the zone" and achieve "[Deep Work](https://www.calnewport.com/books/deep-work/)" when pairing
* Rote tasks, like straightforward documentation or repetitive "grunt work" can be frustrating to pair on.  So be aware of the tradeoffs.
* Especially be aware of when a repetitive or rote task that is "too simple to pair on" can be automated, or be made to go away with some tool or other approach.
 
## Scheduling pairing sessions

- Create an event in the [Static Site Editor team calendar](https://calendar.google.com/calendar/embed?src=gitlab.com_56i46dodsa0mvtkfvn10hcssjo%40group.calendar.google.com&ctz=America%2FSanto_Domingo). Use the following template to describe the event: 
   - title: `Pairing session: [Short title describing topic] `
   - description: `More detailed description indicating what the session is about`
- Document the session’s goals and tasks using the template in the [pair programming session agenda document](https://docs.google.com/document/d/1gQd97Js9JC8NU5iPGKBTEz2z0CijzWRfvca8B4JHHYw/edit). 
- Announce the session in the #g_create_static_site_editor_eng channel on Slack.
- Remember to record the session in zoom and upload it to the [pair programming sessions directory](https://drive.google.com/drive/u/0/folders/1Na_ltp15wAk_GAtKp0uBiPwhgrQBV-4P). 

## Tools

* [Presentation Assistant](https://plugins.jetbrains.com/plugin/7345-presentation-assistant/) in Jetbrains IDEs is a great way to learn the keybindings and shortcuts that other people use.
