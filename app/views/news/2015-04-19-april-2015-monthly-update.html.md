---
summary: In our first month of operation, we hired our first two developers, and accomplished a record amount of work on both Bundler and RubyGems.org.
---
<% title "April 2015 Monthly Update" %>

Hello, everyone! This is the Ruby Together monthly update for April, 2015. This was our first month in operation, and we were able to make a huge amount of progress this month.

## New hires

This month, Ruby Together hired André Arko (that's me!) to work on Bundler, which led to the release of several significant new features, detailed in the "New releases" section below.

We also hired David Radcliffe, starting to pay him for his work on the RubyGems.org servers and infrastructure. David has worked tirelessly for years to ensure that RubyGems.org stays up to serve gems to the world. As a volunteer, David has spent countless nights and weekends donating his time and expertise to the Ruby community, and he richly deserves to be paid a fair rate for his work that benefits every person and company using Ruby. 

## New projects

As planned, Ruby Together hired André Arko to continue ongoing maintenance and feature work on Bundler.

Next, shortly after our public launch, we were able to form [The RubyGems Partnership](https://rubytogether.org/rubygems) together with [Ruby Central](http://rubycentral.org). As part of that partnership, we have hired [David Radcliffe](http://github.com/dwradcliffe) to support his ongoing maintenance and development work on RubyGems.org.

In addition to Bundler and RubyGems, we were able to start supporting the RubyBench.org project by funding the dedicated server that the benchmark suite runs on. Since RubyBench is a benchmarking project, it is vital that the test suite run on its own hardware, and that the hardware always be exactly the same. In the future, we plan to support active development of RubyBench as a valuable community resource.

## Bundler work log

The last month included a record number of Bundler releases: we released versions 1.7.14, 1.8.6, 1.8.7, 1.9.0, 1.9.1, 1.9.2, 1.9.3, and 1.9.4.

The 1.7.14 fix addressed a couple of small bugs and one regression, and we have since wound down ongoing support work for the 1.7.x release branch.

The 1.8.6 and 1.8.7 releases fixed edge cases when installing multiple compiled gems in parallel, updating only the requested gem when multiple gems came from a specific gem server, and fixed a regression that could suppress errors that occurred while Bundler required a gem.

The big news, though, was the 1.9 release! Bundler 1.9 is the first version to feature the shiny new dependency resolver Molinillo, written by CocoaPods team member Samuel Giddins. For three months, Ruby Together member Stripe sponsored Samuel to develop a dependency resolver from scratch in Ruby.

That project was a rousing success, and the resulting resolver has now shipped in both CocoaPods and Bundler. It's even been [submitted to RubyGems as a pull request](https://github.com/rubygems/rubygems/pull/1189). As a result of this cooperation between all three Ruby projects that manage dependencies, any improvements or bugfixes to the dependency resolver in one of the projects can be shared among all of them. You can [read more about the 1.9 release](http://bundler.io/blog/2015/03/21/hello-bundler-19.html) on the Bundler blog.

## RubyGems.org work log

RubyGems.org maintenance this month included several security upgrades, including an upgrade to Ruby version 2.1.6. We also started work on a centralized logging service for all the systems that keep RubyGems.org running, which will be a big help when work needs to be done in the future.

Development work included several small fixes and upgrades, while the primary focus was on designing and implementing an upcoming policy change: soon, yanked gems will be deleted rather than simply removed from the main gem index. This change should significantly reduce the number of support tickets that the RubyGems.org team has to answer, and make the entire yanking process act the way that users expect it to.

## Meet the team!

This upcoming week, André, David, and several Ruby Together board members will all be attending RailsConf 2015 in Atlanta, GA. As well as attending, André will be giving a talk titled "How Does Bundler Work, Anyway?" on Tuesday, April 21 at 11am in room 204 CDE.

If you'll be at the conference, say hello to us—we'll have Ruby Together stickers for you!

## Coming up…

During May, the Bundler team will be working on finishing the 1.10 and 1.11 releases, which will include several useful new features and a major optimization to how long it takes to run `bundle install`. Keep an eye out for more about those changes in next month's newsletter.

The RubyGems.org team will be working to finish the consolidated logging changes that were started in April, and starting work on revamping the worldwide gem mirrors to use the same automation infrastructure that was just finished for the main site. They'll also be working on implementing the server-side changes that are required for Bundler 1.10 and 1.11.

## New members

In the last month, Stripe and Engine Yard joined Ruby Together as founding corporate members. Cloud City Development and Bleacher Report also joined as corporate members.

66 individual members also joined Ruby Together, including Tony Pitale, Mark Turner, Pat Allan, Becker, Sean Linsley, Carol (Nichols || Goulding), Youssef Chaker, Todd Eichel, John Wulff, Fred Jean, Zee Spencer, Luis Lavena, George Sheppard, David Hill, Josh Kaufman, Chris McGrath, Christopher Eckhardt, Derik Olsson, Henrik Hodne, Corey Csuhta, Jeremy Hinegardner, Philip Arndt, Andy Croll, Piotr Solnica, Andrew Broman, Justin Etheredge, Piotr Szotkowski, Tiago Amaro, Andrew White, Ezekiel Templin, Matt Jones, Garrett Dimon, Alexey Mogilnikov, Joe James, Mykola Kyryk, Mariusz Droździel, Dan Wagner, David Elliott, Ender Ahmet Yurt, Dan Fockler, Jason Waldrip, Ryan Clark, Joel Watson, Ching-Yen Ricky Pai, Badri Janakiraman, Matt Pruitt, and Jeremy Green.

Thanks for the support, everyone!

If your company hasn't joined Ruby Together yet, let them know about it! Ruby Together is both [good and good for companies](https://rubytogether.org/companies), and we'll be able to do more for the community as more companies join us.

Until next time,  
André & the Ruby Together team
