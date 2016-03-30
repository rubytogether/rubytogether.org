---
summary: "Ruby Together gained 6 members, paid for 68 hours of developer time, and reached the penultimate step of big accomplishments for Bundler and RubyGems.org."
---
<% title "March 2016 monthly update" %>

Hello, everyone! Welcome to the March 2016 monthly update for Ruby Together. This month, we paid for 68.25 developer hours, and had 6 new members join. We continued to make forward progress in every project, and quickly restored service after an outage in the RubyGems Dependency API. Keep an eye out for release announcements from Bundler, RubyGems, and RubyGems.org, since we plan to keep them coming. If you're not a member yet, help us do even more work for the community by [joining today](https://rubytogether.org).

## Meet us, get stickers

This week, André will be attending Ruby on Ales in Bend, OR. He'll also be giving a talk on the first day of the conference about ways to avoid driving contributors away from your open source project (or company's engineering team). If you'll be there, say hello! He'll have lots of Ruby Together stickers to give away.

## Ruby Together News

In the last month, we’ve been working hard—Ruby Together paid for 68.25 developer hours. We spent that time on Bundler, RubyGems, RubyGems.org, and Google Summer of Code for Ruby. We had six new members join: Tom Johnson, Francis Luong (Franco), Patrick McSweeny, Dan Sherson, Andrew Nesbitt, and Jeffrey Baird.

The bad news is that no new companies joined last month, for the first time since Ruby Together was started. If your company hasn't joined yet, this would be a good time to encourage them! On the other hand, the good news is that even with no new corporate members, we can afford to pay for 25 hours of development work every week. That’s 100 hours of maintenance and improvements every month on Ruby community infrastructure that was previously being done without compensation, or more likely not being done at all.

In other news, the GSoC student application deadline was this Friday, and we’ve spent much of the month communicating with students about potential projects and their proposals. In all, we received 41 applications, including projects in Bundler, RubyGems.org, Rails, JRuby, and MRI itself.

Over the next month, we’ll be reviewing proposals and requesting slots from Google for the students we want to accept. Last year, we were able to work with every student whose proposal we decided to accept. Hopefully we’ll be able to do that again this year, too.

## Bundler News

Bundler got a fair amount of ongoing maintenance this month, with 45 new commits and 24 merged pull requests from 12 different authors. We also finished the prerelease cycle for Bundler 1.12, and pushed the release candidate to RubyGems.org. If we don’t find any bugs, it will be the final version! Give it a try by running `gem install bundler --pre` and [let us know] if you run into any problems.

On the Bundler API side of things, we saw 24 new commits and 13 merged pull requests from 7 authors. When the API started [returning 503 responses last week], we were able to investigate, mitigate the issue by adding capacity, continue monitoring, and completely resolve the problem the next day. We also added a graph of API responses to [the RubyGems.org status page] so that future issues will be easier to see. Everything is back to working smoothly, and no one had to take unpaid time off of work to do it, thanks to your support for Ruby Together! Good work, everyone.

## RubyGems.org News

The RubyGems.org repo saw 15 pull requests merged, including 99 commits from 10 authors. We added a new application server, fixed a bevy of small issues, and shipped the new download counting setup that works with Fastly from staging to production! If everything goes according to plan, all of RubyGems.org will be served directly from Fastly within the next month.

## RubyGems News

RubyGems saw some nice progress as well, with 20 pull requests merged, containing 33 commits from 9 authors. Fixes included finding the right gem on different platforms, finding the right gem executable stub, and always running the newest installed version of a gem. We released RubyGems version 2.6.2 with some of those fixes, and we’ll be releasing 2.6.3 shortly with the rest of them.

## Budget & Expenses

From Feburary 20 to March 19, Ruby Together took in $18,140. In total, we spent $13,437.96. Here's a breakdown of where the money went:

  - $4,275 for 28.5 hours of developer time on Bundler at $150/hour
  - $3,112.50 for 20.75 hours of developer time on RubyGems.org at $150/hour
  - $2,850 for 19 hours of developer time on RubyGems at $150/hour
  - $73.52 on dedicated servers for RubyBench.org
  - $566.86 on payment processing fees
  - $1,561.81 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $210 on accounting, copywriting, design, and other professional services
  - $788.27 on community outreach, including stickers, shirts, and speaking at conferences

Over the next month, we plan to ship two big, long-term projects! Work on Bundler 1.12 and the new index format started three years ago, and work on serving RubyGems.org entirely through Fastly started over a year ago. It’s amazing that we’ve managed to accomplish changes requiring years of work—and it’s because of your help.

Until next time,<br>
André and the Ruby Together team