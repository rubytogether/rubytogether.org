---
summary: "Setting a new record, we paid for more than 86 hours of developer work. We also released new versions of RubyGems and Bundler, and gained 6 new members."
---
<% title "February 2016 monthly update" %>

Hello, and welcome to the monthly update for February 2016. This month, we paid for 86.4 hours of developer time (a new record!), and had 7 new members join, including BoochTek and Minnesota Public Radio. We also had our Ruby Google Summer of Code team accepted for 2016!

If you're not a member yet, help us do even more next month by [joining today](https://rubytogether.org/join).

## Ruby Together news

February saw us set a new record for developer hours, with 86.4 paid hours worked on Bundler, the RubyGems.org servers, and RubyGems itself.

Ruby Together also applied to [Google Summer of Code](http://summerofcode.withgoogle.com) for Ruby as a whole (including MRI, Bundler, RubyGems, and other gems). Acceptances were just announced today, and Ruby was accepted! If you're interested in participating in GSoC, either as a student or a mentor, [join the Bundler Slack](https://bundler-slackin.herokuapp.com) and let us know. We'd love to work with you this summer.

In February, we had four developers join as members, including Lamont Granquist, Nic Boie, Tara Scherner de la Fuente, and Jon Daniel. Two new companies joined, [BoochTek](http://boochtek.com) and [Minnesota Public Radio](http://www.mpr.org). With these new members, our projected monthly income is now $17,120.

## Bundler news

Across the Bundler and Bundler API projects, 50 pull requests were merged, including 123 commits from 13 authors. Work on the next release of Bundler continued as planned: we released not one but two prereleases of Bundler 1.12. As a result, anyone can start using the new index today by running `gem install bundler --pre`. Try it out and let us know how it works for you!

As long as no new issues come to light, we'll be releasing Bundler 1.12 final in about two weeks. It's honestly kind of astonishing to contemplate the idea that it will finally be released, almost three years after starting to work on it.

## RubyGems.org news

In the [rubygems.org repo](https://github.com/rubygems/rubygems.org/), 15 pull requests were merged, including 80 commits from 9 authors. We applied security patches, upgraded gems, fixed bugs, and removed a dependency on Flash.

We also shipped the first version of the Fastly log processor to the staging environment. Once it's live in production, we'll be able to move all gem downloads to point directly at a CDN endpoint, rather than serving redirects to the CDN from our servers on EC2.

## RubyGems news

RubyGems continued to make significant progress, catching up on the backlog of outstanding issues. We closed 51 issues, leaving only 108 remaining. We also merged 35 pull requests, including 69 commits from 15 authors.

Some highlights from those changes include support for Ruby 2.3's frozen string literals, better support for pushing to gem hosts other than rubygems.org, and many miscellaneous fixes released as RubyGems [version 2.6](https://github.com/rubygems/rubygems/blob/master/History.txt#L3).

## Budget & Expenses

From January 19 to February 19, including Travis CI paying up front for an entire year, Ruby Together took in $18,556.94. In total, we spent $21,355.40. Here's a breakdown of where the money went:

  - $4,500 for 30 hours of developer time on Bundler at $150/hour
  - $2,887.50 for 19.25 hours of developer time on RubyGems.org at $150/hour
  - $7,075 for 41.67 hours of developer time on RubyGems at $150/hour
  - $73.20 on dedicated servers for RubyBench.org
  - $493.63 on payment processing fees
  - $274.58 on company overhead like hosting, services, software, hardware, taxes, etc.
  - $70 on accounting, copywriting, design, and other professional services
  - $5,530.02 on community outreach, including stickers, shirts, and speaking at conferences

As mentioned in last month's newsletter, this month's community outreach spending actually covers multiple months, due to reimbursement delays.

Next month, keep an eye out for more progress on RubyGems and the Bundler 1.12 release, bringing the new index format to Rubyists around the world!

Until next time,<br>
André and the Ruby Together team
