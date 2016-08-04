---
summary: "Ruby Together paid for 64.4 hours of work, and had 5 new members join. We launched a new design for bundler.io, and made a big chunk of progress towards Bundler 1.13, 1.14, 2.0, and the combined Bundler+RubyGems 3.0."
---

<% title "July 2016 Monthly Update" %>

Welcome to the Ruby Together update for July 2016. This month, we paid for 64.4 hours of work, had 5 new members join, and had another solid month from our summer coding students. Work done this month includes a new design for bundler.io, and a lot of progress towards Bundler 1.13, 1.14, 2.0, and the combined Bundler+RubyGems 3.0.

## ruby together news

The focus at RubyTogether this month was on coordinating work across our largest team ever, thanks to all of our summer coding students. The biggest event was [@kruczjak](https://github.com/kruczjak) and [@sailorhg](https://twitter.com/sailorhg)'s work on the [bundler.io](http://bundler.io) redesign, which dramatically updated the style and added an array of new functionality. The highlights of that work are detailed in [@kruczjak's post announcing the new design](http://bundler.io/blog/2016/07/10/bundler-1-13-and-redesigned-bundler-io.html).

Along with that we had other [Google Summer of Code](https://developers.google.com/open-source/gsoc/) students working on a variety of small Bundler features, and the [Rails Girls Summer of Code](http://railsgirlssummerofcode.org/) students gearing up to working on Bundler's analytics system. Finally we had [@segiddins](https://github.com/segiddins) working on future Bundler / RubyGems updates, [@duckinator](https://github.com/duckinator/) on [how-is](https://github.com/how-is), and [@lynnco](https://github.com/LynnCo) on administrative automation.

We had two 5 new members join this month, including 3 new developers and 2 new companies. We appreciate everyone getting the word out, and encouraging people to support the Ruby community!

## bundler news

This was a very busy month for Bundler, with 15 authors getting 35 merged PRs with 251 commits. Features include: [RubyGems / Bundler Integration](https://github.com/bundler/bundler/pull/4770), [respecting the required Ruby version](https://github.com/bundler/bundler/pull/4650), [a warning message / upgrade guide](https://github.com/bundler/bundler/pull/4741) for Bundler 2.0, [trampolining fixes](https://github.com/bundler/bundler/issues/4753) which will allow Bundler 2.0 to stay compatible with apps that use Bundler 1.x, and [bundler-patch](https://github.com/bundler/bundler/pull/4676). Most of that work will be shipping with Bundler release 1.13 (any day now), and 1.14 (coming soon after, likely next month).

## rubygems.org news

RubyGems.org this month was mostly [content updates](https://github.com/rubygems/rubygems.org/pull/1359) and [minor security changes](https://github.com/rubygems/rubygems.org/pull/1342). Notably, though, we got a first time open source contributor! [They added](https://github.com/rubygems/rubygems.org/pull/1361) a Twitter field to RubyGems.org user profiles. In total we had 9 authors working on 27 merges with 67 commits.

## rubygems news

RubyGems this month was mostly [minor](https://github.com/rubygems/rubygems/pull/1666) [fixes](https://github.com/rubygems/rubygems/pull/1659), across 1 author (our own [Samuel Giddins](https://github.com/segiddins)), 3 merges, and 10 commits. Near the end of this month, the [first](https://github.com/rubygems/rubygems/pull/1639) of what will likely be many Bundler / RubyGems PRs was resolved, moving us closer to Bundler / RubyGems 3.0.

## budget & expenses

From June 21 to July 19, Ruby Together took in $19,161. In total, we spent $18,563.86. Here's a breakdown of where the money went:

* $2,452 for 16.3 hours worked on Bundler at $150/hour
* $3,613 for 24.1 hours worked on RubyGems.org at $150/hour
* $3,600 for 24.0 hours worked on RubyGems at $150/hour
* $74.35 on dedicated servers for RubyBench.org
* $596.57 on payment processing fees
* $1544.71 on company overhead like hosting, services, software, hardware, taxes, etc
* $7275.0 on accounting, copywriting, design, and other professional services
* $29.0 on marketing, evangelism, and community outreach

Check back next month for our last month of work from Google Summer of Code, more work towards major releases, and our regular diligent security updates and minor fixes.

Until next time,<br>
Lynn and the Ruby Together team
