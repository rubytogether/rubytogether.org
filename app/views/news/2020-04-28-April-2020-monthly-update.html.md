---
summary: In April, we paid for 96.1 hours of developer work, updated our CI to ruby 2.7, and completed several updates and optimizations for Ruby Gems and RubyGems.org.
---

Hello! Welcome to the monthly update. During April, our work was supported by  [Zendesk](https://www.zendesk.com), [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), [Bleacher Report](http://www.bleacherreport.com), and many others.

## ruby together news

> What a long month. Stay safe, healthy, and be understanding with yourselves, everyone. <3
>
> &mdash; André

Since our last update, Ruby Together was supported by 46 different companies, including Sapphire member [Stripe](https://stripe.com). 2 companies joined as new members.


On top of those companies, 4 new developers signed up as members, including Jared White, Manuel Meurer, and Ilya Zub. In total, we were supported by 105 developer members. Thanks to all of our members for making everything that we do possible. &lt;3

## rubygems news 

In case you missed our announcement last month: all ongoing work on Bundler and RubyGems now takes place inside `RubyGems/RubyGems` as, excitingly, we completed [merging](https://rubytogether.org/news/2020-04-02-March-2020-monthly-update#bundler.news) the two projects into one repository. 

RubyGems changes in April included a fix for a recent regression in RubyGems to interfere with common bundler usages, improvement to a missing spec error, and shipping a new RSpec runner that works better with parallelization. We also updated our CI to ruby 2.7 and made a PR to manage bundler development dependencies through bundler.

This month, Rubygems gained 181 new commits, contributed by 15 authors. There were 1,857 additions and 1,015 deletions across 132 files.

## rubygems.org news

In April, we worked on keeping RubyGems.org dependencies up to date. We also sent an email notification requesting users to enable MFA, leading to a threefold increase in MFA enabled accounts (Thank you @aditya!).

In addition to those developments, we worked on the following:

* Merging bundler-site and RubyGems guides PRs.
* Updating our ElasticSearch Index to support prefix queries; previously these were returning incomplete search results.
* Investigating Intermittent CI failure rubygems/bundler-site/issues/519.
* Working on a PR to add validation to string columns with user input rubygems/rubygems.org#2346.
* Fixing the broken animation on the stats page and ensuring Github stars count were using the metadata URI attributes rubygems/rubygems.org#2335.
* Working on optimizations for our stats and just_updated endpoints; this will help us reduce 1200ms and 600ms in response time respectively. rubygems/rubygems.org#2333.
* Finishing work on reset of rate limit on successful gem push rubygems/rubygems.org#2311.

@johnfrancismccann helped us to make sure our releases page shows a consistent number of items per page.

For the month, Rubygems.org gained 70 new commits, contributed by 8 authors. There were 337 additions and 143 deletions across 39 files.


## ruby toolbox news

Hey everyone,

I hope you're safe and well! As mentioned in the previous update I investigated and fixed an issue with the github repo syncing mechanism via https://github.com/rubytoolbox/rubytoolbox/pull/649 and did some additional maintenance like Rails 6 upgrade, other dependency upgrades and such. The API has now also received the official announcement blog post, which you can find at https://www.ruby-toolbox.com/blog/2020-04-29/api-for-project-data. 

In May I will do some additional maintenance like Ruby 2.7 upgrade and review catalog submissions, plus looking into some additional tooling around the API.

Best and stay safe,
Chris

## budget &amp; expenses


In April, we saw $20,283.95 in total income, and spent a total of $18,975.44.

* Stripe Payment Processing Fees $415.53  
* Employee Related $310.23  
* General & Administrative $184.91  
* IT & Software $691.00  
* Professional Fees	$3,369.00
* 96.1 Hours of development work  $14,420.30  


Until next time,<br>
Irene, André, and the Ruby Together team
