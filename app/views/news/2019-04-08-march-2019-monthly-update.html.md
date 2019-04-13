---
summary: In March, we paid for 143 hours of developer work, shipped a RubyGems security release, and hired some security-focused help.
---

Hello! Welcome to the monthly update. During March, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [Triplebyte](https://triplebyte.com/os/rubytogether), [DigitalOcean](https://www.digitalocean.com), and many others.


## ruby together news

In March, Ruby Together was supported by 61 different companies, including Sapphire member [Stripe](https://stripe.com). 2 companies joined as new members. On top of those companies, 2 new developers signed up as members or friends of Ruby Together, including Michael Jacobson. In total, we were supported by 66 individual members and 64 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

The response to our job posting for a Head of Growth was amazing, with over 175 applications submitted. We've been busily interviewing and working to find someone who shares our values and can help us with our goals. Keep an eye out, and we'll announce the results soon!

In conference news, Ruby Together will be co-sponsoring [Board Game Night](https://ti.to/contributed-systems/railsconf-2019-board-game-night/en) at [RailsConf 2019](https://railsconf.com) in Minneapolis! If you'll be attending RailsConf, come visit for a chance to play games, eat snacks, talk with us, and pick up some Ruby Together stickers, pins, or other goodies.


## ruby me news

Ruby Me applications are back open! You can apply to our paid Ruby open source internship program as either an apprentice or a mentor until 6pm Pacific Time on April 15. To learn more, visit [rubyme.org](http://rubyme.org).


## bundler & rubygems news

This month, Bundler merged new helpers named `with_original_env` and `with_unbundled_env` to replace the old confusingly-named `with_clean_env`. We also started merging fixes for issues on Windows, supported by last month's changes to run the Bundler tests on Windows using Azure Pipelines. Overall, Bundler gained 179 new commits, contributed by 10 authors. There were 2,414 additions and 1,654 deletions across 136 files.

At the same time, RubyGems saw a bunch of cleanup as well as several security fixes. Update to the latest Ruby (or latest RubyGems if you can't update your Ruby) to prevent several possible exploits while installing and using gems. Rubygems gained 101 new commits, contributed by 9 authors. There were  494 additions and 131 deletions across 47 files.

Back in January, we selected David Rodriguez for our first three-month long funded project, to work on Bundler and RubyGems. Here's his third report from that work:

> Hello everyone!
>
> It’s been two weeks with a lot of activity, not only in terms of code
> but also in terms of team discussion. We have established the goal of
> discussing the future of the bundler and rubygems integration with
> ruby-core at Ruby Kaigi. We’ve also had interesting discussions in the
> team on how to handle breaking changes going forward, and when and how
> we should deliver an upcoming release including deprecations.
>
> On bundler, I continued the work on the deprecations themselves. At this
> point, I have a clear view of the set of changes that we plan to
> release, and how we plan to deprecate the old behavior. I’m now closed
> to the point where I’ll feel comfortable cutting a release from master
> with deprecations enabled. I’ve also been compiling the work on each
> deprecation into a UPGRADING.md document that explains the reason for
> each change, and how to migrate to the new behavior. I plan to use this
> document as a draft for a release blog post.
>
> In another line of work, I’ve been polishing the CLI in general to give
> better error messages. In particular, I’m preparing a patch to thor to
> allow specifying multiple synopsis for a command. The idea here is to
> ease breaking changes like `bundle update` no longer upgrading all gems.
> In order to make this transition easier, I want to make sure `bundle
> update` gives a proper and helpful error message when being run that
> points the user to the different correct alternatives to run the
> command. Given the complicated synopsis of the current `bundle update`
> command, this patch to thor aims to make this kind of error messages
> simpler for the user to understand.
>
> In addition to all that, I continue with the regular work as a bundler
> maintainer, making code cleanups, trying to incorporate PRs to master
> that had been blocked in the past because of having to support old
> rubies, and also continuing the work on getting ready for a docker-based
> CI (which we’ve also discussed internally too).
>
> On rubygems, I continued to cleanup code in master and deprecated a
> bunch of unused methods. I also continued the discussion on how to get
> `gem install` respecting ruby version and rubygems version constraints
> on the gem being installed. Migrating rubygems to use Bundler’s Compact
> API seems like the best solution since other experiments we’ve been
> doing on making the filtering on the client side require downloading an
> excessive amount of gems, which causes installation to be unbearably
> slow. Adding support for the compact API in rubygems is the hardest
> solution, but the best one, and will also be a big step forward towards
> a future unification of rubygems & bundler.
>
> Will keep you posted in future reports.
>
> Best,
>
> David.

Two weeks later, here's his fourth report overall:

Hi friends,
>
> Already eight weeks, phew. Lots of stuff going on, bundler & rubygems
> are slowly becoming better software :)
>
> During the previous two weeks I kept making progress as we move towards
> a release including deprecations enabled. The more work I do on
> providing a proper deprecation path for our users, the more stuff I find
> out that needs to be done. But, I feel I’ve done a lot of progress with
> this and I’ve now gone through most things. I wrote an upgrading
> document where I talk about each breaking change, the motivations behind
> it, and what the migration path will be. I also managed to remove some
> unnecessary breaking changes and feature toggles. Besides that, I think
> all these efforts have led to the core team have a better and more
> consensual vision of the changes that will be made and their
> motivations. Many of these changes have been there waiting on master for
> a long time, so I think it was useful to have another pass over them,
> and evaluate whether they still make sense, and whether the planned
> migration still works.
>
> Something I have also made progress with is to keep improving the
> integration of default gems in the ecosystem. Default gems are great but
> require rubygems and bundler to be very careful about which gemified
> libraries they use, and when. Loading default gems too early results in
> a specific versions of them being activated, which might conflict with
> the final version end users end up specifying inside their gemfiles. I
> have fixed several of these issues, and kept improving the installation
> of default gems, making it more consistent with the installation of
> standard gems, and more similar to ruby-core’s default gem installer.
>
> We have also started several important conversations that I hope will
> lead to further progress:
>
> * The bundler & rubygems merge. We started deduplicating some code, and
> I improved the current infrastructure that ensures master-to-master
> compatibility between both repositories. I also started several
> experiments about how the merge should happen. We will have deeper
> discussions with the ruby-core team about this soon.
>
> * The default Rails binstub. I started a discussion in Rails about
> whether it should become a standard bundler binstub, thus making
> maintenance easier and conflicts less likely.
>
> And as always, I try to keep fully involved in the regular maintenance
> of both repositories, by reviewing PRs, fixing bugs, making the
> development environment friendlier to other developers and keeping
> master CI’s green against the latest versions of ruby.
>
> I’ll keep you posted in future reports,
>
> Best,
>
> David.


## rubygems.org news

In March, we migrated from a self-hosted Postgres instance to RDS. After we did that, we noticed a reduction in response time of some of our slowest endpoints by up to half! It was a pleasant surprise. We also updated our webhook functionality to send requests for yank events, which will help third party applications keep their state in sync with rubygems.org. We fixed the issue of password reset not asking the OTP from users who have enabled MFA. We also dropped a dependency on an unmaintained gem (dynamic\_form) and incorporated the section of code we were using into our own repository. Lastly, we added Japanese translation to our site, thanks to @m1kit.

This month, RubyGems.org gained 34 new commits, contributed by 9 authors. There were 668 additions and 172 deletions across 43 files.


## gemstash news

Gemstash had a relatively quiet month, with some ongoing investigation of a memory leak and some general cleanup and maintenance of the test suite to run against the latest versions of Ruby. This month, Gemstash gained 8 new commits, contributed by 4 authors. There were 8 additions and 8 deletions across 4 files.


## budget &amp; expenses

In March, we saw $25,145.47 in total income, and spent a total of $25,995.27.

* $14,163 for 94.4 hours worked on Bundler at $150/hour
* $4,670 for 31.1 hours worked on RubyGems.org at $150/hour
* $915 for 6.1 hours worked on RubyGems at $150/hour
* $1,740 for 11.6 hours worked on other OSS and devtools at $150/hour
* $80.37 on dedicated servers for RubyBench.org
* $812.12 on payment processing fees
* $1,976.62 on company overhead like hosting, services, software, hardware, taxes, etc
* $375.0 on accounting, copywriting, design, and other professional services
* $1,263.66 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
