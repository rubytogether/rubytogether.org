---
summary: In November, we paid for 107 hours of developer work, announced Bundler 2.0, merged 2FA for RubyGems, and shipped important security updates to RubyGems.org.
---

Hello! Welcome to the monthly update—and the last update we’re publishing in 2018. During November, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [Triplebyte](https://triplebyte.com/os/rubytogether), [GitLab](https://about.gitlab.com/), and many others.

## ruby together news

The Ruby Together team flew out to Los Angeles for [RubyConf 2018](https://rubyconf.org/), where we sponsored #RubyKaraoke (along with Engine Yard). At the conference, André, Adarsh, Jonan, and Valerie recorded a [special-edition Ruby Together episode](https://www.greaterthancode.com/2018/12/03/special-edition-ruby-together-live-from-rubyconf-2018/) of [Greater Than Code](https://www.greaterthancode.com/). The panel discussion covers restructuring the board, the launch of RubyMe, and our upcoming project funding applications. Give it a listen if you want to learn more!

In November, Ruby Together was supported by 67 different companies, including Ruby member [Handshake](https://handshake.org), and Sapphire member [Stripe](https://stripe.com). In total, we were supported by 76 individual members and 64 friends of Ruby Together. Thanks to all of our members for making everything that we do possible.

## bundler news

This month, we [announced the upcoming Bundler 2.0 release](https://bundler.io/blog/2018/11/04/an-update-on-bundler-2.html) and shipped a few prerelease versions. As mentioned in the blog post, Bundler 2 will drop support for Ruby versions that are no longer supported by the Ruby core team.

If you’re feeling adventurous, you can even try the Bundler 2 prerelease by running `gem install bundler --pre`. (You can even use the Bundler 2 prerelease on Heroku, with the [Bundler 2 buildpack](https://github.com/bundler/heroku-buildpack-bundler2)!).

For the less adventurous, we’re writing documentation furiously, and we will post a full Bundler 2 upgrade guide along with the final 2.0.0 release. 

This month, Bundler gained 44 new commits, contributed by 10 authors. There were 331 additions and 150 deletions across 51 files.

## rubygems.org news

In November, we updated 19 dependencies on RubyGems.org including security updates to rack and activejob. Thanks to a report that came in from HackerOne, we fixed a bug that would allow an attacker to guess an `api_key` by sending all of their guesses as an array along with the request. We also fixed some other issues reported through HackerOne, including rate limits on forgotten password requests, and profile pages being viewable after logout using the browser back button. We also removed the only use of IFrames (GitHub stars), and updated our CSP. Finally, we now have better Dutch translations thanks to [@sharkwouter](https://github.com/sharkwouter), a first time contributor to RubyGems.org.

This month, RubyGems.org gained 37 commits from 6 authors, making changes to 60 files with 1,796 insertions and 1,038 deletions.

## rubygems news


RubyGems saw a lot of cleanup and bugfixes this month. We also merged [@ecnelises](https://github.com/ecnelises)’s Google Summer of Code Project, which adds support for two-factor authentication to RubyGems.org. 2FA is a huge boost to account security, and once we have everything released and working, we’ll encourage everyone to turn it on. In total, RubyGems gained 125 new commits, contributed by 12 authors. There were 1,532 additions and 1,500 deletions across 268 files.

## gemstash news

In November, Gemstash version 2.0.0 shipped! It contained updated dependencies, bugfixes, and sets the stage for adding support for the new compact index format, which is our next goal. Overall, Gemstash gained 22 new commits, contributed by 2 authors. There were 450 additions and 130 deletions across 106 files.

## ruby toolbox news 

Hey everyone,

In November, I ran a community survey in preparation for working on the Ruby Toolbox full time for the months of December and January. 

The [results of the survey are now published](https://www.ruby-toolbox.com/blog/2018-12-04/survey-results) and with the community’s opinion in mind I will work on corresponding improvements to the Toolbox in the next few weeks. I have also set up [a Ruby Toolbox community chat room on Gitter](https://gitter.im/rubytoolbox/Lobby). I’ll be reliably available for chat in December and January so please stop by and say hi!

As always, your feedback is very welcome. If you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to the PR contributors of November: SeyZ, geraldb, mreinsch, santhanakarthikeyan, and szTheory

Best,
Christoph


## budget &amp; expenses

In November, we saw $13,965 in total income, and spent a total of $24,409.55.

* $4,156.25 for 27.7 hours worked on Bundler at $150/hour
* $4,125 for 27.5 hours worked on RubyGems.org at $150/hour
* $5,210.62 for 34.7 hours worked on RubyGems at $150/hour
* $2,680.62 for 17.9 hours worked on other OSS and devtools at $150/hour
* $76.90 on dedicated servers for RubyBench.org
* $470.31 on payment processing fees
* $2,270.82 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,682.50 on accounting, copywriting, design, and other professional services
* $3,736.52 on marketing, evangelism, and community outreach

Until 2019,<br>
Stephanie, André and the Ruby Together team
