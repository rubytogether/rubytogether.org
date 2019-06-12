---
summary: In May, we paid for 129 hours of development work, launched new Ruby Together membership levels, and combined the Bundler and RubyGems teams.
---

Hello! Welcome to the monthly update. During May, our work was supported by Ruby member [Handshake](https://handshake.org), and Sapphire members [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), and [Triplebyte](https://triplebyte.com/os/rubytogether), as well as many others. 1 company and 1 developer signed up as new members during the month. In total, we were supported by 59 companies and 119 developers. Thanks to all of our members for making everything that we do possible. &lt;3

## ruby together news

It's been a busy month! We launched the new [Ruby Me handbook](https://rubyme.org/handbook), and the second group of apprentices and mentors began their work. This session, there are 5 apprentices and 5 mentors. They’re working on a wide variety of Ruby open source projects, and some are even already seeing PRs merged. We’re super excited to introduce more developers to open source.

Speaking of introducing developers to open source, we are also administrating the Google Summer of Code organization for Ruby again this year. Out of dozens of applications, we were able to accept six students to work on their proposed projects over the summer. You can [read more about those projects on the Summer of Code website](https://summerofcode.withgoogle.com/organizations/5542255322988544/).

Finally, but importantly for Ruby Together members, we launched new membership tiers! When we first started, there was just one level for developers and one level for companies. Over time, things got overly complicated: some monthly contributions didn’t make you a member, and companies had a dizzying array of 9 levels to choose from.

We’ve drastically simplified and improved things: there are now 3 levels for developers ($10, $50, and $100), and 3 levels for companies ($500, $2000, $5000). Not only is that way easier to understand, it means everyone who contributes is now a member! All existing members have been migrated to one of the new levels, but will continue to pay the old price for as long as they keep their membership active.

This is just the first step of our work to provide more benefits for members, so keep an eye on future updates for more. 🙂

## bundler news

Bundler saw some great maintenance and testing improvements, including fixes for running the tests on Azure pipelines (which will mean running the Bundler tests on Windows!), as well as test order randomization to ensure no tests depend on other tests running before them. We also fixed a surprising bug where Bundler 2.0 did not actually change git sources from http to https, despite the docs and warning messages. 😬

The most exciting thing we did this month, by far, is [moving forward with the Bundler and RubyGems merger](https://github.com/rubygems/rfcs/blob/master/text/0003-merge-with-rubygems.md#merge-bundler-and-rubygems)! As discussed and agreed on by the Bundler and RubyGems teams, the “maintainer” teams for both repos have been combined into one. Then, we reviewed all the repos in the Bundler GitHub organization, and archived all repos that are not currently being used.

Next, the repos `gemstash`, `rfcs`, `gemx`, `cacache-rb`, `bundler-slackin`, and `ruby-ssl-check` were all moved from the Bundler org to the RubyGems org. Assuming nothing explodes, we will shortly move the four remaining repos:  `bundler-changelog`, `bundler-site`, `bundler.github.io`, and of course `bundler` itself.

This month, Bundler gained 66 new commits, contributed by 7 authors. There were 421 additions and 493 deletions across 69 files (nice).

## rubygems.org news

RubyGems.org saw general maintenance and dependency updates. The codebase also continued to settle in on Rails 5.2, enabling the new defaults that come with that version of Rails. Webhooks also saw some fixes, both only being sent on successful pushes, and starting to be sent again on yanks.

Overall, RubyGems.org gained 39 new commits, contributed by 7 authors. There were 117 additions and 136 deletions across 37 files.

## rubygems news

RubyGems mostly got fixes this month, including for untarring files with large UID/GID values, as well as a bunch of test improvements and fixes. In total, Rubygems gained 46 new commits, contributed by 10 authors. There were 904 additions and 538 deletions across 29 files.

## gemstash news

Gemstash got some documentation updates, as well as dependency updates, but the biggest change was moving the repo to `rubygems/gemstash` as part of the Bundler/RubyGems merge. Hooray!

This month, Gemstash gained 13 new commits, contributed by 4 authors. There were 40 additions and 24 deletions across 11 files.

## bridgetroll news

This quarter, Ruby Together is [funding a project](https://rubytogether.org/projects) to maintain and improve [BridgeTroll](https://www.bridgetroll.org). Here's the introduction to her project, and we'll post her updates to the [Ruby Together blog](https://rubytogether.org/news).

> Founded in 2008, RailsBridge started offering free workshops aimed at introducing women to Ruby on Rails in a judgment-free environment. Since then, many more “Bridges” have been created with the same mission statement and the Bridge Foundry mother organization was created to manage the financial and organizational objectives for the mostly volunteer organization.
>
> Bridge Troll is part of Bridge Foundry’s core infrastructure, supporting independent community initiatives all over the world with the great potential to increase impact. Bridge Troll is the online engine to ensure that we manage the inflow of students, give a framework to prospective organizers looking to run events, as well as track how many students are benefitting from these workshops. This software helps us apply for further grant funding to ensure that we can continue to run workshops for many years to come. We also want to use this tool as a way to create processes where people can level-up through active open source work with opportunities for a kind and respectful mentorship.
>
> Over the next 3 months, Rachel Ober will be facilitating work to streamline and develop processes to remove roadblocks from Bridge Troll’s backlog and issues database. The main goal during these 3 months is to come up with a process in order to facilitate future collaboration and contributions to the Bridge Troll project and make it clear what our most important goals are.
>
> Rachel will be making monthly updates via the [Ruby Together newsletter](https://rubytogether.org/news) and the [Bridge Foundry blog](https://bridgefoundry.org/blog). If you’re interested in more granular updates on choices and decisions during the project, you can subscribe to her newsletter at [developer.recipes](https://www.developer.recipes/).

## budget &amp; expenses

In May, we saw $12,572 in total income, and spent a total of $43,041.34, while funding 129 hours of development work.

* $10,030 for 66.9 hours worked on Bundler at $150/hour
* $1,800 for 12.0 hours worked on RubyGems.org at $150/hour
* $4,891.88 for 32.6 hours worked on RubyGems at $150/hour
* $2,628.12 for 17.5 hours worked on other OSS and devtools at $150/hour
* $76.53 on dedicated servers for RubyBench.org
* $423.95 on payment processing fees
* $14,415.39 on company overhead like payroll, services, software, hardware, taxes, etc
* $1,601.69 on accounting, copywriting, design, and other professional services
* $7,173.78 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
