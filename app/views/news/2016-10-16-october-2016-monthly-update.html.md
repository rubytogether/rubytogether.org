---
summary: "This month we released four bugfixes for Bundler 1.13, weathered great internet storms, and dramatically improved server response times. We did it with 70.3 hors of paid work on Bundler, RubyGems, and RubyGems.org."
---

<% title "October 2016 Monthly Update" %>

Welcome to the October 2016 Ruby Together monthly update! This month we released Bundler `1.13.[3..6]`, weathered great internet storms, and dramatically improved response times. We did it with 70.3 hours of paid work on Bundler, RubyGems, and RubyGems.org.

## ruby together news

This month, Michael R. Bernstein (@mrb_bk) has joined us as a consultant to help with marketing, sales, and automation. (You can see more about what he does with his company Computer Modern at [computermodern.io](http://computermodern.io)!)

There were 6 new developer members this month! Many thanks to Megan Tiu, John Akers, Rob Nichols, Olivier Lacan, Cameron Dutro, and Christoph Lupprich ^_^ !!!

We also saw signups from two new corporate members this month: [Gleam](https://gleam.io/), a business growth and marketing platform, and [Brakeman Pro](https://brakemanpro.com/), a Rails security auditing system.

## bundler news

We released Bundler [1.13.3](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1133-2016-10-10), [1.13.4](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1134-2016-10-11), [1.13.5](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1135-2016-10-15), [1.13.6](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1136-2016-10-22). `1.13.3` was support for rubygems.org infrastructure changes, `1.13.[4..6]` was your regularly scheduled fixes and optimizations.

We noticed from our traffic stats that a few thousand [Bash on Windows](https://msdn.microsoft.com/en-us/commandline/wsl/about) users were experiencing [bundler/bundler#4599](https://github.com/bundler/bundler/issues/4599). [The cause](https://github.com/Microsoft/BashOnWindows/issues/352) of this issue is home directory permissions, but we pushed out a fix for the sake of the number of effected users. [This fix](https://github.com/bundler/bundler/pull/5043) was deployed in `1.13.4`.

In total, Bundler had 35 merged pull requests and 106 commits from 12 authors, and closed 59 issues.

## rubygems.org news

We finished moving Bundler server infrastructure into rubygems.org, culminating in resolving an issue with `/versions` mismatches. With this, we are now serving all of rubygems.org from [Fastly](https://www.fastly.com/). This change [cut down server response times by half](https://twitter.com/dwradcliffe/status/786280193107202048)!

Later in the month, we survived the survived the [Great DNS Outage of 2016](http://motherboard.vice.com/read/blame-the-internet-of-things-for-destroying-the-internet-today). [rubygems.org](https://rubygems.org/) was up the entire time, although most of our other tools weren't.

In total, RubyGems.org had 18 merged pull requests and 33 commits from 8 authors.

## rubygems news

We released RubyGems [2.6.8](https://github.com/rubygems/rubygems/commit/9fb8880976f5ab998912898b091d88aa10eb1d4a) this month. This release comes with [improved SSL error messaging](https://github.com/rubygems/rubygems/pull/1751), which will hopefully relieve some frustration during this time of great turmoil.

In total, RubyGems had 18 merged pull requests and 29 commits from 10 authors.

## budget & expenses

From September 19 to October 18, Ruby Together took in $22851.42. In total, we spent $20368.58. Here's a breakdown of where the money went:

* $3960 for 26.4 hours worked on Bundler at $150/hour
* $3390 for 22.6 hours worked on RubyGems.org at $150/hour
* $3188 for 21.3 hours worked on RubyGems at $150/hour
* $75.53 on dedicated servers for RubyBench.org
* $716.3 on payment processing fees
* $2450.17 on company overhead like hosting, services, software, hardware, taxes, etc
* $5615.0 on accounting, copywriting, design, and other professional services
* $974.08 on marketing, evangelism, and community outreach

## future plans

In the coming months we plan on releasing Bundler 1.14 with better permissions error handling. We also are going to do several rounds of updates on the documentation for [bundler.io](https://bundler.io) and [rubygems.org](https://rubygems.org)

Until next time,<br>
Lynn, André, and the Ruby Together team
