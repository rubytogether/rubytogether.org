---
summary: In March, we paid for 147 hours of developer work, Coinbase became a high-profile member, we printed new Bundler shirts, and fixed many bugs.
---

Hello! Welcome to the monthly update. During March, our work was supported by [Coinbase](https://coinbase.com), [Cloud City Development](http://www.cloudcity.io), [DigitalOcean](http://www.digitalocean.com) and many others.

This month we were able to pay for 147 hours of developer work on Ruby open source. Thank you to all of the companies and individual developers that continue to support our work.

## ruby together news

In March, Ruby Together was supported by 75 different companies. In addition, 2 developers signed up to be members of Ruby Together. We were supported by a total of 90 individual members and 68 friends of Ruby Together.

In very exciting news, the folks at [Coinbase](https://www.coinbase.com/) contributed $12,750 to Ruby Together as part of their [ongoing open source funding efforts](https://engineering.coinbase.com/coinbase-open-source-fund-ruby-edition-101c04085be0). They will also be contributing an additional $2,000 per month for the next five months. Thank you! 🎉

And great news for your closet—we've got [new Bundler T-shirts in the Ruby Together shop](https://shop.rubytogether.org/products/bundler-t-shirt)! Shirts are available in a variety of sizes as well as in both fitted and unfitted styles.

## bundler news

Bundler saw a variety of bug fixes in March thanks to our contributors, including [@alyssais](https://github.com/alyssais), [@koic](https://github.com/koic), [@MSP-Greg](https://github.com/MSP-Greg), [@nesaulov](https://github.com/nesaulov), [@kunruh9](https://github.com/kunruh9), [@shime](https://github.com/shime), and [@greysteil](https://github.com/greysteil). Fixes included [documenting the order Bundler loads config settings](https://github.com/bundler/bundler/pull/6464) as well as fixing some [rescue calls that hadn’t specified error type](https://github.com/bundler/bundler/pull/6310). Additionally, we published a [Bundler Policies](https://github.com/bundler/bundler/blob/2053d65c974f55fc15196b3ad82d7749750b2a3e/doc/POLICIES.md) doc to supplement Bundler’s existing Code of Conduct.

Coming up next, we expect to ship bug fixes, push out a small feature release, and begin public testing on Bundler 2.0. In total, Bundler gained 60 new commits, contributed by 13 authors. There were 353 additions and 97 deletions across 47 files.

## rubygems.org news

This month, RubyGems.org saw ongoing system updates, security patches, and general maintenance. Thank you [@dwradcliffe](https://github.com/dwradcliffe) for all your hard work!

## rubygems news

RubyGems saw another 25 pull requests merged in March. We [started implementing the plan for RubyGems 3](https://github.com/rubygems/rubygems/pull/2182), [improved a common and annoying warning](https://github.com/rubygems/rubygems/pull/2242), and fixed many, many bugs.

In March, RubyGems gained 73 new commits, contributed by 8 authors. There were 860 additions and 1,092 deletions across 66 files.

## ruby toolbox news

Hey everyone!

Last month, my main focus was converting the GitHub stats by syncing to their [GraphQL API](https://developer.github.com/v4/), which enabled the addition of a whole bunch of new project metrics while keeping the API rate limit consumption the same. I [launched them](https://twitter.com/TheDeadSerious/status/979097768177422337) at the end of March and you can see an example [here](https://www.ruby-toolbox.com/projects/hanami)—for instance, you can now see issue and pull request closure rates and recent commit activity.

Since I bumped into some minor issues that needed extra work while converting to the new API, I didn't get much time to spend on the other topic I mentioned in the last update: esier understandability on what the project metrics mean in the greater context of the Ruby ecosystem. Broadly speaking, I'd like to make some clear visual indicators in what range any given metric stands in relation to the Ruby ecosystem to make it easier to "grok" at a glance the healthiness of a project. For example, for gem downloads you could see that a given project is in the 10% most-often-downloaded gems, but for example issue closure rate, release activity and many more can become much more interesting when given this kind of context.

This will be my main focus in April, and I hope to have something to show to you in this regard next month. :)

As always, your feedback is very welcome. If you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to everyone who contributed pull requests in March: BurdetteLamar, apa512, boazsegev, cvoltz, franklinyu, funk-yourself, konung, nesaulov, pmackay, and skatkov.

Best,<br>
Christoph

## budget &amp; expenses

In March, we saw $29,620 in total income, and spent a total of $35,308.59.

* $5,188.75 for 34.6 hours worked on Bundler at $150/hour
* $2,250.62 for 15.0 hours worked on RubyGems.org at $150/hour
* $3,713.12 for 24.8 hours worked on RubyGems at $150/hour
* $1,935 for 12.9 hours worked on other OSS and devtools at $150/hour
* $8,925 for 59.5 hours worked on The Ruby Toolbox at $150/hour
* $82.80 on dedicated servers for RubyBench.org
* $1,570.52 on payment processing fees
* $3,168.47 on company overhead like hosting, services, software, hardware, taxes, etc
* $5,975 on accounting, copywriting, design, and other professional services
* $2,499.30 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team
