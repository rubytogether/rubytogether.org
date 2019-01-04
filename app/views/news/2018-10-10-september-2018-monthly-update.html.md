---
summary: In September, we paid for 100 hours of developer work, launched a mentorship program called RubyMe, and fixed a bug to prevent typo attacks on RubyGems.org.
---

Hello! Welcome to the monthly update. During September, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [Coinbase](https://coinbase.com), [Triplebyte](https://triplebyte.com/os/rubytogether), [Bleacher Report](http://www.bleacherreport.com), and many others.

## ruby together news

In September, Ruby Together was supported by 73 different companies, including Sapphire member [Stripe](https://stripe.com). [Triplebyte](https://triplebyte.com/os/rubytogether) joined as our newest Emerald member.

In addition, eight new developers signed up as members or friends of Ruby Together, including Rafael França. In total, we were supported by 77 individual members and 69 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. 

As mentioned last month, we solicited suggestions or applications to run in the yearly election for the Ruby Together board of directors. This year, the only candidate was our existing board member, Adarsh Pandit. Since there was only one candidate, and one board seat up for election, the remaining directors chose to skip the voting period this year. If you're interested in nominating someone for the board of directors next year, or even running yourself, we'd love to hear from you! Reach out to us at hello@rubytogether.org and we can give you more information.

### ruby me

Earlier this month, we announced a new, paid mentorship program called [Ruby Me](http://www.rubyme.org). Designed and planned by board member Coraline Ada Ehmke, Ruby Me pairs early-career developers with seasoned Rubyists to work on open source projects for three months. Both mentees and mentors are compensated for 8 hours of work per month. The goal of Ruby Me is to help bring people from underrepresented backgrounds into open source and support them in their professional growth. 

We saw an overwhelmingly positive response come from the wider community. In one week, we received over 900 applications from prospective apprentices and over 125 applications from prospective mentors. It was incredibly difficult, but we selected the participants for our first batch and sent out notification emails on October 1. The selected teams will work together until January 2019, and we'll be sure to report back on how things went.

We plan to open applications for Spring 2019 around the middle of December. If you'd like to get an email right away when we next open applications for Ruby Me, visit [rubyme.org](https://rubyme.org) and sign up to be notified at the bottom of the page.

### events

Coraline Ada Ehmke and Kerri Miller gave talks at CodeDaze in Buffalo, NY earlier in September, and PJ Hagerty visited Northeast PHP in Boston.


## bundler news

The Bundler team merged 29 pull requests, including fixes for nested `bundle exec`, various bugs around choosing and updating gem versions, documentation improvements, and full compatibility with TruffleRuby. We also released versions 1.16.5 and 1.17.0.pre.

We also decided how to drop backwards compatibility with old Ruby versions, allowing us to resume work to merge Bundler into Ruby 2.6. We may or may not complete everything in time for the Ruby 2.6 release at Christmas, but we're still working towards it!

In September, Bundler gained 73 new commits, contributed by 12 authors. There were 419 additions and 151 deletions across 40 files.


## rubygems.org news

This month, we updated seven dependencies on rubygems.org and simplified and sped up some rack-attack integration tests with the help of [@mjankowski](https://github.com/mjankowski). We also discovered that it was possible to create "hidden" gems that would not show up in gem lists, and [@kerrizor](https://github.com/kerrizor) implemented a fix. Overall, rubygems.org got 15 commits from 2 authors making 146 additions and 263 deletions across 8 files.


## rubygems news

This month, RubyGems merged 12 pull requests, including downloading multiple gems in parallel during `install`, setting up a new mergebot, and adding a `--resign` flag to the `cert` command. There were 26 new commits, contributed by 6 authors, with 251 additions and 163 deletions across 28 files.


## ruby toolbox

Hey everyone,

I set aside some time in September to ship the production database exports I've mentioned in recent updates.

You can [find the release announcement and more in this on the Ruby Toolbox blog post](https://www.ruby-toolbox.com/blog/2018-09-30/database-exports). If you'd like to run some stats against the Toolbox data set, or if you’d like to get a local data set for development and contributing, this should be very helpful. You can find the exports at [data.ruby-toolbox.com](https://data.ruby-toolbox.com).

I also spent a bit of time on general maintenance, like upgrading the production database to Postgres 10 or [fixing a bug](https://github.com/rubytoolbox/rubytoolbox/pull/294) that prevented gems with only pre-release versions available on rubygems.org from being indexed on the Toolbox.

Getting the database dump export process ready with all the [goals](https://github.com/rubytoolbox/backup_publisher#goals) I had for it took a bit more time than I had hoped, so I didn't get around to work on [the improvements to the search](https://github.com/rubytoolbox/rubytoolbox/issues/109) I also mentioned in the last update; I will work on it in October.

As always, your feedback is very welcome! If you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to the contributors who submitted PRs in September: gettalong and matkoniecz.

Best,
Christoph


## budget &amp; expenses

In September, we saw $14,630 in total income, and spent a total of $21,480.11.

* $5,539.38 for 36.9 hours worked on Bundler at $150/hour
* $687.50 for 4.6 hours worked on RubyGems.org at $150/hour
* $5,673.12 for 37.8 hours worked on RubyGems at $150/hour
* $2,975 for 19.8 hours worked on other OSS and devtools at $150/hour
* $275 for 1.8 hours worked on The Ruby Toolbox at $150/hour
* $77.80 on dedicated servers for RubyBench.org
* $492.31 on payment processing fees
* $1,853.88 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,820 on accounting, copywriting, design, and other professional services
* $2,086.12 on marketing, evangelism, and community outreach


Until next time,<br>
Stephanie, André and the Ruby Together team
