---
summary: In July, we paid for 90 hours of developer work, released Bundler 1.16.3, and started testing an alpha release of two-factor authentication for RubyGems.org.
---

Hello! Welcome to the monthly update. During July, our work was supported by [Coinbase](https://coinbase.com), [Cloud City Development](http://www.cloudcity.io), [reinteractive](https://reinteractive.com/), and many others.

## ruby together news

In July, Ruby Together was supported by 74 different companies, including Sapphire member [Stripe](https://stripe.com). In total, we were supported by 79 individual members and 66 friends of Ruby Together. Thanks to all of our members for making everything that we do possible!

The Ruby Together Board of Directors met, and was able to finalize and ratify a plan for a new Ruby open source mentorship program called RubyMe--stay tuned for an official announcement with more details!

In community news, Developer Evangelist [PJ Hagerty](https://twitter.com/aspleenic) continued to spread the word about Ruby Together at RubyConf Kenya. Our Google Summer of Code (GSoC) students made progress on the `bundle change` feature, and they also worked on a comment that rewrites a Gemfile into a canonical form. And [Kerri Miller](https://twitter.com/kerrizor) addressed outstanding issues in the RubyGems and RubyGems.org support queues.

## bundler news

We released Bundler 1.16.3 on July 17. The new release includes support for the upcoming Ruby 2.6, and fixes several bugs including symlink handling, temporary file handling, and improving error messages around filesystem access and installation errors.

Since we announced the new RFC process last month, we’ve seen new comments and new proposals in the [Bundler RFC repo](https://github.com/bundler/rfcs/pulls). If you're interested in ideas for the future of Bundler, definitely take a look. Keep the comments and suggestions coming!

In other exciting news, we added a new contributor to the core team. Welcome [David Rodríguez](https://github.com/deivid-rodriguez) to Bundler! :tada: Probably best known for his work on the `byebug` debugger gem, David was the driver behind updating gem templates to check in lockfiles, as well as work around ensuring that Bundler 2 will work on existing applications when it is released.

This month, Bundler gained 63 new commits, contributed by 8 authors. There were 1,442 additions and 72 deletions across 33 files.

## rubygems.org news

In July, we updated 15 dependencies in RubyGems.org, and we released the alpha version of [two-factor authentication](https://github.com/rubygems/rubygems.org/pull/1729) for logging into the website. If you’d like to try it now, enable it by running `document.cookie='mfa_feature=true;path=/'` in your browser console. We’re working on adding support for multiple factors to the CLI as well, and you should see more updates on it next month.

We also fixed a few small bugs around the dashboard and Atom feeds for users who are logged out.

This month, RubyGems.org gained 38 commits from 4 authors, making 1,124 additions and 183 deletions across 84 files.

## rubygems news

RubyGems saw better symlink handling, some improved warning messages, and better testing on windows. We also made the flags for the `pristine` and `cleanup` commands more consistent with the existing `install` command, and did some code cleanup. Finally, we imported some fixes from ruby-core to make sure RubyGems continues to work when OpenSSL is not available in Ruby.

This month, RubyGems gained 70 new commits, contributed by 9 authors. There were 429 additions and 186 deletions across 41 files.

## ruby toolbox news

Hey everyone,

Last month I did some maintenance work by [upgrading to Rails 5.2](https://github.com/rubytoolbox/rubytoolbox/pull/214) and addressing some common issues found when [syncing data from GitHub](https://github.com/rubytoolbox/rubytoolbox/pull/246).

In order to reduce errors stemming from fetching old projects multiple times, I added logic to ignore old GitHub references from gems for 14 days to allow us to unblock them if they reappear. Currently, this affects approximately 11,000 projects (note that renaming owners and moved ownership should redirect properly to the new location). In the future, it might make sense to indicate this in the UI for said projects somehow since these libraries seem to be unmaintained, but we'll see!

I also began work on the public database dumps I mentioned last month. They are not quite ready yet, but I expect to ship them in the next few weeks, allowing you to also look at the mentioned gone repo numbers yourself in more detail.

Once the database dumps are complete, I want to do some further syncing efficiency maintenance and work on the search improvements I already mentioned in the last update.

As always, your feedback is very welcome. If you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to everyone who contributed pull requests in July: koflerm, paneq, spape, and splashinn.

Best,
Christoph

## budget &amp; expenses

In July, we saw $15,375 in total income, and spent a total of $17,006.02.

* $3,516.88 for 23.4 hours worked on Bundler at $150/hour
* $1,095 for 7.3 hours worked on RubyGems.org at $150/hour
* $4,543.12 for 30.3 hours worked on RubyGems at $150/hour
* $2,370 for 15.8 hours worked on other OSS and devtools at $150/hour
* $2,001 for 13.3 hours worked on The Ruby Toolbox at $150/hour
* $78.28 on dedicated servers for RubyBench.org
* $493.64 on payment processing fees
* $1,475.60 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,282.50 on accounting, copywriting, design, and other professional services
* $150 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team
