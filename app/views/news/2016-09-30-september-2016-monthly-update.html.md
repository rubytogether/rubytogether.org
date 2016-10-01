---
summary: "Ruby Together paid for 71.3 hours of work, and had 18 new members join. This month we went to Strangeloop, gave a talk at EuRuKo about the first year of Ruby Together, and released Bundler 1.13.0, 1.13.1, and 1.13.2. All part of the plan for ramping up Ruby community outreach and engagament."
---

<% title "September 2016 Monthly Update" %>

Welcome to the September 2016 Ruby Together monthly update! This month we added a variety of new features in Bundler 1.13, as well as bug fixes in 1.13.1 and 1.13.2. We paid for 71.3 hours of work on Bundler, RubyGems, and RubyGems.org. Also, André gave a great talk at EuRuKo 2016 leading to 18 (!) new members.

## ruby together news

André gave a talk at [EuRuKo](http://euruko2016.org/) about [the first year of of working on Ruby Together](https://speakerdeck.com/indirect/a-year-of-ruby-together). The video isn't posted yet, but you can read [our blog post based on the talk](https://rubytogether.org/news/2016-09-27-a-year-of-ruby-together).

The first year of Ruby Together has been amazing! We've done more than we ever expected, and the community has come together in the best way possible to improve things for everyone. We're not safe yet, though! The rapidly increasing demands of Ruby developers and companies are pushing us to the limit as we keep everything working.

This is the time for companies with profitable businesses to step up and pay it forward to the next group of devs and companies that will benefit from open, free tools. Without more support, it's just a matter of time until we can't keep up. You can do it, Ruby community! We believe in you. <3

Thanks so much to our many new developer members !!! Tiago Mendes-Costa, Colby M. White, Vincent Daubry, Pascal Betz, Marion Schleifer, Adam Niedzielski, Tony Drake, Cecile Veneziani, Fernando Seror, and Keycoopt !!!

Another thanks to our corporate members, the valiant organizations committed to securing their income by funding their infrastructure. New corporate members this month are: [Hexagonal Consulting](http://www.hexagonconsulting.co/), [Kisko Labs](https://www.kiskolabs.com/), and [Hired][hired].

[Hired][hired] in particular signed up as a Sapphire member, putting it up with just Stripe and CodeMiner42 in supporting our work on Ruby infrastructure. Hired is an organization for empowering developers to find job opportunities with groundbreaking companies&mdash;from household names to emerging startups, and everything in between. Developers with Hired get access to over 4,400 innovative companies, and can quickly evaluate multiple offers side-by-side to choose the right fit with confidence.

[hired]: http://hired.com/?utm_source=sponsor&utm_medium=rubytogether&utm_campaign=q4-16-rubytogether

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

We released RubyGems 2.6.7 which features bug fixes for `--user-install`, and [other miscellaneous fixs](https://github.com/rubygems/rubygems/compare/v2.6.6...v2.6.7).

We also worked on more [organization and infrastructure](https://github.com/rubygems/rubygems/issues/1681) for the upcoming 3.0 merger, in addition to an array of [small integration changes](https://github.com/bundler/bundler/pulls?utf8=%E2%9C%93&q=merged%3A2016-09-01..2016-09-27%20rubygems%20).

In total, RubyGems had 8 merged pull requests and 21 commits from 6 authors.

## budget & expenses

From August 19 to September 18, Ruby Together took in $19,237. In total, we spent $13,543.78. Here's a breakdown of where the money went:

* $3690 for 24.6 hours worked on Bundler at $150/hour
* $3923 for 26.2 hours worked on RubyGems.org at $150/hour
* $3075 for 20.5 hours worked on RubyGems at $150/hour
* $75.16 on dedicated servers for RubyBench.org
* $604.78 on payment processing fees
* $1547.34 on company overhead like hosting, services, software, hardware, taxes, etc
* $600.0 on accounting, copywriting, design, and other professional services
* $29.0 on marketing, evangelism, and community outreach

## future plans

Next month we plan on working on a platform support release, including changes for JRuby in particular&mdash;in addition to our ongoing work on Bundler 2.0 and Bundler+RubyGems 3.0.

Until next time,<br>
Lynn, André, and the Ruby Together team
