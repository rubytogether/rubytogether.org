---
summary: During April, we paid for 39 hours of developer work, fixing bugs, applying security patches, and worked with Fastly to prevent a major outage for some users.
---

<% title "April 2017 Monthly Update" %>

Hello! Welcome to the monthly update. During April, our work was supported by [Stripe](http://stripe.com/), [CodeMiner42](http://www.codeminer42.com), [Cloud City](http://cloudcity.io), [Gitlab](http://gitlab.com/), [Digital Ocean](http://digitalocean.com/), and many others.

## ruby together news

Last month, Ruby Together was supported by 79 different companies, including Sapphire members [Stripe](https://stripe.com) and [CodeMiner42](http://www.codeminer42.com). Two companies joined as new members, including [Atomic Object](https://atomicobject.com) and [Honeybadger](https://honeybadger.io/).

On top of those companies, three developers signed up to be friends of Ruby Together, and two new developers joined as members, Dominic Dagradi and Ambreen Hasan. In total, we were supported by 115 individual members and 76 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

April saw us continue to move forward with plans for funding additional Ruby projects. We can't announce it just yet, but [follow us on twitter](https://twitter.com/rubytogether) or read next month's newsletter for what will hopefully be an exciting announcement.

Some other plans moved forward as well, and we launched our [public feedback forum](https://github.com/rubytogether/feedback). Since the beginning, Ruby and RubyGems have been maintained and advanced by a small group of passionate volunteers. We have all of them to thank for the large, vibrant community that exists today. However, Ruby has matured to the point where its supporting infrastructure is both vital to the larger internet economy, and can no longer be maintained by a few volunteers.

We created Ruby Together to allow Ruby devs and companies to collectively pay developers for their time and effort working on central and critical projects. That said, our primary goal is to to serve and improve the entire Ruby community.

To help us do that more effectively, we're creating this repo as a collaborative forum where anyone who is passionate about Ruby open source and infrastructure can share and discuss their ideas, opinions, and concerns with each other and with the Ruby Together team. Membership is Ruby Together is not required to participate or give feedback, and all feedback will be read and considered as we decide how to best support the Ruby community in the future. Come by and [tell us how you think we're doing](https://github.com/rubytogether/feedback/issues)!

## bundler news

Last month, we started pushing prereleases of Bundler 1.15. As of today, we're up to version 1.15.0.pre.4, and it's looking increasingly likely that the next version will be the release candidate. Highlight features for 1.15 include man pages for all commands (thanks, @feministy!), a `bundle issue` command to help users report problems (thanks, @jonathanpike!), and a `bundle add` command (thanks, @denniss!).

On top of those changes, version 1.15 will also include dramatically improved performance when loading Bundler in applications with hundreds of gems, and the huge improvement to error messages when a matching version can't be found that we mentioned in [our last monthly update](https://rubytogether.org/news/2017-04-18-march-2017-monthly-update).

Many other bugs were fixed, and additional smaller features have been added. Check out [the Bundler changelog](https://github.com/bundler/bundler/blob/master/CHANGELOG.md) for the full details. In total, this month 13 authors pushed 149 commits, including 1,668 additions and 306 deletions across 78 files.

## rubygems.org news

The biggest event for RubyGems.org this month was [Fastly's planned deprecation of TLS 1.0 and 1.1](https://www.fastly.com/blog/phase-two-our-tls-10-and-11-deprecation-plan/). We didn't realize it beforehand, but many, many developers and servers are still using Ruby without support for TLS 1.2. We were surprised because support for TLS 1.2 was added to OpenSSL [in version 1.0.1 on March 14, 2012](https://en.wikipedia.org/wiki/OpenSSL#Major_version_releases), over five years ago! In a group effort, we were able to work together with [Ruby Central](http://rubycentral.org) and [Fastly](https://www.fastly.com) to quickly add back support for the older TLS 1.0 and 1.1.

Unfortunately, the PCI Security Standards Council's requirements mean that Fastly will be disabling TLS 1.0 and 1.1 for all users, including RubyGems.org, at the end of April 2018. This month, we started working on an early warning system that will inform Ruby developers if they need to upgrade, and we will roll it out later this year to make sure that everyone has plenty of time to adjust before the older versions of TLS are disabled again.

In total, RubyGems.org gained 21 new commits, with 4 different contributors changing 63 files. There were 851 additions and 305 deletions.

## rubygems news

For RubyGems, April saw the release of version 2.6.12. Fixes include installing gems on MinGW systems, the `gem open` command once again opening the newest version of a gem by default, and generating binstubs (like the file named `rake`, used to run rake commands) that will work with both current and older versions of RubyGems. In total, RubyGems saw 17 new commits from 6 different contributors. They changed 16 files, with 162 additions and 61 deletions.

## gemstash news

Gemstash didn't see any major changes during April, but it's still a solid option if you need to host your own private gems or set up a local cache for RubyGems.org on your machine, in your office, or in your datacenter. In total, Gemstash gained 3 new commits. 2 different authors changed 5 files, with 37 additions and 6 deletions.

## budget & expenses

In March, we saw $22,252 in total income, and spent a total of $9,479.49.

* $1,950 for 13.0 hours worked on Bundler at $150/hour
* $1,538 for 10.3 hours worked on RubyGems.org at $150/hour
* $975 for 6.5 hours worked on RubyGems at $150/hour
* $1,388 for 9.3 hours worked on other OSS and devtools at $150/hour
* $71.77 on dedicated servers for RubyBench.org
* $732.52 on payment processing fees
* $1,166.63 on company overhead like hosting, services, software, hardware, taxes, etc
* $150.0 on accounting, copywriting, design, and other professional services
* $1,508.57 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
