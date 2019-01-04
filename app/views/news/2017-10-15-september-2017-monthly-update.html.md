---
summary: In September, we paid for 182.6 hours of developer work, shipped a RubyGems security release, and funded the new Ruby Toolbox.
---

Hello! Welcome to the monthly update. During September, our work was supported by [reinteractive](https://reinteractive.com/), [Stripe](https://stripe.com), [Bleacher Report](http://www.bleacherreport.com), [GitLab](https://about.gitlab.com), and many others.

Since the last update, we shipped a security release of RubyGems, hired a new developer to work on security, funded the new Ruby Toolbox, and patched RubyGems.org to protect it from a newly-found variant of an old security hole.

## ruby together news

In September, Ruby Together was supported by 138 different companies, including Ruby member [reinteractive](https://reinteractive.com) and Sapphire member [Stripe](https://stripe.com), and one new company.  On top of those companies, 3 people signed up as members or friends of Ruby Together, including Stanislav (Stas) Katkov and Abu Nashir. In total, we were supported by 98 individual members and 70 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

The other Ruby Together news is pretty exciting!

To start with, we've brought on [@claudijd](https://twitter.com/claudijd) as a new developer, focused on security improvements for RubyGems. He'll be helping respond to security researcher reports, fix security issues, and do all of the inevitable paperwork that results.

Next, we're extremely excited to announce that we are funding the upcoming, new, and improved [Ruby Toolbox](https://github.com/rubytoolbox/rubytoolbox)! We'll be paying [@thedeadserious](https://twitter.com/thedeadserious) to rebuild the Ruby Toolbox back to its former glory, and beyond!

If you're interested, you can also [read the announcement from the Ruby Toolbox side](https://github.com/rubytoolbox/rubytoolbox/issues/1#issuecomment-333950079), or just keep reading to reach the very first Ruby Toolbox monthly update.

## bundler news

Bundler progress in September was steady. Along with @segiddins finishing off the last of his full-time summer hours, @arbonap continued to localize docs into Spanish, including automated tests for the Spanish documentation.

We released the 1.16 prerelease, discovered some bugs, fixed them, and [removed the message asking users to upgrade to prerelease versions](https://github.com/bundler/bundler/pull/6031). We're expecting a final 1.16 release sometime this month, since the latest prerelease is looking pretty stable.

After that, we'll be starting on the path to 2.0: updating documentation, writing blog posts, testing the upgrade path, and more. Most of all, we'll be making sure that Bundler 1.x and 2.x can coexist peacefully, so that no one is forced to upgrade or downgrade because of the projects they work on.

This month, Bundler gained 104 new commits, contributed by 14 authors. There were 1,220 additions and 417 deletions across 65 files.

## rubygems.org news

It was a quiet month for RubyGems.org&hellip; aside from the giant security issue, and the scramble to patch it, and then check every single existing gem to make sure it hadn't been tampered with anytime in the last few years. The security issue was a big one, and potentially allowed any attacker to do anything they wanted to the RubyGems.org servers.

After adding fixes just to the RubyGems.org server, the combined RubyGems and RubyGems.org teams ultimately decided to patch RubyGems itself to ensure that this kind of issue can't happen on other computers that use RubyGems, or other servers. For more information, check out [the RubyGems blog post about the security issue and its impact](http://blog.rubygems.org/2017/10/09/unsafe-object-deserialization-vulnerability.html).

This month, Rubygems.org gained 4 new commits, contributed by 3 authors. There were 12 additions and 10 deletions across 7 files.

## rubygems news

RubyGems itself saw only a little bit of activity this month. As a result of @hsbt's heroic work, Bundler has been merged into the version of RubyGems that ships with Ruby itself! Now we'll need to keep changes in sync between all three of ruby-core trunk, the RubyGems master branch, and the Bundler master branch. Oh boy. 😬

On the bright side, you can already check out the fruits of all these teams' labor in [Ruby 2.5-preview1](https://www.ruby-lang.org/en/news/2017/10/10/ruby-2-5-0-preview1-released/). When you install Ruby 2.5, Bundler is included! 🎉

This month, Rubygems gained 10 new commits, contributed by 4 authors. There were 11 additions and 10 deletions across 5 files.

## gemstash news

Gemstash saw a few fixes and upgrades land this month, thanks to contributors @olleolleolle and @koic. It gained 13 new commits, contributed by 4 authors. There were 9 additions and 8 deletions across 5 files.

## ruby toolbox news

Hello everyone, great to be here :) I only just got started on bringing the Ruby Toolbox back the last week, but there's already a place you can contribute to if you'd like: The categorization catalog is now on Github, and your help in cleaning it up, bringing it back up to date and expanding it is very welcome: [github.com/rubytoolbox/catalog](https://github.com/rubytoolbox/catalog).

In the next weeks I will be working on the core app itself, trying to bring it back online as quickly as possible and expanding from there. Over at GitHub, you can read [a more detailed outlook on my planned next steps](https://github.com/rubytoolbox/rubytoolbox/issues/1#issuecomment-333950079).

> &mdash; Christoph Olszowka, @thedeadserious

## budget &amp; expenses

In September, we saw $25,145.47 in total income, and spent a total of $32,545.28.

* $16,915 for 112.8 hours worked on Bundler at $150/hour
* $1,590 for 10.6 hours worked on RubyGems.org at $150/hour
* $5,967.50 for 39.8 hours worked on RubyGems at $150/hour
* $2,902.50 for 19.4 hours worked on other OSS and devtools at $150/hour
* $80.37 on dedicated servers for RubyBench.org
* $811.53 on payment processing fees
* $2,469.72 on company overhead like hosting, services, software, hardware, taxes, etc
* $545 on accounting, copywriting, design, and other professional services
* $1,263.66 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
