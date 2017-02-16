---
summary: "In December, we paid for 77.8 hours of developer work, hired an Empress of Documentation, and shipped the Bundler 1.14 prerelease."
---

<% title "December 2016 Monthly Update" %>

Happy new year, everyone, and welcome to the (only _slightly_ delayed by the holidays 😂) Ruby Together monthly update for December! During the month of December, our work was supported by [Stripe](http://stripe.com/), [CodeMiner42](http://www.codeminer42.com/), [Basecamp](https://basecamp.com/), [Airbnb](http://airbnb.com), [Gitlab](http://gitlab.com), and many, many others.

## ruby together news

To start things off, December was our biggest month ever since Ruby Together began. We were supported by over 100 individual developers, 60 small companies, and a dozen large companies like [Stripe](http://stripe.com/), [CodeMiner42](http://www.codeminer42.com/), [Basecamp](https://basecamp.com/), [Airbnb](http://airbnb.com), and [Gitlab](http://gitlab.com).

This month was also a great month for new members. Six new developers signed up to support our work as Friends of Ruby Together. On top of that, ten more developers joined as members, including Nishant Modak, Thom May, Jack Bracewell, George Millo, Karlotcha Hoa, Stanislav Katkov, Chris Holmes. In addition, five completely new companies added their support: [Chef](https://www.chef.io/), [Unboxed](http://www.unboxed.co/), [Carbon Five](http://carbonfive.com/), [Teezily](https://teezily.com/), and [Intellum](http://www.intellum.com/).

Thanks to all of our members for making everything that we do possible. &lt;3

In exciting news for the upcoming year, our team gained an Empress of Documentation: [Liz Abinante](https://twitter.com/feministy). We're super excited to have a mastermind behind making Bundler and RubyGems more understandable and accessible for new users.

On the board of directors, we saw [Ines Sombra](http://twitter.com/randommood) step down from her position. Ines has been a fantastic and incredibly helpful board member, and we’re super grateful to have had her input. Thanks for everything, Ines. &lt;3

The remaining members of the board nominated [Camille Baldock](https://twitter.com/camille_) to fill the newly empty seat, and she graciously accepted. Camille participated in this year’s board election, coming in just one or two votes behind the other candidates. We’re incredibly glad to have another chance to work with Camille, and are looking forward to getting even more done in 2017.

## bundler news

December was a good month for Bundler. We released one bugfix release, `1.13.7`, and we released a preview of the next version of Bundler, version `1.14.0.pre.1`. 13 contributors created 99 commits, and changed 63 files with 783 additions and 193 deletions.

Bundler 1.14 includes a huge number of bugfixes and small additional features, mostly focused on improving how well existing commands work. Support for different operating systems and platforms is improved, Ruby 2.5 (compiled from source control) is supported, and a notable error caused by an invalid lock file is now handled automatically. For a full list of improvements, [check out the changelog](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1140pre1-2016-12-29).

## rubygems.org news

The RubyGems.org service was given the usual security updates this month, and saw a couple of useful fixes. Changing email addresses now requires confirmation before activation, so users can’t lock themselves out with a typo. 9 contributors created 47 commits, changing 59 files with 565 additions and 202 deletions.

## rubygems news

RubyGems continued to gain ground on the backlog of bugs and issues. The most notable changes were speed improvements for `require 'rubygems'`, and a fix for hash collisions when comparing objects. 4 contributors created 16 commits, changing 11 files with 88 additions and 48 deletions.

## gemstash news

Gemstash wasn’t super busy, but still gained some features: it is now possible to set arbitrary Sequel connection options, and the connection pool now defaults to the same size as the number of running Puma threads. In total, 2 contributors made 8 commits, changing 7 files with 41 additions and 6 deletions.

## budget & expenses

From November 20 to December 19, Ruby Together took in $22,620. In total, we spent $23,552.35. Here's a breakdown of where the money went:

* $3,600 for 24 hours worked on Bundler at $150/hour
* $3,000 for 20 hours worked on RubyGems.org at $150/hour
* $2,850 for 19 hours worked on RubyGems at $150/hour
* $2,250 for 15 hours worked on other OSS and dev tools at $150/hour
* $71.65 on dedicated servers for RubyBench.org
* $709.74 on payment processing fees
* $1,868.6 on company overhead like hosting, services, software, hardware, taxes, etc
* $5,250.0 on accounting, copywriting, design, and other professional services
* $3,989.86 on marketing, evangelism, and community outreach

As always, if you'd like to spread the word about Ruby Together or just wear some great-looking shirts, check out the [Ruby Together shop](https://shop.rubytogether.org). It's also the only worldwide source for Bundler packing tape! 😎

Keep an eye out for our much more timely January update, coming in about a week!

Until next time,<br>
André, Lynn, and the Ruby Together team
