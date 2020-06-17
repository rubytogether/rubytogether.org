---
summary: In May, we paid for 141.3 hours of developer work which included several updates, fixes and changes in preparation for the next Bundler release.
---

Hello! Welcome to the monthly update. During May, our work was supported by [Zendesk](https://www.zendesk.com), [Stripe](https://stripe.com), [DigitalOcean](https://www.digitalocean.com), [Bleacher Report](http://www.bleacherreport.com), and many others.


## ruby together news

In May, Ruby Together was supported by 45 different companies, including Sapphire member [Stripe](https://stripe.com). Five companies joined as new members.

On top of those companies, five new developers signed up as members, including Lola Odelola and Jakob Waller. In total, we were supported by 102 developer members. Thanks to all of our members for making everything that we do possible. &lt;3


## rubygems news

This month, we refactored the spec suite to be faster and collated changes that will be shipped in the next bundler release. We also fixed an [activation issue on old versions of Bundler](https://github.com/rubygems/rubygems/pull/3626). In addition, we fixed several regressions in RubyGems custom require and made specific tests work when running from ruby-core (thanks to [@David Rodriguez](https://github.com/deivid-rodriguez)). Other work we did included revisiting a bunch of old PRs and work from the old repo and getting them ready to merge into the new repo.

In May, RubyGems gained 248 new commits, contributed by 19 authors. There were 2227 additions and 1857 deletions across 892 files.


## rubygems.org news

In May, we worked on reviewing several fixes on RubyGems.org that, once deployed, will unblock the next Bundler release. We’ve also done work on refining the upcoming release, and handling some deprecation message issues and a few problems with the integration with ruby-core. On top of this, we investigated Honeybadger reports and created PRs to fix all of them. RubyGems.org saw several bug fixes and updates this month, some of which include the following:

* ran rake task to delete extraneous dependencies locally, and update tasks to update version info_checksum.

* verified feasibility of using updated_at column to order versions for the generation of versions.list file.

* added original_script_name to kaminari params blacklist, which prevents XSS and unintended URL redirect.

* updated rack-attack tests and config to fix dependency update build.

* resolved tickets on [Help.RubyGems.org](https://help.rubygems.org/).

* added rake task to update check of version with multi ruby/rubygems ([rubygems/rubygems.org#2370](https://github.com/rubygems/rubygems.org/issues/2370)).

* verified compact_index update and running rake task don’t introduce new mismatches.

* updated compact_index to remove whitespace change and released a new version.

* debugged checksum mismatch due to incomplete SQL ordering and unresolved dependencies.

* worked on PR to fix SQL ordering of dependencies in info and update correct_info_checksum rake task ([rubygems/rubygems.org#2374](https://github.com/rubygems/rubygems.org/issues/2374)).

* fixed rack-attack failing tests due to merge issues ([rubygems/rubygems.org#2369](https://github.com/rubygems/rubygems.org/issues/2369)).

* restarted work on moving RubyGems.org‘s CI to Github Actions.

We continue to attend to tickets, update dependencies, and review patches and PRs on RubyGems.org.

For this month, RubyGems.org gained 58 new commits, contributed by 8 authors. There were 646 additions and 102 deletions across 46 files.


## budget &amp; expenses

In May, we saw $15,966.16 in total income, and spent a total of $24,103.34.

* Stripe Payment Processing Fees $410.30   
* Employee Related $317.17  
* General & Administrative $180.77  
* IT & Software $883.77   
* Professional Fees	$319.00  
* 141.3 Hours of development work $12,845.01  

Until next time,<br>
Irene, André and the Ruby Together team