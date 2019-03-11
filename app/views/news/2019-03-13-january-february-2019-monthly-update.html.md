---
summary: In January and February, we paid for 320 hours of developer work, made improvements to the Bundler release process, updated several RubyGems.org dependencies, and worked to reduce malicious gems. 
---

Hello! Welcome to the monthly update. During January and February, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [Bleacher Report](http://www.bleacherreport.com), [DigitalOcean](https://www.digitalocean.com), and many others.

*Yearly update update:* Wondering why you didn’t get the 2018 yearly update last month? Our email sending system was down last month due to a denial of service attack. You can [read the 2018 yearly update from last month on our website](https://rubytogether.org/news/2019-02-09-december-monthly-and-2018-yearly-update).

## ruby together news

In January and February, Ruby Together was supported by 63 different companies, including Sapphire member [Stripe](https://stripe.com). In total, we were supported by 66 individual members and 63 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

In other important news: [we’re hiring](https://ruby-together.breezy.hr/p/3d0aae712e8f-head-of-growth)! We put out a call for a new, part-time Head of Growth. Part membership recruitment, part happiness maintainer, we are looking for someone who is excited about the Ruby community, open source, and engaging with developers and engineering management about supporting Ruby Together. Know someone who would be a fit? Send them our way!

## bundler news

In January, we awarded our [first three-month long project grant](https://rubytogether.org/projects)to David Rodriguez for his work on Bundler and RubyGems. Here’s his first update:

Hello everyone!

This is my first progress report about my collaboration with Ruby Together to improve Bundler’s release process and deprecation management. I feel really proud that I’ve been given this opportunity, and I will do my best to improve the core of the Ruby ecosystem!

I have focused on several things these first two weeks:

I stabilized the builds of both Bundler and RubyGems, by fixing skipped tests and flaky failures to get both CIs consistently green. This should make subsequent improvements easier. In RubyGems, I landed several bug fixes in the install and update commands. With the release of Bundler 2 supporting only RubyGems 3.0, the basic command, “gem install rails”, started failing. We reverted the RubyGems 3.0 requirement in Bundler 2.0.1 to workaround this, but I intend to make `gem install` properly fallback to installing an older version when the `required_rubygems_version` requirement of the latest version is not satisfied. However, I decided to initially focus on some misc bug fixes in the install and update commands, to familiarize with the RubyGems code base and to be able to tackle this improvement with more confidence in the upcoming weeks. Big kudos to RubyGems contributor @MSP-Greg for providing the initial work for some of these fixes!

In Bundler, I started moving forward a new approach for deprecations, which will be enabled by default in the next release. We have a lot of improvements in Bundler’s master, but we haven’t released them for a long time, because they imply breaking changes. By starting to display deprecations for these changes, we’ll be closer to actually being able to release them. I also started addressing some issues surfaced by the Bundler 2 release, specifically about being too picky about the Bundler version a specific application should run. Currently, Bundler will raise if the version in the BUNDLED WITH section of the lock file doesn’t match the running version. We feel it’s premature to do this now, so I’m looking into downgrading this to a warning for the time being. I also coordinated with @colby-swandale the merge of Bundler 2 back into master, which hasn’t yet happened since the Bundler 2 release.

Finally, I’ve dedicated a fair amount of time to review the integration of Bundler into ruby-core since the 2.6 release, and the “gemification” of the standard library. Thanks to @hsbt, this is now a reality, but it comes with its own set of difficulties. I’ve been studying these difficulties and creating some fixes and workarounds for them. I plan to keep working on making this transition as smooth as possible for everyone.

I really hope my work is appreciated by the community and I expect to deliver better and bigger improvements in the upcoming weeks!

Best regards,
David

_This is a combined update for January and February, so here is David’s second update as well:_

Hello everyone!

This is my second report about my collaboration with Rubytogether to improve bundler's release process and deprecation management. They were a couple of exciting weeks, because I now feel I'm closer to being ready to release some of the work I've been doing.

The following is a non extensive list of the stuff I've been focusing on:

* I continued the work on bundler's deprecations. I reviewed each deprecation and made sure the messages are actionable, they show up when they should, and they have passing specs. In particular, I made a plan for the deprecation of the changes that are most likely to be controversial and require special care. For example, I proposed to deprecate sticky options, and custom gemfile sources (such as :github, :gist, or :bitbucket), in a smoother process that should be more friendly to our users because it happens in several steps across multiple major versions. Finally, I made sure that we use non-deprecated features in our own specs, in order to set a good example :)
* In addition to deprecations, I also finished the work that I mentioned in [the previous report]() about only reporting warnings and not hard errors when we find a mismatch between the running bundler version and the version the Gemfile was created with. I hope to release these changes in both rubygems and bundler soon.
* I also continued to improve the integration of bundler into ruby-core. I proposed to [eliminate the `git` dependency from bundler's gemspec](https://github.com/bundler/bundler/pull/6985) (which has caused problems with the integration), and raised [an issue](https://bugs.ruby-lang.org/issues/15610) with ruby-core about where the default copies of bundler & rubygems should live, and how they should get updated. I'm in touch with hsbt and we plan to discuss the future of this integration some time in the near future.
* Finally, I've been working on making our specs "docker friendly", and making bundler testable under bare docker images of ruby and rvm. My understanding is that this should make it much easier to reproduce CI failures (or user reported bugs), and to detect version manager specific regressions (or ruby-core integration bugs). Besides that, testing on top of custom docker images is something provided built-in by Azure pipelines, so it's a good opportunity to try it.

As I mentioned in the previous report, I'm very glad to be working on bundler during these weeks. Any suggestions or feedback you may have, feel free to share them through Github, Slack or whatever means you like!

See you again soon,

David.

In January and February, Bundler gained 110 new commits, contributed by 11 authors. There were 1,401 additions and 1,503 deletions across 849 files.

## rubygems.org news

In last two months, we released a new search API powered by Elasticsearch, which resolves multiple issues including [missing search results](https://github.com/rubygems/rubygems.org/issues/972) and [slow performance](https://github.com/rubygems/rubygems.org/issues/1256). Thanks to @lucianosousa, we are now using Rails 5.2.2. We would also like to let you know that we sprinkled some styling to our email templates and now they are no longer being marked as spam by some email providers. We haven't received any new help ticket for email being lost in last month—a good sign!

In mid February, we had to impose rate limit of one yank request per 10 min because we were seeing some users yank hundreds of gems at once. Our yank API endpoint was extremely slow, and hundreds of yanks at once was causing site instability. Since then we have worked hard on some optimizations and we are happy to report that we have brought down the average response time of Yank API from 4000 ms to 250 ms.

In January and February, Rubygems.org gained 67 new commits, contributed by 8 authors. There were 1,177 additions and 509 deletions across 81 files.


## rubygems news

RubyGems saw a bunch of commits cleaning up code, fixing bugs, and generally making things work better.

We also did additional work in the background, working with security researchers to fix problems that they had discovered. You can read more about [the security issues, fixes, and the latest release with fixes on the RubyGems blog](https://blog.rubygems.org/2019/03/05/security-advisories-2019-03.html).

In January and February, RubyGems gained 153 new commits, contributed by 12 authors. There were 1,776 additions and 807 deletions across 176 files.

## gemstash news

Gemstash saw a few bug fixes in January and February. In total, Gemstash gained 19 commits contributed by 3 authors. There were 22 additions and 8 deletions across 5 files.

## ruby toolbox news

Hey everyone,

in February, the main topic for me was the restoration and reintegration of historical Ruby gem download data into the Ruby Toolbox, enabling two new features: [Historical Gem Download Charts](https://www.ruby-toolbox.com/blog/2019-02-25/historical-gem-download-charts) and [Trending Projects](https://www.ruby-toolbox.com/blog/2019-02-28/trending-projects) which both launched towards the end of the month. I documented the process of restoring the data [on a new documentation page](https://www.ruby-toolbox.com/pages/docs/features/historical_rubygem_download_data)

I also built and released a new [project comparison](https://www.ruby-toolbox.com/blog/2019-02-14/project-comparisons) feature which allows you to view and compare a custom set of libraries just like regular categories or search results are displayed on the site.

Since I was busy getting these done until the last minute I did not find the time yet to write the review of the last 3 months of me working on the Toolbox as my main project. I will get to that soon, so keep an eye on the [Toolbox blog](https://www.ruby-toolbox.com/blog) or simply wait for the next Ruby Together monthly update. :)

As always, your feedback is very welcome, if you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to the PR contributors of February: alsemyonov, andyw8, havenwood, keithrbennett, kyleboe, listrophy, mbajur, pabloh, and serodriguez68

Best,
Christoph

## budget &amp; expenses

In January, we saw $13,390 in total income, and spent a total of $33,768.13. 

* $1,135 for 7.6 hours worked on Bundler at $150/hour
* $2,062.50 for 13.8 hours worked on RubyGems.org at $150/hour
* $5,551.25 for 37.0 hours worked on RubyGems at $150/hour
* $3,263.75 for 21.8 hours worked on other OSS and devtools at $150/hour
* $11,837.50 for 78.9 hours worked on The Ruby Toolbox at $150/hour
* $75.93 on dedicated servers for RubyBench.org
* $452.67 on payment processing fees
* $7,898.73 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,440.80 on accounting, copywriting, design, and other professional services
* $50 on marketing, evangelism, and community outreach

In February, we saw $13,883.15 and spent a total of $33,628.01.

* $993.12 for 6.6 hours worked on Bundler at $150/hour
* $2,062.50 for 13.8 hours worked on RubyGems.org at $150/hour
* $4,946.25 for 33.0 hours worked on RubyGems at $150/hour
* $2,598.12 for 17.3 hours worked on other OSS and devtools at $150/hour
* $13,587.50 for 90.6 hours worked on The Ruby Toolbox at $150/hour
* $75.97 on dedicated servers for RubyBench.org
* $465.69 on payment processing fees
* $7,048.36 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,850.49 on accounting, copywriting, design, and other professional services
* $0 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team

