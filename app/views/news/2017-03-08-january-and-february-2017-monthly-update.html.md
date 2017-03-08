---
summary: "summary: In January and February, we paid for 167.8 hours of developer work, pushed a Bundler feature release as version 1.14, got some feedback, and made plans for the future."
---

<% title "January & February 2017 Monthly Update" %>

Hello, everyone! Welcome to the monthly update—or in this particular case, two monthly updates. During the months of January and February, our work was supported by [Stripe](http://stripe.com/), [CodeMiner42](http://www.codeminer42.com/), [DigitalOcean](http://www.digitalocean.com/ "DigitalOcean"), [Travis CI](https://travis-ci.org/ "Travis CI"), [thoughtbot](https://thoughtbot.com/ "thoughtbot"), and many, many others.

## ruby together news

In some ways, January and February were boring and run-of-the-mill: we paid developers to work on open source, and Ruby OSS infrastructure was maintained and improved. We were supported by 84 companies, including [Travis](http://travis-ci.com), [Airbnb](http://www.airbnb.com), and [GitLab](http://gitlab.com) all renewing their memberships for the entire year of 2017. 13 companies joined as new members, including [Evil Martians](https://evilmartians.com), [makandra](https://makandra.com), [Substance Lab](http://substancelab.com), [Instrumental](https://instrumentalapp.com), [Buildkite](https://buildkite.com), [DocRaptor](https://docraptor.com), [Evolving Media Network / Moonfarmer](http://www.evolvingmedia.net/), [Newington College](https://newington.nsw.edu.au), [MAKEMUSIC](http://www.makemusic.com/), and [Ben Lovell Ltd](https://github.com/benlovellltd).

On top of those companies, 42 developers signed up as friends of Ruby Together, and 18 developers signed up as members, including Jon Atack, Eric Henderson, Nichol Alexander, Bess Sadler, Daniel Fone, Spencer Roach, Jeff Sandberg, Ivan Stana, Piotr Szmielew, Daniel Leavitt, Andrei Beliankou, Matthew Werner, Eliot Sykes, and Richard Harrah. In total, we were supported by over 180 individual members and 88 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

In some other ways, though, these months were surprisingly eventful: the Ruby Together board was approached in private by a group of concerned developers. The feedback those developers gave broke down into three categories. First, the Bundler post-install message was unfortunately misleading some people into thinking that Ruby Together pays for the RubyGems.org servers, when that is not the case. Second, they were concerned that Ruby Together could be seen as a way for André and the other funded maintainers to blackmail companies into paying Ruby Together for features or bugfixes. Finally, the group said they also felt upset there was no official avenue to accept their feedback to Ruby Together.

The Ruby Together board listened to their feedback, and will be addressing all three points. To start with, the Bundler team has removed the Bundler post-install message until they can come up with a clearer one. The Bundler readme has also been revised to clarify what Ruby Together pays for, and make it clear that feature requests will always be evaluated on their own merits, not based on whether the person or company proposing the feature is a member.

Towards addressing the second point, we have started work on an official project funding policy. The policy will make our criteria for funding projects public, as well as detailing the mechanisms we employ to separate recipients of funds from decisions about funding them. Keep an eye out for that policy in a separate announcement in the coming weeks.

Finally, in order to help Ruby Together accomplish its goal of serving the entire community, we will be establishing a public feedback group just for Ruby Together. We will use that forum to open discussion of policy and funding issues, and especially to get feedback on proposed plans before they are implemented. Participation will be open to anyone who uses Ruby, not just members. Our work is for the whole community, and we want to hear from all of them.

## bundler news

The exciting news for Bundler in this update is a feature release: 1.14. Version 1.14 validates downloaded .gem files against checksums provided by RubyGems.org, it improves support for running a single bundled application on more than one OS, and shows dramatically more information if the Ruby or RubyGems version conflicts with gem requirements.

After releasing 1.14 final, we continued to fix reported bugs, including a small number of regressions. Between Dec 29 and Feb 22, we pushed 5 bugfix releaseso fixing many reported issues and repairing compatibility with the upcoming Ruby 2.5 release. In total, Bundler merged 106 pull requests that included 152 commits. 24 different contributors changed 266 files, with 3,135 additions and 1,066 deletions.

## rubygems.org news

Over on RubyGems.org, changing your email address got more reliable: we now require verification of your new email address before removing your old one. Along with the usual security updates, we also dramatically improved the performance of the inverse dependencies API. In total, RubyGems.org merged 3 pull requests including 89 commits. 12 different contributors changed 95 files, with 2,477 additions and 1,838 deletions.

## rubygems news

There were two bugfix releases of RubyGems, version 2.6.9 and 2.6.10, fixing six miscellaneous bugs and updating the dependency resolver shared with Bundler and CocoaPods. In total, RubyGems merged 33 pull requests that included 33 commits, and 9 contributors changed 40 files, with 569 additions and 158 deletions.

## gemstash news

Gemstash released version 1.0.4, adding private gem support for the `latest_gems` endpoint used by `gem install`. In total, Gemstash merged 2 pull requests that included 26 commits. 5 contributors changed 19 files, with 387 additions and 87 deletions.

## budget & expenses

In the months of January and February combined, we saw $45,031 in total income, and spent a total of $44,893.72.

* $9,994 for 66.6 hours worked on Bundler at $150/hour
* $10,134 for 67.6 hours worked on RubyGems.org at $150/hour
* $2,505 for 16.7 hours worked on RubyGems at $150/hour
* $2,543 for 17.0 hours worked on other OSS and devtools at $150/hour
* $142.09 on dedicated servers for RubyBench.org
* $1465.08 on payment processing fees
* $5337.41 on company overhead like hosting, services, software, hardware, taxes, etc
* $8025.0 on accounting, copywriting, design, and other professional services
* $4749.14 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team