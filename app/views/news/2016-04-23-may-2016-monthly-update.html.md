---
summary: "This month at Ruby Together was all about people, we worked with our community at RailsConf, got our Google Summer of Code students working, and started reorganizing Bundler and RubyGems issues."
---

<% title "May 2016 monthly update" %>

Welcome to the May 2016 monthly update for Ruby Together. In the last month, we paid for 212.4 hours of developer time (twice as high as the previous record!). With that time we released several patches for Bundler 1.12, optimized and added recovery systems to the Bundler API and RubyGems.org, and introduced over a dozen new people to working on Bundler / RubyGems. We also has six new members join, including three companies.

## ruby together news

This month at Ruby Together was all about people, we worked with our community at [RailsConf](http://railsconf.com/), got our [Google Summer of Code](https://developers.google.com/open-source/gsoc/) students working, and started reorganizing Bundler and RubyGems issues.  Work got done on a few of the axillary projects ([Bundler's Gem stash](https://github.com/bundler/gemstash), [RubyGems Adoption Center](https://github.com/rubygems/adoption-center)) during RailsConf. Andre and Samuel starting working with the Google Summer of Code students on a variety of Bundler and RubyGems issues. We paid for 98.5 hours of developer time on Bundler focused on patches for Bundler's 1.12 release but also on and laying the groundwork for our Google Summer of Code students to release a barrage of features in the coming weeks. Lynn reorganized Bundler's issues and Trello boards so that more information is public and accessible. Finally, we received nomination(s) for board members this month and will be holding an election to decide the state of the new Ruby Together board.

We had three new developers join as members: James Wen, Adam Becker, and Asad Akbar. Three companies joined: [Thoughtbot](https://thoughtbot.com/), [Geckoboard](https://www.geckoboard.com/), and [Sabre Corp](https://www.sabre.com/). [Thoughtbot](https://thoughtbot.com/) is consulting company of small teams of designers and developers in 10 cities around the world, making software for clients, and contributing to open source software. Also [Icelab](http://icelab.com.au/) joined us last month, and deserves a shout out. [Icelab](http://icelab.com.au/) is a studio in Australia with a team of problem solvers who want to work with you to build a better world. They work with Ruby every day, and do their best to push Ruby forward through our support of the [dry-rb](http://dry-rb.org/) project.

## bundler news

This month [we released](https://github.com/bundler/bundler/blob/master/CHANGELOG.md) Bundler 1.12.1 - 1.12.5. These changes were mainly bug fixes for the index format, but also notable was a series of small issues primarily effecting users running Bundler on continuous integration servers. We also worked on upcoming releases this month, specifically the 2.0 'Breaking Changes' and the 1.X 'Plugin System' releases. On the [Bundler-api](https://github.com/bundler/bundler-api) side, we setup a follower database to avoid downtime on the index service when AWS takes the primary database down for maintenance later this month.

In total, [Bundler](https://github.com/bundler/bundler) and [Bundler-api](https://github.com/bundler/bundler-api) had 25 merged pull requests and 119 commits from 10 authors, and 53 closed issues.

## rubygems.org news

RubyGems.org has 24 merged pull requests and 59 commits from 13 authors. RubyGems.org got [a variety of infrastructure changes](http://blog.rubygems.org/2016/05/19/simplifying-our-stack.html) this month, including serving our millions of gem requests directly from Fastly and reducing / eliminating reliance on Nginx / Redis. These changes bring RubyGems.org up to date with Bundler API's 1.12 Index Format changes, and in the future we will integrating technical improvements on these systems with each other more heavily.

## rubygems news

RubyGems has 13 merged pull requests and 15 commits from 8 authors this month. Relevant to the state of the commit numbers this month, The RubyGems team [is making a push towards creating a better RubyGems](http://blog.rubygems.org/2016/05/20/rubygems-org-2016-push.html) by increasing contributors, updating policies, and decreasing response times on support issues. Many of the issues described there are due to RubyGems support being run by volunteers, which Ruby Together is working on addressing with the financial support of Ruby community members such as yourselves!

## budget & expenses

From April 19 to May 19, Ruby Together took in $17,956. In total, we spent $51,520.11.  Here's a breakdown of where the money went:

* $14,776.25 for 98.5 hours of developer time on Bundler at $150/hour
* $6,900.00 for 46 hours of developer time on RubyGems.org at $150/hour
* $10,187.50 for 67.9 hours of developer time on RubyGems at $150/hour
* $76.19 on dedicated servers for RubyBench.org
* $563.08 on payment processing fees
* $5,729.31 on company overhead like hosting, services, software, hardware, taxes, etc
* $4,176.25 on accounting, copywriting, design, and other professional services
* $9,111.53 on marketing, evangelism, and community outreach

Our spending this month involves the resources spent on-boarding new members of the Ruby community (students, volunteers, etc) so moving forward we will being able to leverage their skills to improve Ruby infrastructure. Look forward to seeing the efforts of our hardworking Google Summer of Code students in the next month, in addition to the other results of our focused outreach efforts!

Until next time,<br>
Lynn, André, and the Ruby Together team
