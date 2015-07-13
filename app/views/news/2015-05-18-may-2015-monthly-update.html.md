---
summary: For our second month, Bundler made five bugfix releases, three prerealeses, and pushed the 1.10 release candidate. RubyGems.org finally started deleting gems when they are yanked.
---
<% title "May 2015 Monthly Update" %>

Hello! Welcome to the second Ruby Together monthly update, for May 2015.

## Projects

This month, Ruby Together was able to fund 20 hours of maintenance and development work on Bundler, and 20 hours of maintenance and development work on RubyGems.org, as well as the hosting costs for RubyBench.org.

As more members join Ruby Together, we'll be able to fund more development work and complete more useful and exciting plans. In the next few weeks, we'll be revealing more details about those plans and how members can help us get them done.

## Bundler work log

Since last month, Bundler released a lot of new versions: 1.7.15, 1.9.5, 1.9.6, 1.9.7, 1.9.8, 1.9.9, 1.10.0.pre.1, 1.10.0.pre.2, 1.10.0.pre.2, and 1.10.0.rc.

The 1.9.5-1.9.9 releases fixed various bugs in the 1.9 series as they were found. Happily, none of those minor bugs were the result of the new resolver, making Molinillo a resounding success.

The big news this month is that version 1.10 has reached Release Candidate! This version includes a boatload of new features: optional groups, conditional gem installation, inline gemspecs for scripts, the lock command, dramatically improved outdated output, a 10x speedup while resolving slow Gemfiles, and more.

Read more about the exact changes in [the changelog](https://github.com/bundler/bundler/blob/1-10-stable/CHANGELOG.md), install the RC by running `gem install bundler --pre`, and try it out!

We also worked on changes that will become part of version 1.11, writing code that allows Bundler to understand the long-planned new index format. Once it's done, running `bundle install` will be way faster, no matter where you are in the world.

## RubyGems.org work log

RubyGems.org maintenance this month included security upgrades, gem upgrades, ongoing work on the logging system, and starting an upgrade of the deploy system.

Development work included several small fixes and upgrades, and the large change of deleting yanked gems immediately when they are yanked. All previously-yanked gems have now been deleted, and all of the RubyGems.org help tickets about deleting yanked gems have been resolved.

## Meet the team!

In the next month, André will be speaking at [RedDotRubyConf](http://www.reddotrubyconf.com) in Singapore, [RubyNation](http://www.rubynation.org) in Washington DC, and [MagmaConf](http://magmaconf.com) in Manzanillo, Mexico. If you see him, be sure to say hello and ask for a Ruby Together sticker!

## Coming up…

During the month of June, the RubyGems.org team will be working on upgrading the deploy system and the centralized logging service.

The Bundler team will be squashing bugs and writing documentation to finish the 1.10 release, as well as continuing work on version 1.11. Faster `bundle install`, here we come!

## New members

In the last month, 11 individual members joined Ruby Together, including Yang Bo, Paul Campbell, Serene Careaga, and Janis Miezitis.

Thanks for the support, everyone!

If your company hasn't joined Ruby Together yet, let them know about it! Ruby Together is both [good and good for companies](https://rubytogether.org/companies), and we'll be able to do more for the community as more companies join us.

Until next time,  
André & the Ruby Together team

