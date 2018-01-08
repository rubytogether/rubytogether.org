---
summary: In December, we paid for 92 hours of developer work. In 2017, we paid for 1,169 hours of developer work, closed 1,489 GitHub issues, released 21 new versions of Bundler, and released 11 new versions of RubyGems.
---

Hello, and welcome to a year-end special edition of the monthly update: Ruby Together’s Yearly Update for 2017! There are more details in the following sections, but here’s the tl;dr. During 2017, we took in $284,481.28, we spent $241,973.01, and we paid for 1,169 hours of developer work on Ruby open source.

Some highlights from the year include shipping 21 Bundler releases, shipping 11 RubyGems releases, kicking off Ruby Toolbox 2.0, Bundler almost shipping with Ruby 2.5, and defending RubyGems.org against a DoS attack on Christmas Day.

### Ruby Together news

During December, our work was supported by 76 different companies, including [reinteractive](https://reinteractive.com), [Stripe](https://stripe.com), [thoughtbot](https://thoughtbot.com), [Travis CI](https://travis-ci.org), and many others. One new company joined in December, as well as one new individual member, Viacheslav Kysil. Last month, were supported by a total of 95 individual members and 67 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

In other news, please join us in welcoming a new director to our board: [Allison McMillan](https://twitter.com/allie_p)! Among her many accomplishments, Allison recently helped organize the RubyConf 2017 Scholars and Guides program, and we’re super excited to have her perspective and experience as we make plans for 2018.

Speaking of plans for 2018, there’s a big one we’ve just started working on: project applications for funding from Ruby Together. If you have opinions about how we can accept applications and start funding additional projects, we would love to hear from you! Write to us at [hello@rubytogether.org](mailto:hello@rubytogether.org) with your input. We might not reply to every email, but we’ll read and consider them all.

### Bundler news

As you may have noticed, [Bundler didn’t end up shipping with Ruby 2.5](https://www.ruby-lang.org/en/news/2017/12/25/ruby-2-5-0-released/). The Ruby language core team has yet to announce why they decided to remove Bundler a few hours before Ruby 2.5 was released on Christmas Day. Hopefully, we’ll find out the story there soon.

In the meantime, Bundler 1.16.1 has been released, with fixes or workarounds for all known issues. If you were waiting to upgrade to version 1.16, give it a try now! If you’re still seeing issues on version 1.16.1, please [let us know!](https://github.com/bundler/bundler/blob/master/ISSUES.md) We care a lot about fixing bugs and maintaining backwards compatibility, but we need to hear from users in order to know when bugs have crept in. &lt;3

In December, Bundler gained 59 new commits, contributed by 8 authors. There were 419 additions and 301 deletions across 36 files.

In 2017, Bundler gained two new maintainers, [Colby Swandale](https://twitter.com/0xcolby) and [hsbt](https://twitter.com/hsbt). We shipped 21 releases total, which included 3 feature releases. Those releases included 1,392 commits, by 31 authors, with 21,892 additions and 5,860 deletions across 1,140 changed files.

Thanks especially to Bundler’s new contributors in 2017: Abu Nashir, Adam Wanninger, Adrian Gomez, Alessandro Dal Grande, Alex Taylor, Artyom Khramov, Ashish Sehra, Atsushi Yamamoto, Brian Christian, Daniel P. Clark, Daniel Ritz, Daniel Trierweiler, David Radcliffe, Dennis Suratna, Elia Schito, emsk, Eric Boehs, Erik Johnson, fotanus, Frederico, Frederico Bittencourt, Glenn Espinosa, Greg Werbin, Grey Baker, HippoDippo, Igor Bozato, Ivan Kuchin, Jack LaBarba, Jan Krutisch, Jared Kauppila, Jonathan Pike, Juan Barreneche, Julian Nadeau, Justin Myers, Kaycee, Keiji Yoshimi, Kerri Miller, leslie.wen, Mal Graty, Michael Deering, Michael Pitman, mpd, Noah Kantrowitz, Nobuyoshi Nakada, okkez, Olle Jonsson, Patricia Arbona, Paul Nikitochkin, Piotr Kuczynski, robcole, Robert Soly, Sebastian Nowak, Shayon Mukherjee, Stefan Sedich, Stephanie Morillo, Tejas Bubane, Tristan Hill, Urabe, Shyouhei, Wade Tandy, Will Jordan, and Zach Ahn.

### RubyGems news

RubyGems had a calmer year in 2017. The biggest change was the start of merging Bundler and RubyGems into a single gem manager to rule them all. We plan to continue that work in the coming year, in addition to fixing bugs, staving off bitrot, and working to improve the RubyGems experience for everyone.

In 2017, we shipped 11 releases total, with one new feature release. Those releases included 463 commits, by 25 authors, with 3,655 additions and 1,144 deletions across 122 files.

We especially want to thank the new contributors to RubyGems in 2017: Alyssa Ross, anantkolvankar, Arthur Marzinkovskiy, Colby Swandale, EdOverflow, Grey Baker, HorimotoYasuhiro, Jared Beck, Jason Frey, Jonathan Claudius, Jun Aruga, Kazuaki Matsuo, Mark Sayson, Olle Jonsson, Shiva Bhusal, toru.yagi, and Tsukuru Tanimichi.

### RubyGems.org news

Through a combination of luck, hard work, and frequent security patches, RubyGems.org avoided significant downtime during 2017. The two most exciting events were probably [discovering our years-old remote execution vulnerability was not completely fixed](http://blog.rubygems.org/2017/10/09/unsafe-object-deserialization-vulnerability.html), and scrambling to truly fix it once and for all. Thanks to David Radcliffe and Aaron Patterson for their work to implement and test a new fix. On top of that, we got to defend against a denial of service attack that overwhelmed our backend servers—on Christmas Day itself. Huge props to David Radcliffe and Evan Phoenix, who saved Christmas for Ruby devs around the world while demonstrating awesome teamwork between Ruby Central and Ruby Together.

In 2017, RubyGems.org merged 336 commits by 30 authors, with 4,880 additions and 3,005 deletions across 320 files.

We especially want to thank the new contributors to RubyGems.org in 2017:  Aaron Patterson, Andre Medeiros, Colby Swandale, Olle Jonsson, Shota Miyazaki, siddhantBajaj, and Yoshiyuki Hirano.

### Gemstash news

Gemstash had a pretty calm 2017, seeing some general bugfixes and enhancements but no significant activity. If you’re looking for a way to get started contributing to Ruby open source, the [Gemstash issues list](https://github.com/bundler/gemstash/issues) has several bugs and feature requests that would make a good starting point. 

In 2017, Gemstash merged 75 commits by 10 authors, with 610 additions and 456 deletions across 47 files. We especially want to thank the new contributors to Gemstash in 2017: Agis Anastasopoulos, and Omer Katz.

### Ruby Toolbox news

Hello everyone,

Happy new year! Holiday season was a bit involved for me, so unfortunately I didn't find time to work on the new Toolbox in December — that obviously also meant that the planned mid-December launch that I mentioned in the last update didn't work out — sorry for that! Sometimes you just have to cut some stuff — I actually sat down a few evenings to do some work, but quickly realized I was simply too tired to do anything meaningful.

That being said, the new year is off to a good start: Import of RubyGems and GitHub stats are ready, so after adding score calculations and a bit of UI polish, the site should finally come back in the next week or two. In contrast to the last update, this will actually already include **all** gems, not only those in categories, and the syncing already includes a good chunk of the metrics on the old site, so adding them to the site will only mean adding them to the UI, so those should become visible pretty soon as well.

After the site is launched the first thing to do will be adding good full text search. I will also prepare some "future ideas" and "easy first contribution" tickets on Github after launch, so everyone interested in contributing get a chance to do so, but first I want this website live :)

As mentioned last month, you can find the current state of the site at [beta.ruby-toolbox.com](https://beta.ruby-toolbox.com).

Thanks for your time, see you next month!

— Christoph

### December budget and finances

In December, we took in a total of $18,115.0, and spent a total of $19,475.62. Here’s the breakdown of where the money went:

* $5,584 for 37.2 hours worked on Bundler at $150/hour
* $3,454 for 23.0 hours worked on RubyGems.org at $150/hour
* $2,441 for 16.3 hours worked on RubyGems at $150/hour
* $2,306 for 15.4 hours worked on other OSS and devtools at $150/hour
* $80.20 on dedicated servers for RubyBench.org
* $600.49 on payment processing fees
* $1,679.17 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,625.0 on accounting, copywriting, design, and other professional services
* $1,705.59 on marketing, evangelism, and community outreach

### 2017 budget and finances

In addition to our usual monthly report, we’re including a yearly financial report. In 2017, we took in a total of $284,481.28, and spent a total of $241,973.01. With that money, we paid for 1,169 hours of developer work total. By detail, we spent:

* $89,380 for 596 hours worked on Bundler at $150/hour
* $48,543 for 323.62 hours worked on RubyGems.org at $150/hour
* $16,136 for 107.57 hours worked on RubyGems at $150/hour
* $21,514 for 143.43 hours worked on other OSS and devtools at $150/hour
* $908.01 on dedicated servers for RubyBench.org
* $8,550.10 on payment processing fees
* $22,649.92 on company overhead like hosting, services, software, hardware, taxes, etc
* $18,897.50 on accounting, copywriting, design, and other professional services
* $15,399.81 on marketing, evangelism, and community outreach

On top of summing up our monthly reports, this report includes year-end compensation figures for all officers of the company and members of the board. These figures have always been available to the public in Ruby Together’s tax returns, but we’re including them here to increase visibility for everyone. Company officer and director compensation during 2017 included:

* André Arko, $53,392.50 for work on Ruby open source software, $0 for work as chief executive officer, and $0 for work as a director
* Camille Baldock, $0 for work as a director
* Coraline Ada Ehmke, $0 for work as a director
* Ines Sombra, $0 for work as a director
* Joel Watson, $0 for work as treasurer, and $0 for work as a director
* Sarah Mei, $0 for work as a director
* Steve Klabnik, $0 for work as a director
* Terence Lee, $0 for work as a director
* Valerie Woolard Srinivasan, $0 for work as a director

Thanks again to all of our members for making our work possible, and to all of you (member or not) for being part of the Ruby community. &lt;3

Until next time,
André and the Ruby Together team
