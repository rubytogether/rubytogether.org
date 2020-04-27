---
summary: In March, we paid for xxx hours of developer work, [write brief summary of what we did during the month.]
---

Hello! Welcome to the monthly update. During March, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), [Bleacher Report](http://www.bleacherreport.com), and many others.

## ruby together news

> Phew. It’s been a long time since we posted an update. Some overwhelming life events happened, and I prioritized keeping the open source work happening over writing updates every month. And now it’s a global pandemic, which is not exactly un-overwhelming.
>
> Trying to backfill everything that happened would be a herculean task, so we’ll have to summarize: in 2019, Ruby Together paid open source developers $233,000 for over 1,550 hours of Ruby open source development and maintenance work. Those hours were spread across Bundler, RubyGems, RubyGems.org, Gemstash, the Ruby Toolbox, BridgeTroll, SimpleCov, and other projects. We also ran a session of RubyMe, spending $16,200 to ensure 9 pairs of mentors and apprentices could work together on various Ruby open source projects for 12 weeks. Now that we’ve summarized 2019, we’ll have a full update for the last month and then try to keep up from here on out.
>
> The good news is that we’ve got new additions to the team to keep the updates flowing, which should make them significantly more consistent. A very enthusiastic welcome is due to Irene Kannyo and Gift Egwuenu, who will be helping with content/copywriting and technical writing, respectively.
>
> &mdash; André

Since our last update, Ruby Together was supported by 46 different companies, including Ruby members [Stripe](https://stripe.com) and [Handshake](https://handshake.org). In that time, 4 other companies joined as new members.

On top of those companies, 26 new developers signed up as members, including Matt Sias, Ollie Bennett, @MikeRogers0, Mike Boone, Crawford Wynnes, Philip Arndt, Jimmy Chu, Tobias Pfeiffer, Thomas Powell, Shupport, Brandon Weaver, Michelle Ng SY, Pascal Wengerter, David Revelo, Michael Verret Jr, and Jared White. In total, we were supported by 108 developer members. Thanks to all of our members for making everything that we do possible. &lt;3



## bundler news

Amazingly, all that work that the entire Bundler and RubyGems teams have been working at for years has paid off in a really big way: Bundler and RubyGems have merged repositories. On GitHub, `bundler/bundler` is archived, with all ongoing work on either project now taking place inside `rubygems/rubygems`. All other repositories from the Bundler organization have either been archived (if unused) or moved to the RubyGems organization.

Not just the repositories have changed, either: the Bundler and RubyGems teams have merged as well. It’ll take us some time to work through 20 years worth of documentation and webpages, but we’re planning to combine and update them as fast as we can.

Starting with the next update, Bundler news will be reported together with RubyGems news. Hooray!

[BUNDLER CHANGES](https://github.com/bundler/bundler/compare/master@%7B2019-07-01%7D...master@%7B2019-07-31%7D)

This month, Bundler gained 0 new commits, contributed by 0 authors. There were 0 additions and 0 deletions across 0 files.

## rubygems.org news

In March, thanks to Aditya and Colby we were able to update most of our gem dependencies, which included a security release to Rails. Additionally, he helped us fix the incorrect rate limit on the gem push endpoint. It was a huge relief for users with high release volume like awscloud. We resolved the same issues of rate limit on other endpoints with MFA.

To mitigate against typo-squatting, we were maintaining a protected list of gem names using the Lavestine distance. The check against the protected list has been temporarily disabled; it was creating more issues than it was solving. We are looking into alternate ways of dealing with the issue of typo-squatting. Thank you for bearing with us while we figure this out.

[RUBYGEMS.ORG CHANGES](https://github.com/rubygems/rubygems.org/compare/master@%7B2019-07-01%7D...master@%7B2019-07-31%7D) 

Last month, rubygems.org received 76 commits from 6 authors, who made  287 additions and 204 deletions across 13 files.


## rubygems news

Ruby Gems saw general maintenance and work on deprecations warnings improvements, as well as a fix to our internal bot that label PR's and issues. One of our developers on this project Louis also reviewed PR's, triaged issues, began to get familiar with Bundler issues as a part of the Bundler and RubyGems merging process. 

[RUBYGEMS CHANGES](https://github.com/rubygems/rubygems/compare/master@%7B2019-07-01%7D...master@%7B2019-07-31%7D)

This month, Rubygems gained 63 new commits, contributed by 8 authors. There were 476 additions and 222 deletions across 32 files.

## gemstash news

(should we leave this section out for this month?)

We didn't have any new changes to Gemstash this month, although Louis reviewed and followed up on a related Google Summer of Code proposal (more on that later).

[GEMSTASH CHANGES](https://github.com/bundler/gemstash/compare/master@%7B2019-07-01%7D...master@%7B2019-07-31%7D)

This month, Gemstash gained 0 new commits, contributed by 0 authors. There were 0 additions and 0 deletions across 0 files.

## ruby toolbox news

Hey everyone,

last month I wrapped up and launched an API for Ruby Toolbox which allows you to query project data. While it has not received the full announcement blog post treatment yet you can find the docs at https://www.ruby-toolbox.com/pages/docs/api/projects and an official API client is available as a gem, see https://github.com/rubytoolbox/rubytoolbox-api

For this month apart from officially launching the API I will mainly investigate and resolve some issues on the project updates that recently emerged, leading to many projects displaying wrongly their github repos being gone, see https://github.com/rubytoolbox/rubytoolbox/issues/615

I hope you all get through the ongoing crisis well and wish you all the best,
Chris

## ruby me news

Although this work didn’t happen in March, we wanted to highlight our successful RubyMe session in Q2 of last year. We received over [900] applications from prospective apprentices and over [125] applications from prospective mentors. We selected nine pairs: 

Ifunanya [last name] (mentee) and Jan [last name] (mentor)
Alicia [last name] (mentee) and Juan [last name] (mentor) 
Niko [last name] and (mentee) Maryam [last name] (mentor)
Janessa [last name] (mentee) and Bracken [last name] (mentor)
Morgan [last name] (mentee) and Alexis [last name] (mentor)

[insert last three pairs] 

The pairs worked together from May through July 2019 on projects including Ruby on Rails, If-me, Dev.to, Homebrew, Gemstash, CDN (?), ActiveRecord (?), a Google profile images feature, and the Babywearing open source project  

Two of our mentees — Alicia and Janessa — landed jobs shortly after our session closed. Congrats!  

[Optional: Current status/future plans (e.g. "We plan to open applications for Spring 2019 around the middle of December. If you'd like to get an email right away when we next open applications for Ruby Me, visit rubyme.org and sign up to be notified at the bottom of the page.")]

## google summer of code news

Google Summer of Code is upon us again, and this year the inimitable volunteers [@hiren](https://github.com/hmistry) and [@zoras](https://github.com/zoras) have stepped up from mentoring last year to running the program this year. Ruby Together is less directly involved, but is still providing advice, backup administrators, and mentorship for some student projects. Students have finished applying, and the selection process is currently ongoing. We’re excited to see what they’re able to accomplish this summer!

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
