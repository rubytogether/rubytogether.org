---
summary: "This month at Ruby Together was all about people: we met the Ruby community at RailsConf, started our Google Summer of Code students working, and started reorganizing Bundler and RubyGems issues."
---

<% title "May 2016 Monthly Update" %>

Welcome to the May 2016 monthly update for Ruby Together. In the last month, we paid for 232.3 hours of developer, designer, and project management time (twice as high as the previous record!). With that time we released several patches for Bundler 1.12, optimized and improved fallback for the Bundler API and RubyGems.org, and introduced over a dozen new people to working on Bundler / RubyGems. We also saw six new members join, including three companies.

## ruby together news

This month at Ruby Together was all about people. We went to [RailsConf](http://railsconf.com/), kicked off [Google Summer of Code](https://developers.google.com/open-source/gsoc/) student projects, and started reorganizing Bundler and RubyGems issues. At RailsConf, both [Gemstash](https://github.com/bundler/gemstash) and the [RubyGems Adoption Center](https://github.com/rubygems/adoption-center)) got shoutouts and work from attendees. Andre and Samuel also started working with the Google Summer of Code students on a variety of Bundler and RubyGems issues.

We paid for 118.4 hours of time spent on Bundler. That time was primarily focused on bugfixes for Bundler's 1.12 release, and also laid the groundwork for Google Summer of Code students to start working on several different projects. Lynn reorganized Bundler's issues and Trello boards so that more information is public and accessible. Finally, we received nomination(s) for board members this month and will be holding an election to decide the state of the new Ruby Together board.

We had three new developers join as members: James Wen, Adam Becker, and Asad Akbar. Three companies joined: [Thoughtbot](https://thoughtbot.com/), [Geckoboard](https://www.geckoboard.com/), and [Sabre Corp](https://www.sabre.com/).

[Thoughtbot](https://thoughtbot.com/) is a consulting company with small teams of designers and developers in 10 cities around the world, making software for clients, and contributing to open source software.

Although [Icelab](http://icelab.com.au/) joined us last month, we forgot to mention them in last month's newsletter, so here they are: [Icelab](http://icelab.com.au/) is a studio in Australia with a team of problem solvers who want to work with you to build a better world. They work with Ruby every day, and do their best to push Ruby forward through our support of the [dry-rb](http://dry-rb.org/) project.

## bundler news

This month we released [Bundler 1.12.1 - 1.12.5](https://github.com/bundler/bundler/blob/master/CHANGELOG.md). These changes were mainly bug fixes for the new index format, but we also fixed several issues running Bundler on continuous integration servers. We also worked on upcoming releases this month, specifically breaking changes for Bundler 2.0 and the plugin system that's been in progress for some time now. On the [Bundler-api](https://github.com/bundler/bundler-api) side, we set up a new follower database and then promoted it to primary status. The new primary database means we'll be able to avoid downtime when AWS services the old primary database later this month.

In total, [Bundler](https://github.com/bundler/bundler) and [Bundler-api](https://github.com/bundler/bundler-api) had 25 merged pull requests and 119 commits from 10 authors, and we closed 53 closed issues.

## rubygems.org news

RubyGems.org had 24 merged pull requests and 59 commits from 13 authors. We implemented [a variety of infrastructure changes](http://blog.rubygems.org/2016/05/19/simplifying-our-stack.html) this month, including serving our millions of gem requests directly from Fastly, reducing our reliance on Nginx and completely eliminating Redis from our stack. Next up is porting the Bundler API's new index format, working towards our goal of a single unified application to serve the entire site.

This month the team also [blogged about ways to improve RubyGems.org for 2016](http://blog.rubygems.org/2016/05/20/rubygems-org-2016-push.html) by increasing contributors, updating policies, and decreasing response times on support issues. Many of the issues described there are due to RubyGems support having been run by volunteers, which Ruby Together is working on addressing! The financial support of Ruby community members like you is making all of this possible. <3

## rubygems news

In the last month, RubyGems merged 13 pull requests, containing 15 commits by 8 authors. We're continuing to work our way through outstanding issues, planning the future merger of Bundler with RubyGems, and evaluating what we can do to make RubyGems more useful to everyone who depends on it.

## budget & expenses

From April 19 to May 19, Ruby Together took in $17,956. In total, we spent $58,330.67. Here's a breakdown of where the money went:

* $17,752.50 for 118.4 hours worked on Bundler at $150/hour
* $6,900.00 for 46 hours worked on RubyGems.org at $150/hour
* $10,187.50 for 67.9 hours worked on RubyGems at $150/hour
* $76.19 on dedicated servers for RubyBench.org
* $563.08 on payment processing fees
* $5,729.31 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,920.00 on accounting, copywriting, design, and other professional services
* $15,145.53 on marketing, evangelism, and community outreach

We spent more than usual this month thanks to a combination of onboarding new volunteers and Google Summer of Code students, our newest employees ramping up, filing tax returns, attending RailsConf, doing more direct outreach to companies, and working on the Ruby Together store (coming soon!). Look forward to seeing the efforts of our hardworking Google Summer of Code students next month, as well as results from our focused outreach efforts!

Until next time,<br>
Lynn, André, and the Ruby Together team
