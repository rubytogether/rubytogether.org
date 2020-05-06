---
summary: In March, we paid for 123.5 hours of developer work, retired the Bundler repository and GitHub organization, and completed many fixes and improvements for the RubyGems.org website.
---

Hello! Welcome to the monthly update. During April, our work was supported by 

## ruby together news

> 
>
> &mdash; André

Since our last update, Ruby Together was supported by (insert ##) different companies, including Ruby members [Stripe](https://stripe.com) and [Handshake](https://handshake.org). In that time, (insert ##) other companies joined as new members.

On top of those companies, (insert ##) new developers signed up as members, including (insert names). In total, we were supported by (insert ##) developer members. Thanks to all of our members for making everything that we do possible. &lt;3

## rubygems news 

In case you missed our announcement last month: all ongoing work on Bundler and RubyGems now takes place inside `RubyGems/RubyGems` as, excitingly, we completed merging the two projects into one repository (insert link to Bundler section from March update). 

RubyGems changes in April included a fix for a recent regression in RubyGems to interfere with common bundler usages, improvement to a missing spec error, and shipping a new RSpec runner that works better with parallelization. We also updated our CI to ruby 2.7 and made a PR to manage bundler development dependencies through bundler.

This month, Rubygems gained 181 new commits, contributed by 15 authors. There were 1857 additions and 1015 deletions across 132 files.

## rubygems.org news

In April, we worked on keeping RubyGems.org dependencies up to date. Aditya helped us enable MFA on rg.org leading to 42% improvement in MFA coverage and an increase in MFA enabled accounts.

In addition to those developments, we worked on the following:

	•	Merging bundler-site and RubyGems guides PRs.
	•	Investigating Intermittent CI failure rubygems/bundler-site/issues/519.
	•	PR to add validation to string columns with user input rubygems/rubygems.org#2346
	•	fix broken animation on stats page rubygems/rubygems.org#2335
	•	PR to optimize query used in just_updated endpoint cuts ~1200ms from response time. rubygems/rubygems.org#2333
	•	finish work on reset of rate limit on successful gem push rubygems/rubygems.org#2311

For the month, Rubygems.org gained 70 new commits, contributed by 8 authors. There were 337 additions and 143 deletions across 39 files.


## ruby toolbox news

Hey everyone,

I hope you're safe and well! As mentioned in the previous update I investigated and fixed an issue with the github repo syncing mechanism via https://github.com/rubytoolbox/rubytoolbox/pull/649 and did some additional maiintenance like Rails 6 upgrade, other dependency upgrades and such. The API has now also received the official announcement blog post, which you can find at https://www.ruby-toolbox.com/blog/2020-04-29/api-for-project-data
In May I will do some additional maintenance like Ruby 2.7 upgrade and review catalog submissions, plus looking into some additional tooling around the API.

Best and stay safe,
Chris

## budget &amp; expenses


In March, we saw $ in total income, and spent a total of $.

* Stripe Payment Processing Fees $
* Employee Related $
* General & Administrative $
* IT & Software $
* Professional Fees	$
* 123.5 hours of development work $

Until next time,<br>
Irene, André, and the Ruby Together team
