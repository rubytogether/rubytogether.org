---
summary: "Since last month, Ruby Together paid for 40 hours of developer time on Bundler and RubyGems.org, had 7 new members join, and visited ROSSConf and EuRuKo to hear from the community."
---
<% title "October 2015 Monthly Update" %>

Just in time for Halloween, it's the Ruby Together monthly update for October 2015! This month we paid for 40 hours of developer time to maintain and improve Bundler and RubyGems.org. We gained four new individual members, and three new company members. Every new member means we're able to do more for the Ruby community, so if you're not a member yet, [sign up today!][join]. 

[join]: https://rubytogether.org/#join

## Ruby Together news

In the last month, André spoke at ROSSConf, the [Ruby Open Source Software Conference](http://rossconf.io), in Berlin, where he spoke about the history of Bundler and led a hackday of work on Bundler by new contributors. André also attended EuRuKo, the European Ruby Conference, and gave a lightning talk about Ruby Together.

Attendees at both conferences were very positive and excited about the idea of Ruby Together, but most of them were hearing about Ruby Together for the first time. Since it seems like most Ruby developers and companies haven't heard about Ruby Together yet, we're going to work on doing more conferences and outreach in the coming months.

Since the last update, we've had three new companies join: [Contributed Systems](http://contribsys.com) (makers of the popular [Sidekiq](http://sidekiq.org) gem), [Estately](http://estately.com), and [DevMynd](http://devmynd.com). We've had four new individual members join: Dave H, Sudodoki, Rebecca Skinner, and Raphael Campardou. Thanks for your support, everyone!

With those new members, our projected monthly income is now $13,100 per month. With that income, we'll be able to not only pay for maintenance work on Bundler and RubyGems.org, but also pay for outreach and evangelism work to let more companies know about what we're doing. With more companies, we'll be able to support more Ruby open source projects and get things done even faster. Hooray!

## Bundler news

Excluding merge commits, this month the Bundler repository saw 136 commits by 17 authors. 28 pull requests were merged, and a good amount of progress was made on bug fixes, new features, and future plans.

The most significant progress was on the new [gemstash](https://github.com/bundler/gemstash) project, an open source server for hosting gems. Gemstash is able to act as a caching proxy for RubyGems.org, providing local copies of gems for a data center or office. It is also able to host private or internal gems, and offers an easy way for teams to migrate away from using gems directly out of git repositories. We're not quite at 1.0, but everything is already working! We'll have a release candidate out shortly once we've polished up the documentation and done a bit more QA testing.

## RubyGems.org news

On RubyGems.org and associated repositories, 23 pull requests were merged, and in total 20 authors pushed 114 commits.

The SSL certificate for status.rubygems.org was renewed and updated, and the [gem adoption center project](https://github.com/rubygems/adoption-center) continues to make progress after the end of the RailsGirls Summer of Code.

We also applied many security updates, continued work on the integration with Fastly, and shipped a beta version of the completely rewritten new-and-improved search. Once we're sure that it works, we'll enable it for everyone, and searching for gems will finally include all of their information rather than just their names.

## Budget & Expenses

From September 19 to October 18, Ruby Together took in $12,680. In total, we spent $11.245.53. Here's a breakdown of where that money went:

  - $3,000 for 20 hours of developer time on Bundler at $150/hour
  - $3,000 for 20 hours of developer time on RubyGems.org at $150/hour
  - $75.43 in dedicated servers for RubyBench.org
  - $403.72 on payment processing fees
  - $1804.79 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $1072.50 on accounting, copywriting, design, and other professional services
  - $3,396.61 on community outreach including stickers, conferences, etc.

Feedback from the community about Ruby Together indicates that it is relatively unknown. As a result, we're planing to do more outreach and evangelism work in the coming months, including hiring professional help. In the meantime, if you have friends, coworkers, or managers who don't know about Ruby Together yet, let them know!

Until next time,<br>
André and the Ruby Together team
