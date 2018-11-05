---
summary: In October, we paid for 117 hours of developer work, released Bundler v1.17, updated several RubyGems.org dependencies, revived the reverse dependencies list endpoint, and worked to reduce malicious gems.
---

Hello! Welcome to the monthly update. During October, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), [GitLab](https://about.gitlab.com/), and many others.


## ruby together news

In October, Ruby Together was supported by 72 different companies, including Ruby member [Handshake](https://handshake.org) and Sapphire member [Stripe](https://stripe.com). Three new developers signed up as members or friends of Ruby Together. In total, we were supported by 74 individual members and 68 friends of Ruby Together. Thanks to all of our members for making everything that we do possible!

On the events front, our developer evangelist PJ Hagerty spoke to audiences at [Little Rock Tech Fest](http://www.lrtechfest.com) and [GOTO:Berlin](https://gotober.com). Sam Giddins attended the [Google Summer of Code Mentor Summit](https://wiki.osgeo.org/wiki/Google_Summer_of_Code_2018_Mentor_Summit), and Stephanie Morillo delivered a talk on content strategy in open source development at [All Things Open](https://allthingsopen.org).

At the [monthly board meeting](https://github.com/rubytogether/board/blob/main/meetings/2018-10-16-board-meeting.md), the directors gave final approval to open applications for OSS project proposals to fund, approved a DevRel position job description, and agreed to sponsor Ruby Karaoke at RubyConf.

If you'll be at RubyConf in LA next week, the board would love to meet with you to hear your feedback and talk about Ruby Together. Just [let us know](hello@rubytogether.org). <3


## bundler news

[We released Bundler 1.17](https://bundler.io/blog/2018/10/25/announcing-bundler-1-17-0.html), which ships a new `remove` command (for removing gems from the command line), new command options, new events for Bundler plugins, and new environment variables. For a complete list of changes, check out the [v1.17 release notes](https://bundler.io/v1.17/whats_new.html).

We also announced our [new plan for Bundler 2.0](https://bundler.io/blog/2018/11/04/an-update-on-bundler-2.html), a new approach that we think the Bundler team and Bundler users will both be excited about. We're planning to write more blog posts and documentation about Bundler 2, and push a prerelease preview for interested beta testers in the next week or two.

This month, Bundler gained 107 new commits, contributed by 10 authors. There were 473 additions and 156 deletions across 35 files.


## rubygems.org news

In October, we updated 23 dependencies, including the update to Rails 5.2 (thanks [@thomasdziedzic](https://github.com/thomasdziedzic)) and a security update to loofah. Thanks to [@fwilkens](https://github.com/fwilkens), we added a new endpoint to our API which can be used to [query for gem updates within a given time range](https://guides.rubygems.org/rubygems-org-api/#get---apiv1timeframe_versionsjson). We also merged improvements to the French and Chinese translations of our site.

Early in October, we had to disable the endpoint that powers the reverse dependencies list on the website, because it was interfering with the stability of the rest of the site. We sincerely apologize for any inconvenience. We’ve since done significant work to improve that endpoint’s performance, and it is back online. Unfortunately, this meant, we had to say goodbye to one of our beloved libraries, will\_paginate, which we [replaced with kaminari](https://github.com/rubygems/rubygems.org/pull/1807).

We also undertook some refactoring work to improve our Code Climate score and we are happy to report that our maintainability score is an A!

This month, RubyGems.org gained 55 commits from 7 authors, making changes to 72 files with 342 insertions and 1226 deletions.


## rubygems news

RubyGems changes this month included removing insecure DNS lookups on gem servers (thanks [@arlandism](https://github.com/arlandism)!), fixed an issue where RubyGems might load files from a different copy of RubyGems on disk (thanks [@deivid-rodriguez](https://github.com/deivid-rodriguez)), and did ongoing administration and maintenance. We also merged in changes from ruby-core, improving compatibility with the upcoming Ruby 2.6.

This month, RubyGems gained 49 new commits, contributed by 11 authors. There were 747 additions and 604 deletions across 73 files.


## gemstash news

Gemstash saw a few bug fixes this month, including a fix to prevent overriding a published gem. This month, Gemstash gained 9 new commits, contributed by 3 authors. There were 71 additions and 4 deletions across 7 files.


## ruby toolbox

Hey everyone,

With freelance projects winding down in November, the Ruby Toolbox will be my main focus for December and January. Over the next two months, I will work on new features and improvements on the Ruby Toolbox. You can also check out the [related announcement on the Toolbox blog](https://www.ruby-toolbox.com/blog/2018-11-05/community-survey).

In order to be able to focus on what is relevant to you, the community, I have set up a survey to gather your feedback. If you have a couple minutes to spare it would be wonderful if you could leave your thoughts on what you'd like to see over at the [Ruby Toolbox 2018 Community Survey](https://survey-2018.ruby-toolbox.com/). Thanks a lot for your time!

If you are interested in contributing to the Ruby Toolbox, December and January will also be a great time to get started as I'll be available on a regular basis for replying to any questions you have or ideas you'd like to discuss. I will set up a project chat room for this; please keep an eye on the [Toolbox blog](https://www.ruby-toolbox.com/blog) for announcements.

Because of this, I’m delaying planned improvements of the search I mentioned in the last update so I can spend some consecutive time on that and also incorporate any feedback that might come from the community survey. Those improvements will remain on the roadmap, with work to commence sometime next year.

As always, your feedback is very welcome, if you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to the PR contributors of October: HotFusionMan, alsemyonov, cybcafe, and go2null.

Best,
Christoph


## budget &amp; expenses

In September, we saw $14,165 in total income, and spent a total of $24,891.08.

* $3,925 for 26.2 hours worked on Bundler at $150/hour
* $3,106.25 for 20.7 hours worked on RubyGems.org at $150/hour
* $5,218.12 for 34.8 hours worked on RubyGems at $150/hour
* $2,633.12 for 17.6 hours worked on other OSS and devtools at $150/hour
* $2,662.50 for 17.8 hours worked on The Ruby Toolbox at $150/hour
* $78.06 on dedicated servers for RubyBench.org
* $481.34 on payment processing fees
* $3,156.68 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,945 on accounting, copywriting, design, and other professional services
* $1,685 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team
