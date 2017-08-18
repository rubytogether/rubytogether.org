---
summary: In July, we paid for 142 hours of developer work, released Bundler bugfixes, and worked on smoothing the path towards Bundler 2 and TLS v1.2.
---

Hello! Welcome to the monthly update for Ruby Together, a non-profit trade association dedicated to maintaining and improving developer tools for the Ruby programming language.

During July, we released two bugfix versions of Bundler, planned for the future, and made progress towards keeping RubyGems.org working for the months and years to come. Read on for more details!

Last month, our work was supported by [Stripe](http://stripe.com/), [Gitlab](http://gitlab.com/), [Cloud City](http://cloudcity.io), [Digital Ocean](http://digitalocean.com/), [Bleacher Report](http://www.bleacherreport.com/), and [viewers like you](http://rubytogether.org/join).

## ruby together news

It was pretty quiet on the Ruby Together front&mdash;no new hires, but lots of ongoing work to make using Ruby easier and more reliable.

In July, Ruby Together was supported by 79 different companies, including Sapphire member [Stripe](https://stripe.com). On top of those companies, 1 new developer signed up a friend of Ruby Together, Josh Justice.

In total, we were supported by 109 individual members and 72 friends of Ruby Together last month. Thanks to all of our members for making everything that we do possible. &lt;3

## bundler news

A lot happened with Bundler in July! We released two bugfix versions of Bundler, version [1.15.2](https://github.com/bundler/bundler/blob/v1.15.3/CHANGELOG.md#1152-2017-07-17) and version [1.15.3](https://github.com/bundler/bundler/blob/v1.15.3/CHANGELOG.md#1153-2017-07-21).

In addition to industriously fixing bugs, the indomitable [@segiddins](https://github.com/segiddins) has been working full-time over the summer towards Bundler 2.0. We made significant progress: the test suite now runs (and passes!) with all 2.0 feature flags turned on, and it is possible to build and install a development version of Bundler 2. Our next steps will be wrapping up the expected changes, and then testing and smoothing the path to migrate from version 1.x to version 2.

Even though Bundler 2 will contain changes to default settings and command options, it's incredibly important to us that all existing projects continue to work without breaking, and that each individual application can choose to switch from Bundler 1 to Bundler 2 at a time that's best for them.

In addition to the work on 2.0, there were two new RFC proposals. RFCs are detailed writeups of potential changes, describing those changes in a way that can be evaluated and discussed before implementation work starts. The two new RFCs in July were:

  - [Add a `bundle deploy` command](https://github.com/bundler/rfcs/blob/aa-deploy-command/text/0000-bundle-deploy-command.md)
  - [Add a `bundle groups` command](https://github.com/bundler/rfcs/blob/49e08ccf04579a92c394e438074ca7e277d036f5/text/0000-bundle-groups.md)

If you're interested in the way that Bundler handles deploys or gem groups, we'd love to hear your feedback on the open proposals.

Finally, a special thanks to the new contributors to Bundler in the month of July:

  - [arbonap](https://github.com/arbonap)
  - [deivid-rodriguez](https://github.com/deivid-rodriguez)
  - [greysteil](https://github.com/greysteil)
  - [koic](https://github.com/koic)
  - [NickLaMuro](https://github.com/NickLaMuro)
  - [roberts1000](https://github.com/roberts1000)
  - [rubymorillo](https://github.com/rubymorillo)
  - [stefansedich](https://github.com/stefansedich)
  - [xxx](https://github.com/xxx)

In total, Bundler gained 160 new commits, contributed by 14 authors. There were 7,101 additions and 1,381 deletions across 805 files.

Thanks for your hard work, everyone!

## rubygems.org news

This month was quieter for RubyGems.org, but we did regular maintenance, installed security updates, and generally kept everything running. Most of the time that we spent this month was work on an in-progress SSL troubleshooting guide.

Next year, we'll be migrating RubyGems.org to require TLS v1.2 or newer, which is why we're focused on writing and shipping an excellent troubleshooting and upgrade guide before that happens. When the guide is finished, it will be a fantastic resource for anyone having trouble with HTTPS connections from Ruby.

Merged features included dependency updates, copy fixes, and a security fix of throttling requests to change or delete user profiles. Overall, Rubygems.org gained 23 new commits, contributed by 4 authors. There were 84 additions and 66 deletions across 20 files.

## rubygems news

RubyGems saw some small changes and documentation updates, but stayed pretty stable. We've started working with ruby-core team member [@hsbt](https://github.com/hsbt) on getting RubyGems and Bundler to be tested together as part of the Ruby build. Once that is done, it should be much harder for changes to Ruby to break anything inside RubyGems or Bundler, which will be a huge help.

This month, Rubygems gained 29 new commits, contributed by 7 authors. There were 348 additions and 102 deletions across 23 files.

## gemstash news

Gemstash didn't see any new features this month, but we did finally release [version 1.1.0](https://github.com/bundler/gemstash/blob/master/CHANGELOG.md#110-2017-07-31). Along with adding MySQL support, Gemstash now supports `gem install`, as well as [protected fetching](https://github.com/bundler/gemstash/blob/master/docs/gemstash-private-gems.7.md#protected-fetching) for hosting completely private gems that are only avaialble to authorized users.

## budget &amp; expenses

In July, we saw $43,114.34 in total income, and spent a total of $25,303.55.

* $9,109 for 60.7 hours worked on Bundler at $150/hour
* $8,396 for 56 hours worked on RubyGems.org at $150/hour
* $900 for 6 hours worked on RubyGems at $150/hour
* $3,000 for 20 hours worked on other OSS and devtools at $150/hour
* $76.11 on dedicated servers for RubyBench.org
* $639.20 on payment processing fees
* $2,339.50 on company overhead like hosting, services, software, hardware, taxes, etc
* $470 on accounting, copywriting, design, and other professional services
* $373.74 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
