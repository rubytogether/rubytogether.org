---
summary: "In April we had our one year anniversary, paid for 106 hours of developer time, had six new members join, and launched Bundler 1.12 and the new gem index format."
---

<% title "April 2016 monthly update" %>

Hello there, and welcome to the Ruby Together monthly update for April 2016! In the last month, we paid for 106 hours of developer time (another new record!). With that time, we handled [a big security issue on RubyGems.org][rgsec] and released new versions of Bundler and RubyGems. We also had six new members join, including five companies.

[rgsec]: http://blog.rubygems.org/2016/04/06/gem-replacement-vulnerability-and-mitigation.html

## ruby together news

### meet us, get swag (RailsConf edition)

In May, André will be speaking at [RailsConf 2016][rc] in Kansas City, MO. He'll be giving a talk titled Don’t Forget The Network: Your App Is Slower Than You Think. If you'll be there, say hello! He'll have Bundler stickers and Ruby Together shirts and stickers.

[rc]: https://www.railsconf.com

### new members

This month six new members joined. One individual member, Ryan Buckley, and five companies: [Icelab][icelab], [Metabahn][metabahn], [Tommy John][tommyjohn], and [SuperBorrowNet][superborrownet], and [Abletech][abletech]. Thanks for helping spread the word about Ruby Together to our new members!

[icelab]: http://www.icelab.com/
[metabahn]: https://metabahn.com/
[tommyjohn]: https://www.tommyjohn.com/
[superborrownet]: https://www.superborrownet.com/
[abletech]: https://abletech.nz/

### new hires

This month, we hired a project manager and a developer evangelist! [Lynn Cyrin](https://twitter.com/lynncyrin) will be working on making sure code releases and update posts happen in a timeline fashion, generating roadmaps, and generally bring order to chaos. [Phil Arndt](https://twitter.com/parndt) will be representing Ruby Together to companies (mainly in Australia and New Zealand), handing out stickers and helping companies become members.

### one year anniversary (and board elections)

It’s our birthday! Ruby Together has been around for an entire year. It’s been a really busy year, but we’ve gotten a lot of great stuff done. In our first year, we’ve handled security issues and outages on RubyGems.org and released new versions of Bundler and RubyGems as well as implementing the new index format. We also created and released [Gemstash](https://github.com/bundler/gemstash), a server anyone can run to host private gem, or caching public ones. We’re extremely proud of what we’ve managed to accomplish in our first year, and we’re planning to get even more done in year two!

As part of being one year old, it’s time for the yearly board elections. The first step in those elections is nominations. If you’re a member and you want to nominate someone for election to the Ruby Together board, you can! Fill out the [board member nomination form][directorform] and give us all of your suggestions. Next month, members will vote to decide who will represent them for the next year.

[directorform]: http://goo.gl/forms/iYgnMVGswj

## bundler news

This month we released [Bundler 1.12][bundler112]! Excitingly, this is the first release to use the [new index format][newindex]. Designing the new index, implementing a server and a client, and rolling it out has taken over two years, but it’s finally done. The new index format means that `bundle install` will be noticeably faster (especially when no new gems versions have been released since the last time you installed). The server-side is also hugely improved, since all the gem data is served by the Fastly CDN from a data center near you, all around the world.

We also saw 29 merged pull requests and 67 commits from 8 authors for the Bundler client and server. Finally, we created a set of [milestones][milestones] for how Bundler will progress for 1.13, 1.14, and on to 3.0.

[bundler112]: http://bundler.io/blog/2016/04/28/the-new-index-format-fastly-and-bundler-1-12.html
[newindex]: http://andre.arko.net/2014/03/28/the-new-rubygems-index-format/
[milestones]: https://github.com/bundler/bundler/milestones

## rubygems.org news

RubyGems.org got 13 merge requests and 85 commits from 8 authors. This month involved a lot of cleanup work, and a little bit of infrastructure changes to support the Bundler index format.

[rubygems.org-repo]: https://github.com/rubygems/rubygems.org

## rubygems news

[RubyGems][rubygems-repo] has 15 merged pull requests and 24 commits from 10 authors. RubyGems released [version 2.6.4][rubygems-release] featuring symlinks on Windows, and using less hard coded strings. RubyGems releases have been fairly consistent since 2.5.2 at the beginning of this year, and we intent to keep them that way!

[rubygems-repo]: https://github.com/rubygems/rubygems
[rubygems-release]: http://blog.rubygems.org/2016/04/26/2.6.4-released.html

## budget & expenses

From March 20 to April 18, Ruby Together took in $16,645. In total, we spent $26,881.32. Here's a breakdown of where the money went:

* $4,050 for 27 hours of developer time on Bundler at $150/hour
* $5,850 for 39 hours of developer time on RubyGems.org at $150/hour
* $5,970 for 39.8 hours of developer time on RubyGems at $150/hour
* $75.81 on dedicated servers for RubyBench.org
* $523.51 on payment processing fees
* $1927.29 on company overhead like hosting, services, software, hardware, taxes, etc.
* $0 on accounting, copywriting, design, and other professional services
* $9,003.22 on marketing, evangelism, and community outreach

Some evangelism and outreach work over the past six months had gone unbilled, and we were able to settle all accounts this month. Next month, we expect to continue spending more than usual on outreach, because of our new hire and attending RailsConf to spread the word about Ruby Together.

Check back next month to hear about board member elections, as well as the results of our new hires this month. By that time we will also have rolled out a set of plans for how we intend on updating Bundler, RubyGems, and Ruby Together in general. Towards the future!

Until next time,<br>
André, Lynn, and the Ruby Together team
