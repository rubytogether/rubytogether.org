---
summary: A double update! In May and June, we paid for 179.4 hours of developer work, made Bundler faster, started preparing for Bundler 2, and kicked off some new sub-projects.
---

Hello! Welcome to the monthly update. During May and June, we paid for 179.4 hours of developer work on Bundler, RubyGems, and other open source tools. Our work was supported by [Stripe](http://stripe.com/), [Basecamp](https://basecamp.com/), [Icelab](http://icelab.com.au/), [Gitlab](http://gitlab.com/), [Cloud City](http://cloudcity.io), and many others.

## ruby together news


In May and June, Ruby Together was supported by 81 different companies, including Sapphire member [Stripe](https://stripe.com). 3 companies joined as new members, including [Day of the Shirt](https://dayoftheshirt.com) and [ClickFunnels](http://www.clickfunnels.com).

On top of those companies, 6 new developers signed up as members or friends of Ruby Together, including Josh Cass, Mark Tareshawty, Anıl İyidoğan, Dian Pan, and Sangwon Yi. In total, we were supported by 113 individual members and 73 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

In company news, we've brought [@therubyrep](https://twitter.com/therubyrep) onboard to help with admininstration work, including compiling these updates! We're expecting to be more timely in the future as a result of her help.

For project work, we have three announcements: The indomitable [@segiddins](https://twitter.com/segiddins) has agreed to work on Bundler and RubyGems full time over the summer, and we've already seen that start to pay off in the form of countless Bundler PRs working towards Bundler 2.

Next, [@radiomorillo](https://twitter.com/radiomorillo) has joined us to help us craft a RubyGems.org SSL troubleshooting guide. Historically, we've seen many users report problems with SSL certificates, depending on their exact OS, OpenSSL installation, Ruby version, and other factors besides. In the future, we're expecting many new issue reports when RubyGems.org deprecates versions of TLS older than 1.2. Hopefully, we'll come up with a guide that can help everyone get their issues sorted out and get back to installing gems.

Finally, we've also asked [@parbona](https://twitter.com/patricia_arbona) to help us review and revise Bundler's website and documentation with an eye towards helping and supporting new users and contributors. In the future, we'd love to get the documentation to a point where new developers can use the Bunlder docs to get started, rather than (usually) needing to be led through the process with explanations from more experienced developers.

The secret announcement we teased last time isn't quite ready yet, but we think you'll be pleased once you hear it. Keep holding on, and we'll get there!

## bundler news

In May and June, Bundler saw the release of 1.15 final, and the 1.15.1 bugfix release. The biggest changes in Bundler were: a huge speedup to `bundle exec` on large gemfiles, a new `bundle issue` command, a new `bundle add` command, and a new `bundle pristine` command. We also (finally) shipped man pages for every Bundler command that currently exists, and plan to maintain full manpage coverage for all future releases. If you're interested in those changes, you can read more in [the Bundler 1.15 release announcement](http://bundler.io/blog/2017/05/19/bundler-1-15-bundle-oh-so-fast.html), or just upgrade right away by running `gem install bundler`.

Along with the 1.15 release, we kicked off a realistic plan towards releasing Bundler 2.0. Rather than forking into two codebases, we are implementing all of our planned changes for 2.0 as feature flags, disabled by default. Anyone interested can try out all of the changes that we've finished implementing so far by setting the relevant feature flags. Once everything is complete, we'll be able to release a 2.0 with the new default settings, and it's shaping up to be really great so far. It's incredibly exciting to see (literally) years of planning pay off.

In total, Bundler gained 248 new commits, contributed by 20 authors. There were 7,861 additions and 1,991 deletions across 920 files.

## rubygems.org news

RubyGems.org saw a new [advanced search page](https://github.com/rubygems/rubygems.org/pull/1603), updates to Rails and many other gems, and fixes to various and sundry bugs, including validations for email length, session expiration, and visual bugs on the 404 page.

Overall, Rubygems.org gained 88 new commits, contributed by 9 authors. There were 1,375 additions and 764 deletions across 246 files.

## rubygems news

The RubyGems library also got some love, seeing new `signin` and `signout` commands for explicit authorization to RubyGems.org. There were also performance improvements and bugfixes from @segiddins. Rubygems gained 43 new commits, contributed by 11 authors. There were 365 additions and 112 deletions across 28 files.

## gemstash news

Gemstash gained a new comprehensive health check, allowing automated systems to see whether a given Gemstash server is able to respond, reach the file storage, and reach the database. Ultimately, Gemstash gained 7 new commits, contributed by 1 author. There were 181 additions and 1 deletion across 12 files.

## budget &amp; expenses

In May, we saw $21,080.00 in total income, and spent a total of $19,089.33.

  * $7275 for 48.5 hours worked on Bundler at $150/hour
  * $3363 for 22.4 hours worked on RubyGems.org at $150/hour
  * $3525 for 23.5 hours worked on RubyGems at $150/hour
  * $1688 for 11.3 hours worked on other OSS and devtools at $150/hour
  * $73.32 on dedicated servers for RubyBench.org
  * $696.66 on payment processing fees
  * $1588.37 on company overhead like hosting, services, software, hardware, taxes, etc
  * $745.0 on accounting, copywriting, design, and other professional services
  * $135.98 on marketing, evangelism, and community outreach

In June, we saw $20,880 in total income, and spent a total of $16,407.31.

  * $4805 for 32.0 hours worked on Bundler at $150/hour
  * $3096 for 20.6 hours worked on RubyGems.org at $150/hour
  * $1098 for 7.3 hours worked on RubyGems at $150/hour
  * $2167 for 14.4 hours worked on other OSS and devtools at $150/hour
  * $75.34 on dedicated servers for RubyBench.org
  * $696.82 on payment processing fees
  * $1510.45 on company overhead like hosting, services, software, hardware, taxes, etc
  * $620.0 on accounting, copywriting, design, and other professional services
  * $2339.7 on marketing, evangelism, and community outreach

Until next time,<br>
André and the Ruby Together team
