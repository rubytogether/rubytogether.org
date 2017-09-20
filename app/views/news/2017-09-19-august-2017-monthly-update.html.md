---
summary: In August, we paid for 139.4 hours of developer work, focused mainly on Bundler milestones 1.16 and 2.0.
---

Hello! Welcome to the monthly update. During August, our work was supported by [reinteractive](http://reinteractive.com), [Stripe](http://stripe.com/), [Gitlab](http://gitlab.com/), [Travis CI](https://travis-ci.org/), [Bleacher Report](http://www.bleacherreport.com/), and many others.

## ruby together news

In August, Ruby Together was supported by 83 different companies, including Sapphire member [Stripe](https://stripe.com). 2 companies joined as new members last month, including our first ever Ruby member, [reinteractive](http://reinteractive.com)!

On top of those companies, 2 new developers joined as friends of Ruby Together. In total, we were supported by 105 individual members and 72 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

In Ruby Together news, we successfully wrapped up a summer of full-time work from [@segiddins](https://github.com/segiddins). His three months included a huge amount of extremely productive work, including:

  - addressing several RubyGems security reports
  - a RubyGems security release
  - code to allow RubyGems to (optionally) release with Bundler built in
  - two Bundler 1.16 preview releases
  - addressing every outstanding blocker for [the Bundler 2.0 github milestone](https://github.com/bundler/bundler/issues?q=is%3Aissue+milestone%3A%222.0+—+Breaking+Changes%22+is%3Aclosed)

On a slightly sadder note, founding board member [Steve Klabnik](https://twitter.com/steveklabnik) has stepped down from the board of directors. The remaining directors will appoint an interim director to serve out the rest of Steve's term, and we will have a board election soon. We're incredibly grateful to Steve for his support in getting Ruby Together off the ground, and we wish him the best as he focuses on Rust! ❤️

Finally, the multiply-teased secret announcement is finally coming together, and we'll be sharing details about it in the next update!

## bundler news

Building on the fantastic work done by Sam over the summer, RubyGems and ruby-core team member [@hsbt](https://github.com/hsbt) spent countless hours to get the Bundler test suite passing inside the overall Ruby language test suite. As a result of that work, [Matz approved shipping Bundler with RubyGems, inside Ruby](https://bugs.ruby-lang.org/issues/12733#note-14). Bundler was merged into the Ruby standard library in [revision 59780](https://bugs.ruby-lang.org/projects/ruby-trunk/repository/revisions/59779), and is expected to ship with Ruby 2.5. Thank you for all your help and hard work, hsbt! 🙇

Contributor [@arbonap](https://github.com/arbonap) began [translating the Bundler website into Spanish](https://github.com/bundler/bundler-site/pull/328), and has been enthusiastically assisted by several Spanish-speaking contributors. 💜

The work on Bundler last month was focused on changes for 2.0—we have finished adding feature flags for every change, and the difference between Bundler 1.x and Bundler 2.0 will be the default values for those settings! Bundler core team member [Colby Swandale](https://github.com/colby-swandale) gave a talk at [RubyKaigi](http://rubykaigi.org/2017) about Bundler 2, and the Bundler team has kicked off the process of shipping the 2.0 release.

That means we'll be spending at least a few weeks, and possibly a few months, testing workflows, updating documentation, writing blog posts, and working with users to ensure that the transition will be as smooth as possible. If you're interested in trying it out and helping us improve the upgrade process, we would love to hear from you in [the Bundler Slack](https://slackin.bundler.io)!

This month, Bundler gained 144 new commits, contributed by 15 authors. There were 2,395 additions and 730 deletions across 154 files.

## rubygems.org news

To help Bundler and RubyGems users connect to RubyGems.org in the future, [@indirect](https://github.com/indirect) and [@rubymorillo](https://github.com/rubymorillo) worked together to [expand the SSL troubleshooting guide](https://github.com/bundler/bundler-site/pull/324). We'd love to get your feedback on [the work-in-progress guide](https://github.com/bundler/bundler-site/blob/067698ae7b77a2769653315799f8741d74c73d52/source/v1.15/guides/rubygems_tls_ssl_troubleshooting_guide.html.md), so check it out!

RubyGems.org saw ongoing maintenance, including gem upgrades, server upgrades, and other small improvements, as well as work on the database servers. In August, the RubyGems.org repo gained 15 commits, contributed by 7 authors. There were 52 additions and 57 deletions across 11 files.

## rubygems news

RubyGems saw ongoing maintenance and bugfixes, as well as patches for several security issues, included in the [security release of version 2.6.13](http://blog.rubygems.org/2017/08/27/2.6.13-released.html). If you're unable to upgrade to the latest RubyGems, check out [the backport patches for Ruby 2.2, 2.3, and 2.4](https://www.ruby-lang.org/en/news/2017/08/29/multiple-vulnerabilities-in-rubygems/). In total, Rubygems gained 57 new commits, contributed by 11 authors. There were 978 additions and 302 deletions across 38 files.

## gemstash news

On August 21, Google Cloud Platform announced [google-cloud-gemserver](https://github.com/GoogleCloudPlatform/google-cloud-gemserver), a new gem from a summer intern to make running Gemstash on GCP as easy as running Gemstash on your local machine, which is super cool! You can read more about it [in the announcement blog post](https://cloudplatform.googleblog.com/2017/08/rolling-your-own-private-Ruby-gem-server-on-Google-Cloud-Platform.html).

Unfortunately, when the project was announced, I (André) jumped to conclusions and [accused the project of violating Gemstash's MIT license](https://github.com/GoogleCloudPlatform/google-cloud-gemserver/issues/36). My post was unreasonably aggressive, and I shouldn't have posted it, even if I had been right… which I wasn't. I turned out to be completely wrong, and [apologized to the author](https://github.com/GoogleCloudPlatform/google-cloud-gemserver/issues/36#issuecomment-324503159) a few hours later.

Sorry for letting you down, everyone. 💔 I'll try to be much more careful, and more gentle, in the future.

Gemstash itself saw regular ongoing maintenance: the unyank command was removed, to mirror rubygems.org, and the tests were updated to run against the latest JRuby version. This month, Gemstash gained 19 new commits, contributed by 2 authors. There were 22 additions and 381 deletions across 20 files.

## budget &amp; expenses

In August, we saw $19,140 in total income, and spent a total of $26,217.61.

* $13,821 for 92.1 hours worked on Bundler at $150/hour
* $4,774 for 31.8 hours worked on RubyGems.org at $150/hour
* $446 for 3.0 hours worked on RubyGems at $150/hour
* $1,871 for 12.5 hours worked on other OSS and devtools at $150/hour
* $78.97 on dedicated servers for RubyBench.org
* $638.86 on payment processing fees
* $1,986.12 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,287.50 on accounting, copywriting, design, and other professional services
* $1,313.66 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
