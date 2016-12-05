---
summary: "This month 16 new members joined, André spoke at RubyConf about contributing to open source, and we paid for 129.5 hours of work on Bundler, RubyGems, and RubyGems.org."
---

<% title "November 2016 Monthly Update" %>

Welcome to the November 2016 Ruby Together monthly update! This month included maintenance work, security patches, helping users with problems, and @segiddins's heroic (but ultimately doomed) efforts to make Bundler respect `required_ruby_verison`. André travelled to Cincinnati, OH to give a talk about contributing to open source, and we paid for 129.5 hours of work on Bundler, RubyGems, and RubyGems.org.

We'll also be using this update to highlight our international contributors! They're mentioned in each relevant news section.

## ruby together news

This month we had 13 new members! Eight new developers joined, including Minku Lee, Wolfgang Rittner, Adrien Jarthon, Fritz Grabo, Frederic Gingras, Mischa Lewis-Norelle, and Justin Burris. We also had three signups for new Friends of Ruby Together. Thank you, everyone! <3

Five companies joined as members, including [Brakeman Pro], [Kundigo], [ChartMogul], [Rabid Technologies], and [Fretless].

[Brakeman Pro]: https://brakemanpro.com
[Kundigo]: http://kundigo.pro
[ChartMogul]: https://chartmogul.com
[Rabid Technologies]: https://www.rabid.co.nz
[Fretless]: http://www.getfretless.com

On November 13, André gave a talk at [RubyConf](http://rubyconf.org) called [From No OSS Experience to the Core Team in 15 Minutes per Day](http://confreaks.tv/videos/rubyconf2016-from-no-oss-experience-to-the-core-team-in-15-minutes-a-day). It discusses the benefits and costs of doing open source work and provides a straightforward list of activities that can be done by anyone, no matter their level of experience with programming. Watch [the video](http://confreaks.tv/videos/rubyconf2016-from-no-oss-experience-to-the-core-team-in-15-minutes-a-day), check out [the slides](http://speakerdeck.com/indirect/from-no-oss-experience-to-the-core-team-in-15-minutes-a-day), and/or read the talk as a blog post: [How to Contribute to OSS](http://andre.arko.net/2016/11/12/how-to-contribute-to-open-source/).

At RubyConf, we gave away almost 1,000 stickers! We also gave almost 50 [Ruby Together lapel pins](https://twitter.com/rubytogether/status/795694158472048640) to members. If you're wishing for some stickers or lapel pins of your own, you're in luck! At RubyConf, we also launched [the Ruby Together shop](https://shop.rubytogether.org)!

<h3 style="text-align: center">We have merch!</h3>
<img src="/images/shop-promo.jpg" style="width: 100%" alt="Ruby Together shop">

Fulfill your [sticker](https://shop.rubytogether.org/collections/stickers), [pin](https://shop.rubytogether.org/products/ruby-together-lapel-pin), or [shirt](https://shop.rubytogether.org/collections/shirts) dreams... we even have [Bundler packing tape](https://shop.rubytogether.org/products/bundler-packing-tape-preorder). 😂 Shirts and tape are on order and will ship soon, while stickers and pins ship immediately!

Last in Ruby Together news, this month we partnered with [@mrb_bk](https://twitter.com/mrb_bk)'s [Computer Modern](http://computermodern.io). We need more companies to join as members for Ruby Together to be sustainable in the long run, so it's exciting to have expert help. We'll be working with Computer Modern in the coming weeks and months to create resources for Ruby developers and Ruby Together members. 

We had two improvements with our meta tooling this month. how-is got another [release](https://github.com/how-is/how_is/blob/v11.0.0/CHANGELOG.md#1100), and will soon be used to actively [appraise the status](https://how-is.github.io/how-is-rubygems/2016/12/01/report.html) of our various large projects. We also created a [time-card](https://github.com/rubytogether/rubytogether-lita/blob/84f6bec5d2faabbcb914132cd2880b8e7bacf33e/lib/lita/handlers/time_card.rb) handler for the [lita](https://www.lita.io/) bot, soon to be available for use in a chat room near you!

## bundler news

This month bundler and [bundler.io](bundler.io) got an array of documentation fixes / updates, due in large part to our new bundler contributor [@colby-swandale](https://github.com/colby-swandale).

Bundler got a [Request For Comments](https://github.com/bundler/rfcs) repo, inspired by the one utilized by [Rust](https://www.rust-lang.org/en-US/). [Fixed](https://github.com/bundler/bundler/pull/5176) outdated not listing all outdated gems. And [fixed](https://github.com/bundler/bundler/pull/5213) an `ObjectBoundsExceededError` with [Rubinius](https://rubinius.com/).

In total, 11 authors pushed 59 commits last month. 61 files changed and there were 1,990 additions and 1,629 deletions.

## rubygems.org news

Excluding merges, 8 authors have pushed 39 commits to master and 40 commits to all branches. On master, 70 files have changed and there have been 1,135 additions and 360 deletions.

## rubygems news

This month in Rubygems, we [added](https://github.com/rubygems/rubygems/pull/1789) displaying the current Ruby version when a version requirement is not met. [Updated](https://github.com/rubygems/rubygems/pull/1779) the messaging when getting errors during cert building. And [fixed](https://github.com/rubygems/rubygems/pull/1767) a malformed version number error. Most of this work was done by [@bronzdoc](https://github.com/bronzdoc), one of our great RubyGems contributors.

In totaly, 6 authors pushed 12 commits. 14 files changed, and there were 164 additions and 85 deletions.

## gemstash news

Excluding merges, 3 authors have pushed 15 commits to master and 15 commits to all branches. On master, 22 files have changed and there have been 254 additions and 66 deletions.

## budget & expenses

From October 19 to November 18, Ruby Together took in $22,109. In total, we spent $27,353.26. Here's a breakdown of where the money went:

* $8,615 for 57.4 hours worked on Bundler at $150/hour
* $6,504 for 43.4 hours worked on RubyGems.org at $150/hour
* $4,313 for 28.8 hours worked on RubyGems at $150/hour
* $73.38 on dedicated servers for RubyBench.org
* $694.5 on payment processing fees
* $2,167.27 on company overhead like hosting, services, software, hardware, taxes, etc
* $2,117.39 on accounting, copywriting, design, and other professional services
* $2,869.75 on marketing, evangelism, conferences, and community outreach

## future plans

???

Until next time,<br>
André, Lynn and the Ruby Together team
