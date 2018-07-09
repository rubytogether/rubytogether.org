---
summary: In June, we paid for 58.8 hours of developer work, continued with Google Summer of Code, released a new version of RubyGems, and continued to make progress with Bundler, RubyGems.org, and the Ruby Toolbox.
---

Hello! Welcome to the monthly update. During June, our work was supported by [Stripe](https://stripe.com), [Coinbase](https://coinbase.com), [Airbnb](http://airbnb.com), and many others.

## ruby together news

In June, Ruby Together was supported by 74 different companies. Two new developers signed up as members or friends of Ruby Together. In total, we were supported by 82 individual members and 66 friends of Ruby Together.

Developer evangelist [PJ Hagerty](http://twitter.com/aspleenic) visited a number of conferences and meetups in June, including BostonRB, Texas Linux Fest, and RubyConf Kenya. 

As promised, we also published the results from our [June 23 board meeting](https://github.com/rubytogether/board/blob/master/meetings/2018-06-23.md). We made some great progress, and expect to be able to announce the new projects that we’re working on within the next month or two.

## bundler news

Last month, we fixed some bugs and our Google Summer of Code (GSoC) students finished work on the `bundle remove` feature. We also created a [checklist for the Bundler 2 release](https://github.com/bundler/bundler/issues/6582), and finished documentation for the [Bundler release process](https://github.com/bundler/bundler/pull/5252).

After that, we published a [public request for comments on the idea of Bundler release channels](https://github.com/bundler/rfcs/pull/12). Just this week, we [learned a lot about how Docker and Bundler can work better together](https://github.com/bundler/bundler/pull/6524).

This month, Bundler gained 63 new commits, contributed by 12 authors. There were 738 additions and 102 deletions across 48 files.

## rubygems.org news

In June, we updated over 25 dependencies, including nokogiri and the sprockets security release, and updated to Rails 5.1. We also fixed a longstanding and frustrating issue where multiple CI builds pushing a new gem version at the same time could result in a checksum error when trying to install the new version.  On June 27, we deprecated the “gem edit” page and it will be removed altogether on July 10. 

Instead of editing gem metadata at rubygems.org, we recommend using the gem specification itself. Use `Gem::Specification#metadata` to setting links to a gem’s homepage, changelog, documentation, and other websites. This will help us reduce the complexity of rubygems.org by making `Gem::Specification#metadata` the single source of truth and it will also allow gem owners to set different URLs by version.

This month, rubygems.org saw 28 commits making 159 additions and 74 deletions across 29 files.

## rubygems news

RubyGems saw a lot of activity this month, with 29 merged pull requests. Changes included some support for the upcoming Ruby 2.7, test improvements, a fix for a leaking tempfile, better support for frozen string literals, and better support for case-insensitive file systems. We also added more deprecations for the upcoming 3.0 release, improved the way RubyGems interacts with Bundler 1.16.2 and the upcoming 2.0, and fixed some edge cases with stub gem specifications.  We shipped most those changes by releasing RubyGems 2.7.7 on June 8.

After releasing 2.7.7, we merged several fixes for installing gems directly from an AWS S3 bucket source, improved some warning messages, and fixed issues activating gems when the same gem is installed for more than one platform at once.

In total, RubyGems gained 67 new commits, contributed by 12 authors. There were 439 additions and 62 deletions across 24 files.

## gemstash news

Gemstash saw a bug fix for health check race conditions last month. It gained 2 new commits, contributed by 2 authors. There were 11 additions and 3 deletions across 2 files.

## ruby toolbox

Hey everyone!

This month, I prepared the request-for-feedback PR for metric rankings I mentioned in the last update. If you have a minute, please [leave your suggestions in this PR](https://github.com/rubytoolbox/rubytoolbox/pull/233). Additionally, there was some maintenance work, including gem updates and inbound catalog change reviews.

While the metric rankings are open for discussion in the PR, I want to set up automated database dumps available to download from the site in July.
([Refer to this issue](https://github.com/rubytoolbox/rubytoolbox/issues/73) for more information.) This will serve two purposes: it makes it easier to get a reasonable local dataset for development, and it allows people
interested in crunching some numbers easier access to the Toolbox dataset. I'd also [like to do some improvements to the search](https://github.com/rubytoolbox/rubytoolbox/issues/109) that didn't make it into the site for the original re-launch.

As always, your feedback is very welcome. If you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to everyone who contributed pull requests in June: ch4mpignator, cvshepherd, danielwestendorf, enkessler, piotrmurach, samnissen, and splashinn

Best,
Christoph

## budget &amp; expenses

In June, we saw $15,465.00 in total income, and spent a total of $13,490.43.

* $1,722.50 for 11.5 hours worked on Bundler at $150/hour
* $1,102.50 for 7.4 hours worked on RubyGems.org at $150/hour
* $3,810 for 25.4 hours worked on RubyGems at $150/hour
* $2,177.50 for 14.5 hours worked on other OSS and devtools at $150/hour
* $78.69 on dedicated servers for RubyBench.org
* $519.78 on payment processing fees
* $1,718.96 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,432.50 on accounting, copywriting, design, and other professional services
* $928 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team
