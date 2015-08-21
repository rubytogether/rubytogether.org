---
summary: "A double progress report including 80 hours of developer work paid for, a new website, a new Bundler version, RubyGems progress, and juicy financial details."
---
<% title "July 2015 Monthly Update" %>

Hello, and welcome to the Ruby Together update for July! This double update includes both June and July, so it's longer than usual. We've also started including details about Ruby Together's budget and development spending in our monthly updates, so be sure to take a look.

## tl;dr

In June & July, we launched a new website, a significant new version of Bundler, shipped new ops tools for RubyGems.org, gained 15 new members, and paid for 80.33 hours of maintenance and development work on Ruby infrastructure. If you're interested in the details, keep going!

## Ruby Together news

The [Ruby Together website](https://rubytogether.org) relaunched just this week. The new design is a direct result of feedback from the community, and focuses on keeping the community informed about what we're doing and what our plans are. The [Ruby Together roadmap](https://rubytogether.org/roadmap) showcases those plans, while the new [faq](https://rubytogether.org/companies#faq) answers your questions.

Founding board member [Aaron Patterson](http://twitter.com/tenderlove) informed us that while he is still "on board" with Ruby Together, he needed to retire from our board of directors. Instead of leaving his seat empty, the board conducted a search, and we have appointed [Coraline Ada Ehmke](http://twitter.com/coralineada) as an interim board member. Best wishes to Aaron, who will now have more time to spend with his cats, and welcome to Coraline!

Finally, as the culmination of weeks of planning, we were able to announce that Ruby Together will only fund development work on open source projects that adhere to a code of conduct for maintainers and contributors. Anyone interested can check our blog for the [more detailed announcement](https://rubytogether.org/news/2015-07-15-project-codes-of-conduct).

## Bundler news

Bundler 1.10 includes several long-awaited features: a `lock` command, inline Gemfiles inside of scripts, the ability to disable post-install messages, optional gem groups, and conditional gem groups. For much more detail, including a discussion of the BUNDLED WITH section in the lock file, check out [the 1.10 release announcement](http://bundler.io/blog/2015/06/24/version-1-10-released.html).

A combination of unexpected factors made some users very unhappy with the 1.10 release. As a result, we spent dozens of hours talking with users, coming up with workarounds, and trying to help everyone upgrade to the newest version of Bundler as smoothly as possible. An overview of the problems and the results of that work are also discussed in the release announcement, so reading it is probably worth your time.

Since the last update, [Google Summer of Code](https://www.google-melange.com) kicked off, bringing four student contributors to Bundler! For three months, [@smlance](https://github.com/smlance) will be working on Bundler 2.0, [@fotanus](https://github.com/fotanus) will be working on the new index format, [@rgb-one](https://github.com/rgb-one) will be working on project maintenance and the website, and [@suhastech](https://github.com/suhastech) be working on a plugin system for Bundler. We're very excited to have them!

## RubyGems.org news

The RubyGems.org team, led by David Radcliffe, made some great progress this month. Deploying the site is now handled by [Shipit](https://github.com/Shopify/shipit-engine). The logging system that's been in progress got some attention, and we'll be migrating to a new service in July that should need much less maintenance in the future. We switched to using a new chatbot, improved our Fastly config to reduce client errors and position us for the full Fastly migration, and started work on improved search. Finally, two new ops members joined the volunteer team, bringing the ops team up to 4 members.

[RailsGirls Summer of Code](http://railsgirlssummerofcode.org) also started, with a team working on RubyGems.org. RailsGirls Team Binary will be working on a RubyGems adoption center, to match up gems that need maintainers with developers who have time to work on them.

## New members

In June & July, 9 new developer members joined, including Phil Cohen, Brian Lauber, Camille Baldock, Joshua Bell, Rohit Paul Kurukilla, and Nick & Amanda Quaranto.

Four new companies joined: Ecstatic Labs, Optoro, CustomInk, and Koombea.

Today, Ruby Together has 75 developer members, 4 Topaz company members, 3 Emerald company members, and 1 Sapphire company member.

## Funding status

Our combined memberships currently amount to a projected monthly income of $8,350 per month. This infographic, taken from [our roadmap](https://rubytogether.org/roadmap) shows where we're at right now, and what we'll be able to do as more members join.

![$8,350.00 per month](/email/2015-07-18-july-2015-monthly-update/roadmap-status.png)

## Budget & Expenses

During the months of June and July, Ruby Together took in $20,811.92 and spent $20,031.92. Here's a breakdown of the categories that we spent money in:

  * $4,550 for 30.33 hours of developer time on Bundler at $150/hour
  * $7,500 for 50 hours of developer time on RubyGems.org at $150/hour
  * $148.92 on dedicated servers for RubyBench.org
  * $613.58 in payment processing fees
  * $3,121.92 on company overhead like hosting, services, software, taxes, etc.
  * $4,877.50 on accounting, copywriting, design, and other professional services

Spending on professional services is high right now, because the company is still getting off the ground in our third and fourth months of existence. As our revenue grows, we expect to spend more on developer time and servers, and the same amount or less on professional services and overhead.

Until next time,<br>
André and the Ruby Together team
