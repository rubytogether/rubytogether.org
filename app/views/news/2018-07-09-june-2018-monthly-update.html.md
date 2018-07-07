---
summary: In June, we paid for 58.8 hours of developer work, made progress on new Bundler features, and made multiple updates on RubyGems.org.
---

Hello! Welcome to the monthly update. During June, our work was supported by [Stripe](https://stripe.com), [Coinbase](https://coinbase.com), [Airbnb](http://airbnb.com), and many others.

## ruby together news

In June, Ruby Together was supported by 74 different companies. Two new developers signed up as members or friends of Ruby Together. In total, we were supported by 82 individual members and 66 friends of Ruby Together.

Developer evangelist [PJ Hagerty](http://twitter.com/aspleenic) visited a number of conferences and meetups in June, including BostonRB, Texas Linux Fest, and RubyConf Kenya. 

We also published the results from the [June 23 board meeting](https://github.com/rubytogether/board/blob/master/meetings/2018-06-23.md).

## bundler news

Last month, we fixed some bugs and our Google Summer of Code (GSoC) students finished work on the `bundle remove` feature. We also created the [checklist for the Bundler 2 release](https://github.com/bundler/bundler/issues/6582).

This month, Bundler gained 63 new commits, contributed by 12 authors. There were 738 additions and 102 deletions across 48 files.

## rubygems.org news

In June, we updated over 25 dependencies, including nokogiri and the sprockets security release, and updated to Rails 5.1. We fixed the race condition in Pusher which caused a mismatch in gem-checksum on parallel gem push. On June 27, we deprecated the “gem edit” page and it will be removed altogether on July 10. 


We recommend using `Gem::Specification#metadata` for setting links to a gem’s homepage, changelog, documentation, etc. This will help us reduce the complexity of rubygems.org by making `Gem::Specification#metadata` the single source of truth and it will allow gem owners to set different URLs by version.

This month, rubygems.org saw 28 commits making 159 additions and 74 deletions across 29 files.

## rubygems news

[SOMETHING HERE]

RubyGems gained 46 new commits, contributed by 10 authors. There were 439 additions and 62 deletions across 24 files.

## gemstash news

Gemstash saw a bug fix last month. It gained 2 new commits, contributed by 2 authors. There were 11 additions and 3 deletions across 2 files.

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
