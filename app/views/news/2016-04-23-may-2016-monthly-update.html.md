---
summary: "This month at Ruby Together was all about people, we worked with our community at RailsConf, got our Google Summer of Code students working, and started organizing Bundler and RubyGems issues better."
---

<% title "May 2016 monthly update" %>

Welcome to the May 2016 monthly update for Ruby Together. This month at Ruby Together was all about people, we worked with our community at RailsConf, got our Google Summer of Code students working, and started organizing Bundler and RubyGems issues better. We also paid for X hours of developer time, focused on patches for Bundler's 1.12 release and avoiding Bundler API outages. Finally, we had (WIP new members stuff here WIP)

## ruby together news

Work got done on a few of the auxillary projects (Bundler's Gemstash, RubyGems Adoption Center) during RailsConf. Andre and Samuel starting working with the Google Summer of Code students on a variety of Bundler and RubyGems issues. Lynn reorganized Bundler's issues and Trello boards so that more information is public and accessible. Finally, received nomination(s) for board members this month and will be holding an election to decide the state of the new Ruby Together board.

WIP new member companies and individuals

## bundler news

This month [we released](https://github.com/bundler/bundler/blob/master/CHANGELOG.md) Bundler 1.12.1 - 1.12.5. These changes were mainly bugfixes for the index format, but also notable was a series of small issues primarily effecting users running Bundler on continuous integration servers. We also worked on upcoming releases this month, specifically the 2.0 'Breaking Changes' and the 1.X 'Plugin System' releases. On the [Bundler-api](https://github.com/bundler/bundler-api) side, we setup a follower database to avoid downtime on the index service when AWS takes the primary database down for maintence later this month.

In total, [Bundler](https://github.com/bundler/bundler) and [Bundler-api](https://github.com/bundler/bundler-api) had 25 merged pull requests and 119 commits from 10 authors, and 53 closed issues.

## rubygems.org news

RubyGems.org has 24 merged pull requests and 59 commits from 13 authors. RubyGems.org got [a variety of infrastructure changes](http://blog.rubygems.org/2016/05/19/simplifying-our-stack.html) this month, including serving our millions of gem requests directly from Fastly and reducing / eliminating reliance on Nginx / Redis.

## rubygems news

RubyGems has 13 merged pull requests and 15 commits from 8 authors this month. Relevant to the state of the commit numbers this month, The RubyGems team [is making a push towards creating a better RubyGems](http://blog.rubygems.org/2016/05/20/rubygems-org-2016-push.html) by increasing contributors, updating policies, and decreasing response times on support issues. Many of the issues described there are due to RubyGems support being run by volunteers, which Ruby Together is working on addressing with the financial support of Ruby community members such as yourselves!

## budget & expenses

From April 19 to May 19, Ruby Together took in $17,956. In total, we spent $WIP. Here's a breakdown of where the money went:

* $X for X hours of developer time on Bundler at $150/hour
* $X for X hours of developer time on RubyGems.org at $150/hour
* $X for X hours of developer time on RubyGems at $150/hour
* $76.19 on deticated servers for RubyBench.org
* $563.08 on payment processing fees
* $X on company overhead like hosting, services, software, hardware, taxes, etc
* $0 on accounting, copywriting, design, and other professional services
* $X on marketing, evangelism, and community outreach

Look forward to seeing the efforts of our hardworking Google Summer of Code students in the next month, in addition to more work on reorganization and roadmapping for Bundler and RubyGems!

Until next time,<br>
Lynn, André, and the Ruby Together team
