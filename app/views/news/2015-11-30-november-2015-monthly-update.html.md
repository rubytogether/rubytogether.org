---
summary: "In November, we went to RubyConf, hired @cczona, gave away 250 shirts, paid for 40 hours of developer work on Bundler and RubyGems.org. We also had 8 new developers and 9 new companies join as members!"
---
<% title "November 2015 monthly update" %>

Hello, and welcome to the Ruby Together update for the month of November! This was an extremely eventful month: we paid for 40 hours of development work on Bundler and RubyGems.org, and we were joined by a record 17 (!) new members. We also added a new Ruby Together team member, spoke at RubyConf 2015 in San Antonio, Texas, and lots more.

Keep reading to hear about everything we managed to do this month, and if you're not a member yet, [sign up today!][join] to help us get even more done. 

[join]: https://rubytogether.org/#join

### Ruby Together news

This month, the biggest news is that we have a new Ruby Together team member! [Carina Zona][cczona], noted developer evangelist and public speaker, will be helping us spread the word about Ruby Together.

Carina gave the opening keynote at RubyConf 2015, and helmed the Ruby Together exhibitor table. André also spoke at RubyConf, and occasionally manned the table as well. At our RubyConf table, we distributed shirts, stickers, and information to anyone who was interested.

[cczona]: https://twitter.com/cczona

The Ruby Together shirts were extremely popular, with all 250 gone in less than an hour! They were so popular, in fact, that we're going to be launching a new site where everyone can get their hands on one in a design and size that makes them happy.

There were eight new developers who joined us since last update, including Leo Liang, Abdullah Esmail, and Kazuho Yamaguchi, Ryan Bigg, Ravil Bayramgalin, Teng Siong Ong, Jason Charnes, and Nikki Murray.

Nine new companies signed up, including [CodeMiner 42](http://www.codeminer42.com/), [GitLab](https://about.gitlab.com/), [AppFolio](http://www.appfolioinc.com/), [Kindly Ops](https://www.kindlyops.com/), [Binary Noggin](http://binarynoggin.com/), and [Appcanary](https://appcanary.com/). CodeMiner 42 deserves a special shout-out for being the second company ever at the Sapphire level, along with Stripe.

Thank you to everyone who signed up! With the new memberships, our projected monthly income has now reached $16,550 per month.

<div class="clear"><img alt="$16,550 per month means 2-3 devs at 5 hours per week" src="https://rubytogether.org/email/2015-11-30-november-2015-monthly-update/roadmap-status.png" width="520"></div>

### Bundler news

This was a great month for Bundler, as well. A prerelease of version 1.11 has been pushed to RubyGems.org, and anyone can use it with `gem install bundler --pre`. In a week or so, once we've seen it working in the wild, we'll update the website at [bundler.io](http://bundler.io) and announce the changes with a full blog post there. In the meantime, here's a brief summary of what's new:

  - Dramatically improved messages on permission errors
  - Resolver conflict messages now show the conflicting version numbers
  - Git repos using HTTP can have credentials set via `bundle config`
  - Update gems without installing them using `bundle lock --update`

This release also lays the groundwork for version 1.12, which will include the (nearly complete!) new index changes, and is on its way to you as fast as is humanly possible.

The Bundler team also released [Gemstash][gemstash] a completely new project that's been in the works for a while. Gemstash is mainly the work of [@smellsblue][smellsblue], [@pcarranza][pcarranza], and [@indirect][indirect].

[gemstash]: https://github.com/bundler/gemstash
[pcarranza]: https://github.com/pcarranza
[smellsblue]: https://github.com/smellsblue
[indirect]: https://github.com/indirect

Gemstash can act as a gem caching server, storing copies of the gems you need from RubyGems.org. This can be particularly useful if you have an office full of pairing machines, a data center full of app servers, or any other time when you need to install the same gems onto many machines. By running Gemstash locally, you can download that gem from far-off RubyGems.org just once, and then install it from Gemstash after that. Much faster.

The other big thing Gemstash offers is private gem hosting. If your company has been using private git repos in order to avoid an internal gem server, or if you have an internal gem server that never seems to work correctly, start using Gemstash! Git gems require copying the entire history of every gem, which includes a lot of data that is never used, so releasing private gems can speed things up.

### RubyGems news

The Bundler news was really long, so I'll try to keep the RubyGems.org news brief: we applied security updates, merged pull requests, upgraded gems, migrated to a new version of Chef, worked on the Fastly migration, handled an (accidental-looking) DoS attack, and generally kept everything running smoothly. If progress with the Fastly transition continues at this rate, we should be completely moved over within the next two or three months.

Eagle eyes may have noticed that this section used to be called "RubyGems.org news", but is now called "RubyGems news". That's because Ruby Together is also going to be able fund work on the `gem` command and the RubyGems client! Exactly as we've hoped since the beginning, more members means we have the budget for more developer time. The RubyGems library ships inside Ruby itself, and is used extensively by Bundler, and could really use some maintenance. Check back here next month for an update on our progress finding someone to tackle RubyGems.

## Budget & Expenses

From September 19 to October 18, Ruby Together took in $16,315. In total, we spent $15,830. Here's a breakdown of where that money went:

  - $3,000 for 20 hours of developer time on Bundler at $150/hour
  - $3,000 for 20 hours of developer time on RubyGems.org at $150/hour
  - $73.56 in dedicated servers for RubyBench.org
  - $499.09 on payment processing fees
  - $877.69 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $400 on accounting, copywriting, design, and other professional services
  - $4,735.43 on community outreach including stickers, conferences, etc.

As you may have noticed, we've started spending a bit more on community outreach. It seems to be working! The Ruby community has been very encouraging and enthusiastic, and so we're going to keep doing everything we can to let everyone know that we exist.

In the upcoming month, both André and Carina will be working on outreach and evangelism projects. If we can find the right developers, we'll also start paying for work on the RubyGems client library and gem command, following our roadmap.

Thanks for the support, everyone!<br>
We couldn't do it without you. <3

Until next time,<br>
André and the Ruby Together team
