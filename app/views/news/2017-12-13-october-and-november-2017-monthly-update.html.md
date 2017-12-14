---
summary: In October and November, we paid for 204 hours of developer work, 
---

Hello! Welcome to a super-sized double monthly update for the months of October and November. During that time, our work was supported by [reinteractive](https://reinteractive.com/), [Stripe](http://stripe.com), [Bleacher Report](http://www.bleacherreport.com), [thoughtbot](https://thoughtbot.com), and many others.

## ruby together news

In October and November, Ruby Together was supported by 76 different companies, including Ruby member [reinteractive](https://reinteractive.com) and Sapphire member [Stripe](https://stripe.com). On top of those companies, 4 new developers signed. In total, we were supported by 96 individual members and 68 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

This semester, Ruby Together developer [Samuel Giddins](https://twitter.com/segiddins) finished his studies and graduated from college! 🎉 He'll be moving from Chicago to San Francisco, and continuing to work on both Bundler and RubyGems. Go tweet some congratulations at him. 

At RubyConf 2017, André gave a completely new talk about the history of Bundler, called A History of Bundles: 2010 to 2017. You can [watch the video from the conference](https://www.youtube.com/watch?v=BXFYjO8qDxk), [check out the slide deck](https://speakerdeck.com/indirect/a-history-of-bundles-2010-to-2017), or [read the blog post version of the talk](http://andre.arko.net/2017/11/16/a-history-of-bundles/). 

Finally, some board member news: founding board members Terence Lee and Sarah Mei have stepped down. We're incredibly greatful to have had their help and support for almost three years. <3

As usual, the board will appoint successors to each vacant seat, to fill them until the next regularly scheduled board election. So far, the board has appointed one new director: [Valerie Woolard Srinivasan](https://twitter.com/valeriecodes). We're very happy to have her help, and looking forward to working with her.

## bundler news

As far as Bundler goes, we were able to release the official [version 1.16.0](http://bundler.io/blog/2017/10/31/bundler-1-16.html), containing more than 20 bugfixes and some big improvements to the speed of the `install` command. It is now extremely fast to run `install` when nothing needs to be done. In addition, [Gray Baker](https://github.com/greysteil) of [Dependabot](https://dependabot.com) helped us ship some nice resolver improvements, pulling off the extremely rare victory of making the resolver more correct and faster at the same time.

Since the release of 1.16 at the end of October, we've fixed several new bugs that have cropped up, and we expect to release version 1.16.1 sometime this week. We also expect to ship 1.16.1 in the Ruby 2.5 rc1 release shortly.

Overall, Bundler gained 215 new commits, contributed by 30 authors. There were 2,249 additions and 1,151 deletions across 113 files.

## rubygems.org news

RubyGems.org saw a small amount of work, including some security, develpoment, and production fixes, as well as the usual ongoing security updates for the servers.

Rubygems.org gained 7 new commits, contributed by 6 authors. There were 29 additions and 0 deletions across 6 files.

## rubygems news

In October and November, we released RubyGems version 2.6.14, 2.7.0, 2.7.1, 2.7.2, and 2.7.3. Those versions included some fixes backported from ruby-trunk, work to improve compatibility with Ruby 2.5, and upgrades for the version of Bundler included inside RubyGems, as well as a smattering of other bugfixes.

On the topic of developing RubyGems, our very own [@duckinator](https://twitter.com/duckinator) shipped [rgdev](https://github.com/duckinator/rgdev#readme), a complete Docker-based environment for developing RubyGems. With setting up a development environment made easier, we will hopefully see more contributors over time. See Twitter for [the tl;dr on how to use it](https://twitter.com/duckinator/status/934089692601028608).

Rubygems gained 114 new commits, contributed by 17 authors. There were 623 additions and 92 deletions across 35 files.

## gemstash news

Gemstash didn't see any commits land during October or November. That said, if you're interested in contributing to an open source project, the [Gemstash issues list](https://github.com/bundler/gemstash/issues) has some promising-looking tickets. There's definitely some openings for work on docs, the RubyGems.org mirror functionality, or the private gem hosting side of things.

## ruby toolbox news

Hey everyone,

since the last update I got started putting the Toolbox back together - I built [tooling for exporting the flat-file based catalog to a JSON structure](https://github.com/rubytoolbox/catalog/pull/6) that the [backend app will be able to consume](https://github.com/rubytoolbox/rubytoolbox/pull/15). This will be wired to a webhook so merged catalog PRs will immediately show up on  the site.

Further, I got the actual, [new rails app started](https://github.com/rubytoolbox/rubytoolbox/pull/10), which involved getting CI running on Travis and [setting up deployment and continuous delivery to Heroku](https://github.com/rubytoolbox/rubytoolbox/pull/17), who will be sponsoring hosting for the Toolbox - thanks a lot Heroku! I added [basic category overview and detail UI](https://github.com/rubytoolbox/rubytoolbox/pull/16), also [making it a bit prettier along the way](https://github.com/rubytoolbox/rubytoolbox/pull/20).

The last missing piece needed to get the site back live is fetching the most basic stats and scoring for categorized projects from Rubygems and Github. I expect this to be done in early december. Until then, you can always see the current state of development at [beta.ruby-toolbox.com](https://beta.ruby-toolbox.com).

Once the site is back live with the bare minimum set of features, the next things to bring back will be:

* Getting all rubygems back to the site (not only the categorized ones)
* Search
* Adding more metrics to bring them on par with the old site

Please feel warmly invited to join [github.com/rubytoolbox/rubytoolbox](https://github.com/rubytoolbox/rubytoolbox) and see you next month!

— [Christoph](https://twitter.com/thedeadserious)

## budget &amp; expenses

In October, we paid for 61 hours of developer time, saw $21,545.0 total income and spent a total of
$12,234.08.

* $4,260 for 28.4 hours worked on Bundler at $150/hour
* $2,529 for 16.9 hours worked on RubyGems.org at $150/hour
* $353 for 2.4 hours worked on RubyGems at $150/hour
* $1,946 for 13.0 hours worked on other OSS and devtools at $150/hour
* $78.17 on dedicated servers for RubyBench.org
* $700.91 on payment processing fees
* $1,465.24 on company overhead like hosting, services, software, hardware, taxes, etc
* $225.0 on accounting, copywriting, design, and other professional services
* $677.26 on marketing, evangelism, and community outreach

In November, we paid for 143.2 hours of developer time, saw $25,145.47 in total income, and spent a total of $25,995.27.

* $14,163 for 94.4 hours worked on Bundler at $150/hour
* $4,670 for 31.1 hours worked on RubyGems.org at $150/hour
* $915 for 6.1 hours worked on RubyGems at $150/hour
* $1,740 for 11.6 hours worked on other OSS and devtools at $150/hour
* $80.37 on dedicated servers for RubyBench.org
* $812.12 on payment processing fees
* $1,976.62 on company overhead like hosting, services, software, hardware, taxes, etc
* $375.0 on accounting, copywriting, design, and other professional services
* $1,263.66 on marketing, evangelism, and community outreach

Keep an eye out for Ruby 2.5, which is currently scheduled to be released on Christmas Day! It will include the latest versions of RubyGems and Bundler right out of the box, with no installation needed, thanks to [@hsbt](https://twitter.com/hsbt).

Until next time,<br>
André and the Ruby Together team
