---
summary: "RubyTogether paid for ??? hours of work, and had 6 new members join. Work this month includes RubyGems 2.6.6, Bundler 1.13 pre-release, and an array of minor improvements thanks to our Google Summer of Code students."
---

<% title "June 2016 Monthly Update" %>

Welcome to the June 2016 monthly update for RubyTogether! In the last month, we paid for ??? hours of work, and had 6 new members join. Our work this month includes RubyGems 2.6.6, Bundler 1.13 pre-release, and an array of minor improvements thanks to our Google Summer of Code students.

## ruby together news

### tools for our tools

We worked on two meta tools, [How Is](https://github.com/duckinator/how_is) for checking the status of issues and pull requests, and [Patronus](https://github.com/patronus-io/patronus) for testing and merging pull requests. Their broad goal is to take some of the legwork out of maintaining Bundler and RubyGems.

### summer of coders

Our Google Summer of Code ([GSoC](https://developers.google.com/open-source/gsoc/)) students have done an array of work including an initial release of the plugin system, Bundler's site redesign, and resolving many [other issues](https://github.com/bundler/bundler/issues?utf8=%E2%9C%93&q=label%3AGSoC%20). They going pretty strong as we head into GSoC's midterms. We also got approval for a second set of summer assistance, and so next month we will be working with a team from [Rails Girls Summer of Code](http://railsgirlssummerofcode.org/blog/2016-06-24-more-teams-aye).

### new members

We had a total of 6 new members this month, including 4 developers: ???. The 2 companies that joined this month are: [Powershop](http://www.powershop.co.nz/) and [Envato](https://envato.com)

## bundler news

Bundler [1.13](https://github.com/bundler/bundler/blob/master/CHANGELOG.md#1130pre1-2016-06-20) got a pre-release this month, featuring a set of [significant speed improvements](https://github.com/bundler/bundler/pull/4580) ported from [CocoaPods](https://github.com/CocoaPods/Molinillo/pull/40). 1.13 also includes an alpha version of the [plugin system](https://github.com/bundler/bundler/pull/4608), which will likely see a full release in 1.14.

Recently [Bundler-api](https://github.com/bundler/bundler-api) (the server side code for Bundler) has started [being moved](https://github.com/rubygems/rubygems-infrastructure/issues/42) into RubyGems.org infrastructure. This change was made to reduce duplication of effort and resources, but also fits into the general goal of an eventual Bundler and RubyGems merge.

Finally this month saw [a lot of work](https://github.com/bundler/bundler-site/pull/218) towards the new design for [bundler.io](https://bundler.io).

In total, Bundler had 40 merged pull requests and 226 commits from 15 authors, and we closed 49 issues.

## rubygems.org news

In addition to the standard Fastly optimizations, the RubyGems.org team started working towards
better policies and more security. The policies work, which will be released in the coming months, is on terms of use in general and name disputes (see: [left pad and npm](http://blog.npmjs.org/post/141577284765/kik-left-pad-and-npm)) in particular. The security updates are also related to name issues, and inspired by a blog post about [typosquatting package managers](http://incolumitas.com/2016/06/08/typosquatting-package-managers/). If you have advice / want to contribute to this particular solving this particular problem, here is [the relevant issue](https://github.com/rubygems/rubygems.org/issues/1334).

In total, Bundler had 40 merged pull requests and 103 commits from 11 authors.

## rubygems news

RubyGems [2.6.5](http://blog.rubygems.org/2016/06/21/2.6.5-released.html) and [2.6.6](http://blog.rubygems.org/2016/06/22/2.6.6-released.html) released this month, featuring a variety of bug fixes and minor enhancements that had accumulated since the last release. We also started working towards RubyGems 3.0, the Bundler and RubyGems merge. So far we have merged the [testing](https://github.com/rubygems/rubygems/pull/1650) and [issue semantics](https://github.com/rubygems/rubygems/issues/1442). *(???)* Pending a blog post detailing what the 3.0 release will entail, here is André describing [Bundler / RubyGems 3.0](https://github.com/rubygems/rubygems/pull/1639#issuecomment-227287369) informally.

In total, RubyGems had 12 merged pull requests and 19 commits from 6 authors.

## budget & expenses

From May 20 to June XX, Ruby Together took in $$$. In total, we spent $$$. Here's a breakdown of where the money went:

* $$$

Look forward in the next month to the completed [Bundler.io](https://bundler.io) redesign, the efforts of our many summer coding assistants, and the full Bundler 1.13 release.

Until next time,<br>
Lynn, André, and the Ruby Together team
