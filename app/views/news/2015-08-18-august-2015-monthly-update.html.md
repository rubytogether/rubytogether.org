---
summary: "New members Yammer, Kickstarter and Basecamp joined, while we paid for 40 hours of development work on Bundler and RubyGems.org."
---
<% title "August 2015 Monthly Update" %>

Hello, and welcome to the Ruby Together update for August! This month 5 developers and 3 companies joined, including [David Heinemier Hansson](https://twitter.com/dhh) (creator of Rails) and his company [Basecamp](https://basecamp.com). We also continued to maintain and develop Bundler and RubyGems.org, paying for 40 hours of developer time. Keep reading for more details on projects, members, and finances.

## Ruby Together news

Since the last update, five people joined as new members, including Jacob Helwig, James Turnbull, and Matt Mills. [Kickstarter](https://kickstarter.com) joined as a Topaz member, and two companies joined as Emerald members: [Yammer](https://yammer.com) and [Basecamp](https://basecamp.com).

I'm excited to announce that thanks to our new members this month, we've hit our first major fundraising goal! With an projected monthly income of $10,780.00, Ruby Together is now able sustainably pay for ongoing work on both Bundler and RubyGems.org every week.

This infographic, taken from [our roadmap](https://rubytogether.org/roadmap) shows where we're at right now, and what we'll be able to do as more members join.

<div class="clear"><img alt="$10,780.00 per month" src="/email/2015-08-18-august-2015-monthly-update/roadmap-status.png" width="520"></div>

Today, [RubyGems](http://github.com/rubygems) doesn't have any consistently active maintainers, but it has outstanding issues that we would really like to start working on. As more companies and developers join, we plan to fund work on RubyGems as quickly as possible.

## Bundler news

On the Bundler team, we're just now wrapping up the Google Summer of Code and the four (!) students who had projects working on Bundler. [@suhastech](http://github.com/suhastech) researched plugin systems and wrote a prototype that we will use to inform future plugins work. [@rgb-one](http://github.com/rgb-one) fielded tickets and refactored and improved the Bundler website. [@smlance](http://github.com/smlance) worked on changes for Bundler 2.0, which we hope to release as an alpha within a few weeks. [@fotanus](http://github.com/fotanus)' worked on the new index server, which should be live soon.

Complementing @fotanus' work on the new index server, core team member [@segiddins](http://github.com/segiddins) is finishing up the new index client, and we plan to release the fruit of their labor as Bundler 1.11 very soon.

## RubyGems.org news

On the RubyGems.org side, we made steady progress on the switchover to using [Fastly](https://fastly.com) as our CDN. Last month, about 45% of our total data transfer was served by Fastly while this month it should be closer to 90%. The RubyGems.org servers were upgraded to use Ruby 2.2.2, for the latest performance and security improvements.

We also added publicly accessible backups of our Redis server, hardened the site against failing services, applied security patches, upgraded gems, updated packages, reviewed pull requests, and answered support tickets. It was a busy month!

## Budget & Expenses

Thanks to one company pre-paying for over 9 months, Ruby Together took in $19,239.00 over the last month.

Thanks to that extra money, we were able to repay a loan that covered our initial startup costs. We also bought some software and hardware that will help us do our jobs more easily.

In total, we spent $16,033.77. Here's a breakdown of our spending by category:

  - $3,000 for 20 hours of developer time on Bundler at $150/hour
  - $3,000 for 20 hours of developer time on RubyGems.org at $150/hour
  - $74.63 in dedicated servers for RubyBench.org
  - $611.98 in payment processing fees
  - $4,438.16 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $2,185 on accounting, copywriting, design, and other professional services
  - $2,205 to finish repaying company-founding expenses, including legal counsel and government fees
  - $549 on community outreach including stickers, conferences, etc.

As predicted, our spending on professional services has gone down now that we're a bit more established as a company. In the coming months, we expect to start spending more on community outreach and conferences.

Right now, the most common response when we approach developers and companies is simply "what's Ruby Together? I haven't heard about it". That needs to change. :)

Until next time,<br>
André and the Ruby Together team
