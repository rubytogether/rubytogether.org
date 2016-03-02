---
summary: "In January, Ruby Together paid for 56 hours of developer time, released RubyGems 2.5.2, hired two more developers, and gained 9 new members."
---
<% title "January 2016 monthly update" %>

Welcome to the Ruby Together monthly update for January 2016! This month we paid for 55.65 hours of developer time, 7 new developers joined as members, and 2 new companies joined: Simplificator AG and Travis CI.

If you're not a member yet, help us do even more next month by [joining today](https://rubytogether.org/join).

## Ruby Together news

The end of December and January were a pretty quiet time, as usual for most businesses around the world. While it was quiet, we were still working away, and we have hired two more developers to work on Ruby gem infrastructure! Bundler maintainer [Samuel E. Giddins](https://twitter.com/segiddins) will be working on both Bundler and RubyGems when his studies permit. Also stepping in to give a hand with RubyGems work is [Ellen Marie Dash](http://twitter.com/duckinator). See below for the results on RubyGems—we're making good progress.

We had seven new developers join as members, including Sean Moubry, Simon Starr, Veronica Ray, Terry Finn, Barrett Clark, and Chris Thorn. Two companies joined, [Simplificator AG](http://www.simplificator.com/en) and [Travis CI](https://travis-ci.com). Travis CI has been a long-time supporter of Ruby open source, and provides free infrastructure to run the tests for Bundler, RubyGems, RubyGems.org, and countless other open source projects. With these new members, our projected monthly income is now $16,830.

## Bundler news

Between finals and holiday vacations, work on Bundler was sporadic, but we made significant progress. Across the Bundler and Bundler API projects, 49 pull requests were merged, including 239 commits from 10 authors.

The Bundler API servers are now serving the new RubyGems index format, and the Bundler master branch has merged the new index client code. With only a few known issues left, we expect to ship a prerelease of Bundler 1.12 within the next week or two!

## RubyGems.org news

In the [rubygems.org repo](https://github.com/rubygems/rubygems.org/), 13 pull requests were merged, including 82 commits from 10 authors. We applied security patches, upgraded gems, fixed bugs, and improved translations on the site. We also built and deployed a completely new status page at http://status.rubygems.org. It is more accurate, and should also be more reliable.

In addition to improving the codebase, we improved exception reporting, dealt with sporadic CDN outages, blocked abusive traffic that threatened to take down the site, and generally worked to keep things running smoothly.

## RubyGems news

RubyGems is the most exciting project to me in this update, since it is getting seriously worked on for the first time in several months. We closed 50 issues, leaving only 131 remaining. We also merged 17 pull requests, including 31 commits from 9 authors.

Some highlights from those changes include fixing [a longstanding bug with native gems](https://github.com/rubygems/rubygems/issues/977), adding Windows CI for the RubyGems, and many miscellaneous fixes released as RubyGems [version 2.5.2](https://github.com/rubygems/rubygems/blob/master/History.txt#L3).

## Budget & Expenses

From December 19 to January 18, including Travis CI paying up front for an entire year, Ruby Together took in $25,766. In total, we spent $10,346.25. Here's a breakdown of where the money went:

  - $3,000 for 20 hours of developer time on Bundler at $150/hour
  - $3,000 for 20 hours of developer time on RubyGems.org at $150/hour
  - $2,347.50 for 15.65 hours of developer time on RubyGems at $150/hour
  - $73.72 on dedicated servers for RubyBench.org
  - $507.31 on payment processing fees
  - $1,211.44 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $280 on accounting, copywriting, design, and other professional services

We spent around $2,500 on community outreach costs, including stickers, shirts, conferences, and etc., but reimbursements went out too late to be included here. We'll include them in next month's budget summary.

Next month, we expect an increase in community outreach as we ramp up operations in the new year. We also expect to pay for between 60 and 100 developer hours, an all-time high.

In the next update: Bundler 1.12, the new RubyGems index format, and further results from reviewing the years-long backlog of RubyGems issues!

Until next time,<br>
André and the Ruby Together team
