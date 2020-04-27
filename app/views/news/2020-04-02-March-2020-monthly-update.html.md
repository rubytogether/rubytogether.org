---
summary: In March, we paid for 123.5 hours of developer work, retired the Bundler repository and GitHub organization, and completed many fixes and improvements for the RubyGems.org website.
---

Hello! Welcome to the monthly update. During March, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), [Bleacher Report](http://www.bleacherreport.com), and many others.

## ruby together news

> Phew. It’s been a long time since we posted an update. Some overwhelming life events happened, and I prioritized keeping the open source work happening over writing updates every month. And now it’s a global pandemic, which is not exactly un-overwhelming.
>
> Trying to backfill everything that happened would be a herculean task, so we’ll have to summarize: in 2019, Ruby Together paid open source developers $233,000 for over 1,550 hours of Ruby open source development and maintenance work. Those hours were spread across Bundler, RubyGems, RubyGems.org, Gemstash, the Ruby Toolbox, BridgeTroll, SimpleCov, and other projects. We also ran a session of RubyMe, spending $16,200 to ensure 6 pairs of mentors and apprentices could work together on various Ruby open source projects for 12 weeks. Now that we’ve summarized 2019, we’ll have a full update for the last month and then try to keep up from here on out.
>
> The good news is that we’ve got new additions to the team to keep the updates flowing, which should make them significantly more consistent. A very enthusiastic welcome is due to Irene Kannyo and Gift Egwuenu, who will be helping with content/copywriting and technical writing, respectively.
>
> &mdash; André

Since our last update, Ruby Together was supported by 46 different companies, including Ruby members [Stripe](https://stripe.com) and [Handshake](https://handshake.org). In that time, 4 other companies joined as new members.

On top of those companies, 26 new developers signed up as members, including Matt Sias, Ollie Bennett, @MikeRogers0, Mike Boone, Crawford Wynnes, Philip Arndt, Jimmy Chu, Tobias Pfeiffer, Thomas Powell, Shupport, Brandon Weaver, Michelle Ng SY, Pascal Wengerter, David Revelo, Michael Verret Jr, and Jared White. In total, we were supported by 108 developer members. Thanks to all of our members for making everything that we do possible. &lt;3

## ruby me news

Although our last RubyMe session wasn't in March, we wanted to highlight our successful RubyMe session during 2019. We received almost 100 applications from prospective apprentices and about a dozen applications from prospective mentors. Our budget let us accept six mentor/apprentice pairs, and each pair worked together for 12 weeks between May and August 2019. They were able to contribute to several Ruby open source projects including [Ruby on Rails](https://rubyonrails.org), [If-me](), [Dev.to](), [Homebrew](), [Gemstash](), and [Babywearing]() from [Ruby for Good]().

We're proud to report that two of our mentees landed jobs shortly after the session closed. Congrats to both of them!

If you want to know right away next time we're able to open applications, sign up for our RubyMe-only newsletter at [rubyme.org](https://rubyme.org).

Future RubyMe sessions will happen as often as we are able to set aside budget for them, but current circumstances mean we're not sure how soon that will be. If your company would be interested in sponsoring our next RubyMe session, please [get in touch](mailto:hello+rubymesponsor@rubytogether.org)!


## google summer of code news

Google Summer of Code is upon us again, and this year the inimitable volunteers [@hiren](https://github.com/hmistry) and [@zoras](https://github.com/zoras) have stepped up from mentoring last year to running the program this year. Ruby Together is less directly involved, but is still providing advice, backup administrators, and mentorship for some student projects. Students have finished applying, and the selection process is currently ongoing. We’re excited to see what they’re able to accomplish this summer!


## bundler news

Amazingly, all that work that the entire Bundler and RubyGems teams have been working at for years has paid off in a really big way: Bundler and RubyGems have merged repositories! On GitHub, `bundler/bundler` is archived, and all ongoing work on both projects now takes place inside `RubyGems/RubyGems`. All other repositories from the Bundler organization have either been archived (if unused) or moved to the RubyGems organization.

Not just the repositories have changed, either: the Bundler and RubyGems teams have merged as well. It’ll take us some time to work through 20 years worth of documentation and webpages, but we’ll be combining and updating them as fast as we can.

From this point forward, Bundler news will be reported together with RubyGems news. Hooray! 🎉


## rubygems news

As mentioned above, the huge news is that Bundler merged into RubyGems! Major props to @hsbt for sending the PR to combine repositories, as well as @deivid-rodruiguez for helping troubleshoot, fix CI, and get the PR landed.

On top of that huge accomplishment, RubyGems saw ongoing maintenance and bugfixes, improved tests on JRuby, better deprecation warnings, and fixes for the internal bot that labels PRs and issues. The RubyGems team spent time to get more familiar with newly imported Bundler issues, and the Bundler team spent time getting more familiar with RubyGems, as well as the usual PR review and issue triage.

In March, RubyGems gained [more than 10,000 new commits](https://github.com/rubygems/rubygems/compare/master@%7B2020-03-01%7D...master@%7B2020-03-31%7D) (which includes all of Bundler's history!) contributed by 21 authors. There were 96,617 additions and 961 deletions across 1,423 files.


## rubygems.org news

In March, thanks to Aditya and Colby we were able to update most of our gem dependencies, which included a security release to Rails. Additionally, he helped us fix the incorrect rate limit on the gem push endpoint. This should be a big improvement for users with high release volume like AWS, which publishes hundreds of gems every time they update `aws-sdk`. We also resolved some related rate limit issues with multi-factor authentication.

To mitigate against typo-squatting, we were previously maintaining a protected list of gem names using the Levenshtein distance. Unfortunately, the check turned out to be too strict, and caused more problems than it was solving. We have disabled it for now, and we are looking into other ways to deal with typo-squatting. Thank you for bearing with us while we figure this out.

Aditya was also able to complete a grab bag of other useful work, including:

* revisit adoptions PR/issues
* help a gsoc student write RFC for the ownership changes [rubygems/rfcs#25](https://github.com/rubygems/rfcs/issues/25)
* fix incorrect backoff on mfa endpoints beside gem push [rubygems/rubygems.org#2270](https://github.com/rubygems/rubygems.org/issues/2270)
* PR to migrate nginx to sidecar in staging deployment [rubygems/rubygems.org#2291](https://github.com/rubygems/rubygems.org/issues/2291)
* PR to support prefix match [rubygems/rubygems.org#2308](https://github.com/rubygems/rubygems.org/issues/2308)
* PRs to fix several open issues [rubygems/rubygems.org#2315](https://github.com/rubygems/rubygems.org/issues/2315), [#2316](https://github.com/rubygems/rubygems.org/issues/2316), [#2317](https://github.com/rubygems/rubygems.org/issues/2317).
* debug 429 for info endpoint on nginx
* debug partial requests being logged as not cacheable by fastly

For the month, RubyGems.org received [80 commits](https://github.com/rubygems/rubygems.org/compare/master@%7B2020-03-01%7D...master@%7B2020-03-31%7D) from 6 authors, who made 294 additions and 206 deletions across 17 files.


## ruby toolbox news

Hey everyone,

last month I wrapped up and launched an API for Ruby Toolbox which allows you to query project data. While it has not received the full announcement blog post treatment yet, you can still [read the project API docs](https://www.ruby-toolbox.com/pages/docs/api/projects), and an official API client is available as a gem at [rubytoolbox/rubytoolbox-api](https://github.com/rubytoolbox/rubytoolbox-api).

For this month apart from officially launching the API I will mainly investigate and resolve some issues on the project updates that recently emerged, leading to many projects displaying wrongly their github repos being gone, see [rubytoolbox/rubytoolbox#615](https://github.com/rubytoolbox/rubytoolbox/issues/615).

I hope you all get through the ongoing crisis well and wish you all the best,
Chris

## budget &amp; expenses

Since our last update, we've changed bookkeepers, and we plan to use budget reports directly from the professionals from now on. With that said, here's our budget for March 2020.

In March, we saw $21,351.16 in total income, and spent a total of $25,995.27.

* Stripe Payment Processing Fees $376.94
* Employee Related $135.71
* General & Administrative $3,328.13
* IT & Software $1,072.74
* Professional Fees	$319.00
* 123.5 hours of development work $18,519.59

Until next time,<br>
Irene, André, and the Ruby Together team
