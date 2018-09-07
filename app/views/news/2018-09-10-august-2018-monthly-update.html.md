---
summary: In August, we were joined by new Ruby member Handshake.org, we paid for 113 hours of developer work, shipped a new Bundler guide, and fixed bugs in Bundler and RubyGems.
---

Hello! Welcome to the monthly update. During August, our work was supported by [Handshake](https://handshake.org), [Stripe](https://stripe.com), [Coinbase](https://coinbase.com), [reinteractive](https://reinteractive.com/), [Airbnb](http://airbnb.com), and many others.

## ruby together news

In August, Ruby Together was supported by 75 different companies, including our newest Ruby-level member, [Handshake](https://www.handshake.org). Thanks so much for the incredible support! We were also supported by 77 individual members and 64 friends of Ruby Together. Thanks to all 75 companies and 141 individuals for making everything that we do possible.

### events

In community events, our developer evangelist PJ Hagerty spent some time at the Google Developer Group meetup in New York City, Scenic City Summit in Chattanooga, TN, and AmsterdamRB. Executive Director André Arko went to RailsCamp, experiencing the outdoors and talking with other developers about Ruby Together.

### summer of code

As scheduled, our Google Summer of Code students wrapped up their work on our various projects. Special thanks to our GSoC developers for all of their hard work these past few months! Check out the work done by those students in their final write-ups:

  - Qiu Chaufan, [Adding multi-factor authentication to RubyGems](https://gist.github.com/ecnelises/9654e59877aa336977c1409ef540e2a9)
  - Shlok Srivastava, [Add security vulnerability notifications in rubygems](https://lifeinoss.wordpress.com/2018/08/14/gsoc-with-rubygems/)
  - Nicholas Yang, [Adding Type Annotations to Ruby Syntax](https://summerofcode.withgoogle.com/projects/#6181205100199936)
  - Yimin Zhao, [Ruby on a huge memory machine](https://github.com/Tacinight/ruby-gsoc-2018/blob/master/README.md#ruby-gsoc-2018)
  - Agrim Mittal, [Integrate functionality from `bun`](https://gist.github.com/agrim123/cfc1e1aadbe8b46f6e2b6e9b090ed2f3#integrating-functionality-from-bun-into-bundler-gsoc-2018)

### reorganization for the long run

It’s hard to believe, but Ruby Together is more than three years old. In that time, we’ve grown from funding just 2 devs working 10 hours per week, to funding up to 50 hours per week when it’s needed to keep Ruby’s gem infrastructure running smoothly.

As you can probably imagine, it takes a lot more to organize ten developers than it took to organize two. Because of that, we’re making some changes to how Ruby Together is structured to make sure all of that work continues to get done.

Starting this month, we’re retiring the position of CEO, and replacing it with an Executive Director position. Our first Executive Director will be the current CEO, André Arko. While it includes many of the previous responsibilities of the CEO, the ED position comes with a new job description, new criteria for success, and direct oversight by the board of directors.

The Executive Director will run Ruby Together on a day to day basis, implementing the strategy and plans decided on by the board. While the Executive Director is paid for administrative and corporate work, they will not be paid for any open source work, to allow them to focus effectively on fundraising and collaboration with the Ruby community.

Along with the new ED position, we’re resetting the size of the board of directors to 5 people. No one is being added or removed from the board to make that happen, but that size will keep our core working group in the 5-7 person range. Keeping the core working group small and focused is especially important for our scheduling, discussion, and decision-making, and the board was in unanimous agreement that the new size will improve our work.

We’re excited to enter a new phase as a “grown up” non-profit, and we’re looking forward to being able to support the Ruby open source community for years to come. 💎💝

## bundler news

With the help of [@eanlain](http://github.com/eanlain), we shipped a new guide: [“How to use Bundler with Docker”](https://bundler.io/v1.16/guides/bundler_docker_guide.html). We also dramatically improved error messages when version requirements conflict, shipped a playbook for adding or removing core team members, and fixed some issues handling gemspecs with non-ASCII characters. We also merged a fix that could cause Bundler to [fail when trying to install a gem that has had a version yanked recently](https://github.com/bundler/bundler/pull/6675).

On top of that code work, we also added two new contributors to [the Bundler team](https://bundler.io/contributors.html)! Welcome to [Stephanie Morillo](https://www.twitter.com/radiomorillo) and [Grey Baker](https://twitter.com/greybaker).

Stephanie has helped create new Bundler docs (like the troubleshooting RubyGems and Bundler TLS/SSL issues guide), and update existing ones. She’s also responsible for updating the Bundler contributor guidelines and trying to make Bundler docs more accessible to new contributors. We're excited to have her on board, and looking forward to working with her more in the future.

Grey is the author of [Dependabot](https://dependabot.com), and has regularly contributed to [Molinillo](https://github.com/cocoapods/molinillo), the core resolver library that powers Bundler, RubyGems, and Cocoapods.

In total this month, Bundler gained 58 new commits, contributed by 10 authors. There were 334 additions and 54 deletions across 30 files.

## rubygems.org news

In August, we blacklisted several gems with names that were close to other popular gems, in response to CVE-2018-3779. We're starting to investigate ways to protect RubyGems.org from malicious gems—if you're interested in helping work on that, let us know! We also reviewed and merged performance improvements to the “rubygems#show” and “version#index” pages, contributed by [@nateberkopec](https://github.com/nateberkopec).

In total, RubyGems.org gained 11 commits from 5 authors, making 44 additions and 35 deletions across 8 files.

## rubygems news

In RubyGems, we fixed some bugs, including the ability to [auto re-sign expired certs](https://github.com/rubygems/rubygems/pull/2380), fixed some tests, and made sure that gems with `allowed_push_host` set will be pushed to the correct host by `gem push`. In total there were 19 new commits, contributed by 5 authors, with 112 additions and 26 deletions across 13 files.

## ruby toolbox news

Hey everyone,

Despite my ambitious announcements in the last update, August turned out to be a quiet month for me. I was mostly on vacation visiting family, and while I had hoped to use the available time to also build a bunch of nice stuff for the Toolbox, the need to find some rest and to have a bunch of time with family and away from computers won in the end.

However, I'll finally have the time to ship the public data dumps and search improvements in September I spoke about in recent updates!

In other news, towards the end of August I was in Vienna for the 2018 edition of Euruko, the European Ruby Conference. I'd like to say a big thank you to everyone involved, I think it was a great weekend and a powerful display of the health of our community. Can't wait for next year!

As always, your feedback is very welcome, if you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Thank you also to the contributor of our sole pull request in August: jrochkind (it seems there were more folks on vacation).

Best,
Christoph

## budget &amp; expenses

In August, we saw $113,945 in total income, and spent a total of $20,988.71.

* $5,843.54 for 39.0 hours worked on Bundler at $150/hour
* $1,222.71 for 8.2 hours worked on RubyGems.org at $150/hour
* $5,613.12 for 37.4 hours worked on RubyGems at $150/hour
* $2,866.46 for 19.1 hours worked on other OSS and devtools at $150/hour
* $1,312.50 for 8.8 hours worked on The Ruby Toolbox at $150/hour
* $78.21 on dedicated servers for RubyBench.org
* $472.96 on payment processing fees
* $1,734.21 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,795 on accounting, copywriting, design, and other professional services
* $50 on marketing, evangelism, and community outreach

Until next time,<br>
Stephanie, André and the Ruby Together team
