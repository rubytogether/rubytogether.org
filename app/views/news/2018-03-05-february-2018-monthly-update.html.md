---
summary: In February, 85 hours of developer work, released RubyGems versions 2.7.5 and 2.7.6, and updated two Bundler commands.
---

Hello and welcome to the monthly update! During February, our work was supported by [Stripe](https://stripe.com), [GitLab](https://about.gitlab.com/), [reinteractive](https://reinteractive.com/), and many others.

## ruby together news

In February, Ruby Together was supported by 76 different companies, including Sapphire member [Stripe](https://stripe.com). Four companies joined as new members, including [Nebulab](https://nebulab.it/), [weLaika](https://dev.welaika.com/en/), [Kickass Partners](http://kickass.partners).

In addition to those companies, 6 new developers signed up as members or friends of Ruby Together, including Stan Lo. In total, we were supported by 91 individual members and 68 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

As we mentioned last month, Ruby Together applied to organize a [Google Summer of Code 2018](https://summerofcode.withgoogle.com/) project for work on any Ruby open source codebase. In February, Google announced projects, and our application was accepted! 🎉

Now that we've been accepted, we're  looking for mentors for students who want to work on Ruby open source projects this summer. For more information about what it’s like to be a mentor, Google has written a [mentor guide](https://google.github.io/gsocguides/mentor/). If you are interested in mentoring a student this summer, [get in touch](mailto:hello@rubytogether.org)!

If you're a student who's interested in applying, student applications will open on March 12. For help getting ready to apply, check out the [GSoC Student Guide](https://google.github.io/gsocguides/student/).

Finally, we would also love contributions to the project ideas list. If you have an open source project or a feature idea that are one-student-summer sized, [add them here](https://github.com/rubygsoc/rubygsoc/wiki/Ideas-List).

## bundler news

Bundler saw some fixes in February thanks to contributors [@nholden](https://github.com/nholden), [@voxik](https://github.com/voxik), [@cpgo](https://github.com/cpgo),  [@deivid-rodriguez](https://github.com/deivid-rodriguez), and [@alyssais](https://github.com/alyssais). Fixes this month included [a fix for certain instances of the “perhaps the lockfile is corrupted?” error](https://github.com/bundler/bundler/pull/6288), as well as [clear enforcement steps for the code of conduct](https://github.com/bundler/bundler/pull/6283). We also received [an awesome proposal](https://github.com/bundler/rfcs/pull/10) to give the `add` command superpowers, and add a `remove` command.

This month, Bundler gained 23 new commits, contributed by 8 authors. There were 291 additions and 59 deletions across 50 files.

## rubygems.org news

In February, we continued to apply security patches and other updates to the servers running RubyGems.org. We also made progress on a new project, collecting metrics from the server logs about what Ruby, RubyGems, and Bundler versions are being actively used. Hopefully we'll have something to show everyone next month!

## rubygems news

RubyGems saw a lot of activity this month, including the release 2.7.5 and 2.7.6 with _tons_ of bug fixes. The version 2.7.6 release contained some [critical security fixes](https://blog.rubygems.org/2018/02/15/2.7.6-released.html), and is a strongy recommended upgrade. Get out there and run `gem update --system` today!

On top of releasing new code, we also managed to [write out the Ruby version support and release policies](https://github.com/rubygems/rubygems/pull/2202), and [draft of a minimally disruptive plan for RubyGems 3 and 4](https://github.com/rubygems/rubygems/pull/2182#issuecomment-364631805).

In total, RubyGems gained 130 new commits, contributed by 12 authors. There were 755 additions and 340 deletions across 50 files.

## ruby toolbox news

After bringing the Ruby Toolbox back to life at the beginning of February, the rest of the month was mostly about going through a variety of community contributions, mostly related to changes to the [catalog](https://github.com/rubytoolbox/catalog), which saw 61 pull requests from 43 contributors. I also tried to improve documentation and guidelines for catalog contributions, based on common mistakes happening on that end. The Rails app itself saw a bunch of improvements to the README that now gives an overview of how to get the app running for local development, and in total saw 4 pull requests submitted by 4 contributors.

I also did some research and prototyping for charts and statistics that can be gathered from the existing project metrics, and how to make individual project metrics like gem downloads easier to put into context in relation to the rest of the ecosystem. In addition to converting the GitHub gathering to their GraphQL library, thus unlocking a whole bunch of additional project metrics (see [#94](https://github.com/rubytoolbox/rubytoolbox/pull/94)), in March I'd like to make daily database dumps available for download to make it easier to get a more realistic development environment, and to bring said project metrics display improvements live for at least one metric to get community feedback on the general approach.

As always, your feedback is very welcome, if you have any suggestions or thoughts you'd like to share you can do so via [GitHub issues](https://github.com/rubytoolbox/rubytoolbox/issues) or by getting in touch with me directly.

Finally, thank you to all of last month's PR contributors: BookOfGreg, GBH, andyjeffries, brandonweiss, bricesanchez, brodock, btrd, campreb, cedlemo, cyril, dogweather, drgcms, el-feo, emilebosch, eregon, filipewl, florentferry, gzigzigzeo, iridakos, itsderek23, kddeisz, kenn, kirillshevch, konung, lulalala, mediafinger, nilbus, ohler55, olleolleolle, palkan, pat, pboling, pedrozath, philnash, phlegx, pmackay, sacrebleu, sgeorgi, strzibny, tarcieri, tiagoamaro, varyonic, victords, westonganger, zach-capalbo, zoras.

See you next month!
Christoph


## budget &amp; expenses

In February, we paid for 85 hours of developer time, saw $16,380.00 in total income, and spent a total of $16,754.02.

* $5,079 for 33.9 hours worked on Bundler at $150/hour
* $3,885 for 25.9 hours worked on RubyGems.org at $150/hour
* $1,341 for 8.9 hours worked on RubyGems at $150/hour
* $2,453 for 16.4 hours worked on other OSS and devtools at $150/hour
* $83.61 on dedicated servers for RubyBench.org
* $551.98 on payment processing fees
* $2,174.03 on company overhead like hosting, services, software, hardware, taxes, etc
* $1,050 on accounting, copywriting, design, and other professional services
* $136.9 on marketing, evangelism, and community outreach


Until next time,<br>
Stephanie, André and the Ruby Together team
