Ruby Together monthly updates have two main goals:

1.  Tell Ruby Together's members what we're doing with their money.
2.  Inform the wider Ruby community about RT's budget, goals, and accomplishments.

Previous updates can be seen at [rubytogether.org/news](https://rubytogether.org/news). Each update follows approximately the same format:

*   one paragraph summarizing the month, including paid dev hours and welcoming new members
*   ruby together news, including new employees and projects, changes to plans or process, public events and talks by members, or other milestones
*   project news, including notable changes, releases, and a git activity summary with commits, authors, additions, and deletions. the projects we currently include are:
    *   bundler
    *   rubygems
    *   [rubygems.org](http://rubygems.org)
    *   gemstash
    *   ruby toolbox
*   budget summary, including income, expenditure, and category breakdowns by project and type of corporate expense

Finally, an optional summary of plans or upcoming events.

The updates live inside the repo at [github.com/rubytogether/rubytogether.org](http://github.com/rubytogether/rubytogether.org), and there is a script at `bin/create_update` that partially automates some of the work involved. Over time, it will hopefully become more automated, but actually writing the words will always require a human being.

Today, the automation hits the production database to fetch new members and insert their names into the intro paragraphs. It also screen-scrapes github to get the git activity summary, and provides links to github commit lists for the right time period for the update. The update for The Ruby Toolbox comes from @colszowka in the RT Slack, and the other updates have (so far) been written by me. The financial summary comes from @therubyrep, via a combination of downloading financial data and running it through the script that lives at rubytogether/financial-automation. One day, maybe we can even fully automate that. I'm hoping that over time writing the update can shift to mostly or entirely a combination of you and the various people working on the projects.

After creating the update inside the website, and running the Rails app in dev mode to verify that the post looks right, push changes to GitHub and deploy the staging or production app using `bin/deploy staging` or `bin/deploy production`.

The monthly update also goes out in an email to all Ruby Together members via the Drip email service, located at [getdrip.com](http://getdrip.com). After logging in, go to the "Broadcasts" tab, create a new broadcast and name it like the other entries. The next page lets you choose recipients, but we want to send monthly updates to everyone, so just click "Next" in the bottom right.

To get the HTML source for email, load the new monthly update in your browser, view source, and copy the HTML making up the body of the update. Back in Drip's email editor, click the "Source" button, and then paste the HTML. Check that it looks right in the "Preview" tab, and then click "Next" in the bottom right. Finally, choose "Schedule email to send..." in the bottom right, and set it to 9am the next day. Click "Schedule broadcast", and you're done!
