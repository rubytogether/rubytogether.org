---
summary: In March, we paid for 62.4 hours of developer work, fixing bugs, administrating servers, and quietly kept things chugging along.
---

<% title "March 2017 Monthly Update" %>

Hello! Welcome to the monthly update. During March, our work was supported by [Stripe](http://stripe.com/), [CodeMiner42](http://www.codeminer42.com/), [Basecamp](http://basecamp.com), [Icelab](http://icelab.com.au/), [Bleacher Report](http://www.bleacherreport.com/), and many others.

## ruby together news

On the whole, this month was pretty quiet. We filed our taxes, worked on some plans for the future, and continued to pay for developer hours to maintain Ruby’s tooling infrastructure.

In March, Ruby Together was supported by 88 different companies, including [Stripe](#) and [CodeMiner42](#). Four companies joined as new members, including [Brandeis University](https://www.brandeis.edu), [Scout RFP](http://www.scoutrfp.com/), and [Modern Message](http://www.modernmsg.com/).

On top of those companies, three developers signed up as friends of Ruby Together, including Byron Appelt. In total, we were supported by 183 individual members and 91 friends of Ruby Together. Thanks to all of our members for making everything that we do possible. &lt;3

## bundler news

During March, we fixed bugs and started merging new features for Bundler 1.15. The most exciting change is a much clearer explanation when a Gemfile cannot be resolved.

Previously, any requirement for a failed gem would be printed out. That meant the error message would include things like “Could not resolve requirement `rack ~> 10.1`, Gemfile contained `rack 10.2`”. Since Rack version 10.2 is allowed by that requirement, it was not helpful to include it in the error message. Error messages when resolution fails in the future will be much easier to understand, since they will only include the requirements that could not be met.

A host of additional small features and fixes were added as well. Check out [the Bundler changelog](https://github.com/bundler/bundler/blob/master/CHANGELOG.md) to read about all of them. In total, Bundler gained 78 new commits. 16 different contributors changed 51 files, with 638 additions and 151 deletions.

## rubygems.org news

RubyGems.org saw updates to better validate incoming data, improve performance, and add a content security policy. We also merged support for self-service account deletion and about a dozen gem updates. In total, RubyGems.org gained 21 new commits. 4 different contributors changed 63 files, with 851 additions and 305 deletions.

## rubygems news

Version 2.6.11 of RubyGems was released, with improvements to resolving gem dependencies, a fix for gems compiled on MinGW, and a couple of bugfixes backported from Ruby trunk. In total, RubyGems gained 17 new commits. 6 different contributors changed 16 files, with 162 additions and 61 deletions.

## gemstash news

Gemstash gained the new feature of logging directly to stdout, making it easier to integrate with services like Heroku that expect logs to be printed. In total, Gemstash gained 3 new commits. 2 different authors changed 5 files, with 37 additions and 6 deletions.

## budget & expenses

In March, we saw $23,033 in total income, and spent a total of $16,881.76.

* $4,256 for 28.4 hours worked on Bundler at $150/hour
* $1,919 for 12.8 hours worked on RubyGems.org at $150/hour
* $2,063 for 13.8 hours worked on RubyGems at $150/hour
* $1,125 for 7.5 hours worked on other OSS and devtools at $150/hour
* $71.30 on dedicated servers for RubyBench.org
* $755.32 on payment processing fees
* $1,623.79 on company overhead like hosting, services, software, hardware, taxes, etc
* $5,000.00 on accounting, copywriting, design, and other professional services
* $68.85 on marketing, evangelism, and community outreach

Until next time,<br>
André, Joel and the Ruby Together team
