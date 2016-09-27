---
summary: "Ruby Together has been around for over a year! Here's a summary of why we exist, what we've gotten done so far, and what we want to do in the future."
---

<% title "A Year of Ruby, Together" %>

[Ruby Together](https://rubytogether.org) has been around for over a year! It’s actually been about 18 months, but that didn’t sound as snappy. To celebrate, I’ve put together this summary of our history: why and how we exist, what we’ve done, and what the future holds.

So, what even _is_ Ruby Together? Ruby Together is a non-profit that pays developers to work on RubyGems, Bundler, and more, using funds from members. Members can be any person or company who uses Ruby, and the work we pay for is free for anyone to use.

But what, exactly, does that mean? And why do we need a non-profit to do this in the first place? The explanation lies the current state of the Ruby community.

## there are some problems
Put simply, the problem is that Ruby has grown up. The Ruby community has become so large that our existing community infrastructure isn’t sustainable anymore.

### the gems! they’re multiplying!
As you’ve probably noticed, Bundler makes it easier to use gems and makes it easier to create gems. Over the 6 years that I’ve spent working on Bundler, the number of gems in existence has multiplied, and the number of gem downloads has multiplied. There are now over 100,000 gems, and those gems have over a million versions.

With those million versions comes a completely unprecedented number of downloads. In the years from 2003 to the end of 2014, we tracked roughly 2 billion gem downloads. That’s 2 billion downloads over more than ten years. Then, in 2015 alone (just one year!) we served 4 billion gem downloads.

That is an _extremely_ steep increase. If we were a startup, we’d have great graphs to show VCs and convince them to give us money. But we’re not a startup. Before Ruby Together, all of RubyGems.org was maintained for free by volunteers. That’s a problem, because at the same time that usage has been increasing exponentially, volunteer help hasn’t been increasing.

### the volunteer crisis
Most people don’t realize this, but the RubyGems.org team is incredibly small. It’s never had more than four people on it, and most often has only had two. The Bundler team is even smaller—it’s never had more than two people working on it consistently, and often only one.

None of those team members were ever paid for their work. To pay their bills, every single one of them has to have a full-time job doing something else. A few volunteers giving up their nights and weekends to help the community used to be enough, but it’s not anymore. 

Using open source ethically means supporting the tools and infrastructure you use, with money or  time. Instead of supporting our community infrastructure, companies are taking community resources and then not giving back. These companies are making millions (and sometimes billions) of dollars. They could easily afford to support us, but choose not to. Let me give an example that really highlights this point.

### remember when rubygems.org got hacked?
About 3 years ago, RubyGems.org went down completely, for over a week.  There was a security issue, and although the team knew about the security issue and planned to fix it, everyone on the team had a day job. The best we could do was plan to fix the problem that weekend. Unfortunately, a motivated hacker figured out how to break to during the week.

We had to take the servers down and create completely new servers from scratch. We also had to download and verify every single one of the hundreds of thousands of .gem files, to make sure the hacker hadn’t replaced any of them while he had access.

During this time, hundreds of Ruby developers volunteered to help. This isn’t super surprising, since almost every Ruby developer and company depends on RubyGems.org in order to be able to do their work. What is terrible is that none of those volunteers could do anything useful. None of them were already familiar with how the servers worked, and helping them get up to speed would have slowed down the recovery efforts.

The worst part, though, is that once RubyGems.org was back up… all of those volunteers disappeared. None of them were wiling to get up to speed and help out when there wasn’t an emergency. Even though the RubyGems infrastructure is vitally important to all of these companies, they can’t or won’t allow their employees to help make sure it keeps working.

### the non-solution of open source jobs
At this point, you might say “Aha! But companies sometimes hire Ruby developers specifically to work on open source. Let’s just keep doing that.” While that is a great thing, and I am very glad that companies sometimes choose to do that, it is not a solution to the crisis we are facing.

Very few companies have ever hired Ruby developers to work on open source full time. Even including all of the last 10 years, I can only think of Engine Yard, Sun, AT&T, RedHat, Heroku, Shopify, GitHub. I’m sure there are others, but there can’t be that many.

Even if there were more companies doing this, though, it would still be a problem. Engine Yard is the perfect example of a very helpful company turning out to be extremely disruptive to the community. At one point in time, Engine Yard (by itself!) employed not just the Rubinius and JRuby teams, but also everyone working full-time on Rails.

Eventually, though, they decided to stop. After Engine Yard wound down their open source positions, the JRuby team had moved to another company, but the Rubinius team and Rails team no longer had any full-time developers. If a single executive at SalesForce changes their mind, most of the full-time developers on Ruby core will be out of a job. We can do better than a community dependent on one or two companies.

Ruby Together spreads the costs across many companies and people. Everyone shares the costs of paying developers, and everyone shares the benefits. Even better, that sharing means we’re not dependent on any single company to be able to do our work. A single company changing their mind or cutting costs is no longer enough to disrupt the community.

## how it came about
Working on Bundler and RubyGems over the last six years had made these problems clear to me, but most of the people I talked to didn’t think they were important problems. Bundler and RubyGems had always gotten along with work from volunteers! Companies were able to build huge and wildly profitable companies on top of Ruby open source, so everything seemed fine.

I spent years experimenting with different ideas for how Bundler and RubyGems could make enough money to support paying developers. I tested out support contracts, feature bounties, enterprise-only features, and more. None of them were enough of an improvement for companies to want to pay for them. Even worse, every option was a huge time-sink away from the actual goal of working on the open source projects.

One company was willing to support Bundler directly, without any conditions or requirements: [Stripe](https://stripe.com). Using funds from Stripe, I was able to do research, hire a lawyer, and found Ruby Together.

Ruby Together incorporated as a particular kind of non-profit company—what the U.S. government calls a “trade association”. Other trade associations you may have heard of include the Linux Foundation, the Jquery Foundation, and the Sqlite Foundation, but the best-known example is the American Dairy Farmers’ Association.

The American Dairy Farmers’ Association pays for the “Got Milk?” ad campaigns. Those ad campaigns cost more than a single dairy farmer could afford, but they benefit all dairy farmers by promoting milk. Each trade association uses membership dues to fund community projects that benefit all members of that trade, whether they belong to the association or not.

## what we’ve done
Speaking of benefiting everyone, let’s talk about some of the things that Ruby Together has done in it’s first year and a half. The big, underlying thing that we did is pay for 1,100 hours of developer time. Using that developer time, we’ve gotten a lot of stuff done. I can’t possibly cover everything in detail, but even an overview will give you a taste of what goes into keeping `bundle install` working month after month, and year after year.

### bundler accomplishments
Working on Bundler, have completed and 5 feature releases. In [Bundler 1.9](http://bundler.io/blog/2015/03/21/hello-bundler-19.html), we started using Molinillo, a new dependency manager. It was funded by a Stripe grant and shared between Bundler, RubyGems, and CocoaPods. In [Bundler 1.10](http://bundler.io/blog/2015/06/24/version-1-10-released.html), we added the `lock` command, optional groups, conditional groups, and the ability to mute post-install messages per gem. (Finally, it’s possible to never be told “You must HTTParty hard” again!) In [Bundler 1.11](http://bundler.io/blog/2015/12/12/version-1-11-released.html), we dramatically improved error messages both in general and when the Gemfile cannot be resolved. In [Bundler 1.12](http://bundler.io/blog/2016/04/28/the-new-index-format-fastly-and-bundler-1-12.html), we finished a 3-year-long project and started using a new gem metadata file format that allows us to finally stop sending every user information about every gem every time they install. We also increased the speed of `bundle exec` and added support for locking and updating the Ruby version. In [Bundler 1.13](http://bundler.io/blog/2016/09/08/bundler-1-13.html), we added support for gems with `required_ruby_version` for Gemfiles that declare their `ruby` version, added the `doctor` command to fix broken compiled gems, and added the ability to add and remove platforms you want Bundler to resolve for. And that was just a summary of the big features!

We also released [38 bugfix releases](https://rubygems.org/gems/bundler/versions), completely [redesigned the Bundler website](http://bundler.io/blog/2016/07/10/bundler-1-13-and-redesigned-bundler-io.html), and mentored nine [Google Summer of Code](http://summerofcode.withgoogle.com) students and four [RailsGirls Summer of Code](http://railsgirlssummerofcode.org) students across two summers.

### now rubygems, too
As part of keeping Bundler working, Ruby Together has taken over maintenance of the [RubyGems project](https://github.com/rubygems/rubygems) as of 2016. Bundler already uses parts of RubyGems to install gems, and so it was a good fit. Even worse, ever since AT&T Interactive shut down their Ruby open source department, RubyGems hasn’t had any dedicated development. For almost two years, the only significant change to RubyGems was a critical security fix.

It was an awful situation. For that entire two years, installing compiled gems was broken on Windows for any Ruby version older than the latest. I’m very pleased to reveal that since the start of this year, we have fixed many bugs, including that one. Developers on Windows can install gems again. In total, we’ve released one minor and eight bugfix versions of RubyGems so far. We also have some great plans for RubyGems that I’ll cover in the section about the future, so keep reading!

### oh and the servers
On the server side, we’ve done a huge amount of work on RubyGems.org and on the [Bundler dependency API](https://github.com/bundler/bundler-api). I’ve previously given [a talk about setting up the Bundler API ](http://andre.arko.net/2013/12/09/extreme-makeover-rubygems-edition/) as a separate thing from RubyGems.org. It’s not in my talk, but the biggest reason we had to do that was that at that time RubyGems.org didn’t have enough volunteers to stay functional if it ran the Bundler API as well.

Because of that shortage, the Bundler dependency API is a completely separate application from RubyGems.org. Even though we now have one team cooperating to run everything, we have had to keep paying the cost of two separate systems: one for the gem metadata, and one for the gems themselves. 

For the last year and a half, we’ve applied countless security patches and  implemented the server-side part of the [new index format](http://andre.arko.net/2014/03/28/the-new-rubygems-index-format/) used by Bundler 1.12. We’ve even ported the entire Bundler API Sinatra app into the RubyGems.org Rails app. Someday very soon, we’ll only have one platform to keep operational. That’s a big win, giving us more reliability while requiring us to do less work. We also switched to using the [Fastly CDN](http://fastly.com) for gem downloads, and we have ever so slowly reworked the entire architecture of RubyGems.org so that every page can be served from Fastly’s closest data center instead of from Amazon’s US-West region.

On top of all of that proactive maintenance, we have paid developers to take on incident response. It’s much easier to prioritize keeping all of these systems operational when it’s paid work. Our team has handled around a dozen outages over the last 18 months, and every one of them has been shorter than it would have been without Ruby Together.

### gemstash, also pretty neat
One more thing that we did: we built a new tool to help everyone manage the gems that they need. It’s called [Gemstash](https://github.com/bundler/gemstash), and it’s a server you can run that will cache every gem you download from RubyGems.org. You can run one on your local laptop to avoid downloading gems multiple times. You can run one in your office to speed up installing the gems your application needs. Or you can run one in your datacenter, and install gems across all your server from a local source. It can even act as a server for private gems, so you can keep your company’s internal gems on it, too.

### bundler 2.0 is coming
Later this fall, we’re going to release [Bundler 1.14](https://github.com/bundler/bundler/issues/4853), and then [Bundler 2.0](https://github.com/bundler/bundler/issues/4856) after that. When we were designing Bundler 1.0, we made tradeoffs based on a world that didn’t use Bundler. Today, not only Ruby developers but developers in most languages have a dependency manager—the old tradeoffs are a problem now, instead of a benefit.

Plus, it’s a huge drain on our time to keep supporting Ruby 1.8.7 and all the other ancient versions of Ruby and RubyGems that were new at the time Bundler was originally released. The functionality provided by Bundler won’t change, and everyone will be able to use Bundler 1 in some projects and Bundler 2 in others on the same machine. I’m really excited about the improvements that are possible with backwards-breaking changes, and I’m looking forward to sharing those with you later this year or early next year.

### plus we’re going to merge bundler and rubygems
Oh, and one more thing. For the last six years of working on Bundler, one of the most frustrating things about working on it has been the separation between Bundler and RubyGems. Sometimes making a change in one would break something in the other. The rest of the time it has just been a huge pain to make sure that they work to install gems the same way even when they aren’t working together.

By talking to developers, companies, and the teams working on Bundler, RubyGems, and RubyGems.org, we’ve come up with a plan to combine the Bundler and RubyGems projects. They’ll still have separate commands, `gem` and `bundle`, but they’ll have a single codebase behind them. This summer, we mapped out everything that needed to be done for that merger, and started working on it.

After Bundler 2 is released, the main focus of the Bundler and RubyGems teams will be merging the codebases together into [RubyGems+Bundler 3.0](https://github.com/rubygems/rubygems/issues/1681).

## somehow, it’s working!
In many ways, the last year and a half has been more successful than I could have dreamed. Ruby Together is paying developers for work every week. We’ve fixed more bugs and made more progress on Bundler and RubyGems in the last year than we managed in the three years before that. We started out especially strong, and we saw new companies and developers signing up every single month for an entire year.

### but it’s not all good
But for the last six months, even as we’ve set new records for paid hours, while we managed the [Google Summer of Code](https://summerofcode.withgoogle.com) project for all of Ruby, and while we made these exciting plans to finally bring RubyGems and Bundler together… membership has been flat. We’ve seen a few new members, but a few members have left. Overall, we’re in the same place after 18 months as we were after 12 months: able to pay consistently for several hours a week, but not yet able to pay even two people part-time.

### companies are short-sighted
Businesses are ultimately answerable to shareholders who want profit, and right now businesses think that they can get the benefits of Ruby community infrastructure and tools without needing to contribute back themselves. It’s always worked before, right?

Just because it’s worked in the past doesn’t mean it will keep working in the future. As I showed earlier, the demands of the community keep growing. The situation we have now is unsustainable. RubyGems was broken on Windows for two years! Everyone in the Ruby community needs to know about the crisis that we’re heading towards. Every company in the community needs to understand that we can’t keep giving them a free ride even if we wanted to.

Some companies (like [Stripe](https://stripe.com), [CodeMiner42](http://codeminer42.com), [Basecamp](http://basecamp.com), [Travis](http://travis-ci.com), and others) have stepped up to support us with actual money. Other companies tell us it’s a great initiative, and they’re really glad we exist, but they’re not willing to pitch in. We haven’t seen any new companies join for almost six months. If that keeps up, we won’t even be able to keep up paying for a few hours of work per week. If companies keep taking community benefits without giving back, it takes us straight back to unsustainable volunteers burning themselves out.

### cooperating is good for everyone
We don’t want that! There’s a better way. It’s not even hard, or expensive. At Ruby Together, we’re already prepared to keep everything working—we just need support from Ruby developers and companies to make that possible.

We offer the entire community a great deal: free tools and free hosting for Ruby code they want to share with the world. We offer a fantastic deal for companies, too: the benefits of full-time infrastructure developers at a tiny fraction of the cost.

So for now, we’re asking: help us work on [Bundler](https://bundler.io), [RubyGems](https://rubygems.org), and everything else by [signing up](https://rubytogether.org/join). Everything we build with money from the community is shared back to the community, and that’s what Ruby Together is all about.
