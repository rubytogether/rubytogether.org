---
summary: "This month, Ruby Together paid for 40 hours of developer time, shipped t-shirts from our Teespring campaign, released Bundler 1.11, hired developers to work on the RubyGems library, and gained 6 new members."
---
<% title "December 2015 monthly update" %>

Happy new year, everyone! Just in time to wrap up 2015, this is the monthly update for December 2015. In the last month, we paid for 40 hours of work on Bundler and RubyGems.org, 2 developers joined, and 4 companies joined. The end of the year is always a quiet time, but we were still able to make some great progress.

## Ruby Together news

The biggest news is that we've started to pay for work on [RubyGems](https://github.com/rubygems/rubygems)! The `gem` command and associated libraries, which ship as part of Ruby itself, will get some love from [Jeremy Hinegardner](https://github.com/copiousfreetime/) and [Kurtis Rainbolt-Greene](https://github.com/krainboltgreene). Hooray! 🎉

We were also joined by two new developer members, including Brian Buchalter, and 4 new companies, including [Appcanary](https://appcanary.com) and [bitcrowd](http://bitcrowd.net). With these new members, our total monthly income is now projected to be $16,620 per month. As this amount increases, we plan to increase developer hours spent on Bundler, RubyGems and RubyGems.org, moving from 15 hours per week towards full-time work on Ruby infrastructure. If you're not a member yet, help us reach that goal by [joining today](https://rubytogether.org/join).

## Bundler news

The last month was very productive for Bundler. We released [Bundler 1.11](http://bundler.io/blog/2015/12/12/version-1-11-released.html). The biggest new features are the error messages: our goal is to never show an exception and backtrace while running the `bundle` command, and instead print a message that explains what the problem is and suggests solutions if any are available. This release was a huge step in that direction. We now catch many, many errors that were previously uncaught, especially ones around filesystem permissions and access problems.

The other big error message improvement was in the resolver. When your Gemfile contains gems that can't all be installed together, the error message will now show every gem's current version, the version you asked for, and the versions that ultimately conflicted. It doesn't happen a lot, but when it does, the new messages make it much, much easier to resolve the problem.

The third big feature of 1.11 wasn't actually a feature: we fixed bugs. Lots of bugs. We fixed over 50 bugs, making this version of Bundler the most stable one we have ever released. To start using Bundler 1.11 today, just run `gem install bundler`, and you're good to go! All told, in the last months 9 different authors pushed 199 new commits, working on Bundler version 1.11 and upcoming versions 1.12 and 2.0.

Next month, we'll be working hard on Bundler 1.12, with support for [new RubyGems index format](http://andre.arko.net/2014/03/28/the-new-rubygems-index-format/)! It's really exciting to see more than two years of work finally paying off with increased speed and reliability.

## RubyGems.org news

In the last month, 10 authors pushed 54 commits to the RubyGems.org and RubyGems infrastructure repositories. We improved search, added a new API endpoint with information about single versions of gems, improved the copywriting on the site itself, and dramatically improved the Spanish translation.

We also settled on the final plan for processing download counts with Fastly, and started working on the implementation. Once that stats system is set up, we'll be ready to switch the entire RubyGems.org site over to be served by Fastly.

## Budget & Expenses

From November 19 to December 18, including Airbnb paying up front for an entire year, Ruby Together took in $28,775. In total, we spent $12,366.34. Here's a breakdown of where the money went:

  - $3,000 for 20 hours of developer time on Bundler at $150/hour
  - $3,000 for 20 hours of developer time on RubyGems.org at $150/hour
  - $71.34 on dedicated servers for RubyBench.org
  - $506.90 on payment processing fees
  - $1,399.68 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $1,077.50 on accounting, copywriting, design, and other professional services
  - $3,310.92 on community outreach including stickers, conferences, etc.

We made great progress on Bundler and RubyGems.org this month. Check back next month to hear about Bundler 1.12, the RubyGems.org Fastly migration, and the results of Ruby Together starting to pay for work on RubyGems and the `gem` command!

Until next time,<br>
André and the Ruby Together team