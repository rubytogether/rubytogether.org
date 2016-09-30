---
summary: "Ruby Together paid for 71.3 hours of work, and had 18 new members join. This month we talked about a Year of Ruby Together, released Bundler 1.13, 1.13.1, 1.13.2, and generally got very engaged with the Ruby community."
---

<% title "September 2016 Monthly Update" %>

Welcome to the September 2016 Ruby Together monthly update! This month we: added a variety of new features in Bundler 1.13, and bug fixes in 1.13.1 and 1.13.2. Paid for 71.3 hours of work on Bundler, RubyGems, and RubyGems.org. And gave a great talk at EuRuKo 2016 leading to 18 (!) new members.

## ruby together news

André did a [1 year recap](https://rubytogether.org/news/2016-09-27-a-year-of-ruby-together) of working on Ruby, Together. That post was also given in [talk form](https://speakerdeck.com/indirect/a-year-of-ruby-together) at EuRuKo 2016. In it, he discusses scaling, volunteer work, hacks, and open source.

(( André write this part!!! ))

## bundler news

Early in the month, we released [Bundler 1.13](http://bundler.io/blog/2016/09/08/bundler-1-13.html). This update features `required_ruby_version`, `bundle doctor`, and platform `lock` commands. Later in the month, [Bundler 1.13.1](https://github.com/bundler/bundler/milestone/32?closed=1) shipped with a variety of minor bug fixes.

Chris Morris ([@chrismo](https://github.com/chrismo)) was added to Bundler's [contributor team](http://bundler.io/contributors.html). His core team promotion was sponsored by the experimental [conservative update](http://bundler.io/blog/#experimental-conservative-updates) that shipped with 1.13.

We fixed a [GEM_PATH regression](https://github.com/bundler/bundler/pull/4992) in release 1.13. This bug was truly an adventure, and threw our core team for a loop for most of two weeks. Finally, we started working towards the Better Platform Support update with [the help](https://github.com/bundler/bundler/issues/4984) of [@headius](https://github.com/headius) and [jruby](http://jruby.org/).

In total, Bundler had 37 merged pull requests and 83 commits from 11 authors, and closed 50 issues.

## rubygems.org news

We experienced the [life and death](https://github.com/rubygems/rubygems.org/issues/1429) of [@rubygems](https://twitter.com/rubygems) this month. Many thanks to our valiant users, always on hand to pull our Twitter accounts back from the abyss.

We also worked on both server side ([rate limiting](https://github.com/rubygems/rubygems.org/pull/1414)), and end user focused ([gem yank](https://github.com/rubygems/rubygems.org/pull/1396)) security issues.

In total, RubyGems.org had 13 merged pull requests and 26 commits from 5 authors.

## rubygems news

We released [the last few months of changes](https://github.com/rubygems/rubygems/pulls?utf8=%E2%9C%93&q=merged%3A2016-06-22..2016-09-26) as RubyGems 2.6.7. This release features bug fixes for `--user-install`, and some initial bundler integration.

We also worked on more [organization and infrastructure](https://github.com/rubygems/rubygems/issues/1681) for the upcoming 3.0 merger, in addition to an array of [small integration changes](https://github.com/bundler/bundler/pulls?utf8=%E2%9C%93&q=merged%3A2016-09-01..2016-09-27%20rubygems%20).

In total, RubyGems had 8 merged pull requests and 21 commits from 6 authors.

## budget & expenses

From August 19 to September 18, Ruby Together took in $19237. In total, we spent $13543.78. Here's a breakdown of where the money went:

* $3690 for 24.6 hours worked on Bundler at $150/hour
* $3923 for 26.2 hours worked on RubyGems.org at $150/hour
* $3075 for 20.5 hours worked on RubyGems at $150/hour
* $75.16 on dedicated servers for RubyBench.org
* $604.78 on payment processing fees
* $1547.34 on company overhead like hosting, services, software, hardware, taxes, etc
* $600.0 on accounting, copywriting, design, and other professional services
* $29.0 on marketing, evangelism, and community outreach

## future plans

Next month we plan on releasing Bundler 1.14, the platforms release, with extended support for jruby in particular. That's in addition to our planned work on Bundler 2.0 and Bundler / RubyGems 3.0.

Until next time,<br>
Lynn, André, and the Ruby Together team
