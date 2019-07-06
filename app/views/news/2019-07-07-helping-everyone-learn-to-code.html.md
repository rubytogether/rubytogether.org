---
summary: A deep dive into the Bridge Troll project, including an interview with the developer and the first 4 weeks worth of updates.
---

<p class="small">Ruby Together is a non-profit trade organization that funds open source Ruby projects. This is a deep dive into one of our current funded projects including the backstory on the person who submitted the proposal and updates on project progress.</p>

### How One Woman Is Helping Everyone, Even Grandmothers, Learn To Code

> It’s really important that everyone learns how to program at least a little bit. It’s going to be part of every future job. &mdash; Rachel Ober

[Over 65% of new developers are self-taught](https://research.hackerrank.com/student-developer/2018). Rachel Ober is not part of that statistic. She’s among the surprising minority who learned to code in school, dual majoring in computer science and psychology—a compelling combination driven by a desire to learn how people think when they’re using computer systems.

Early in her career Rachel became interested in the front end of Ruby on Rails, and during that time she became involved with volunteer-run [RailsBridge](http://railsbridge.org/), started by Sarah Allen and Sarah Mei. Their mission was bold and much needed: make it easier for people to learn Ruby on Rails in a welcoming and accessible environment. Even if somebody had never programmed, there was a place for them and a curriculum for absolute newbies.

The free workshops, still active today, go as far as to offer free childcare. Rachel recalls an entire family, grandmother included, driving from New Jersey to New York City on a Friday night to attend a weekend workshop. RailsBridge started as a grassroots initiative in 2009 targeting an underserved community and continues going strong, with their “events focused on increasing diversity in tech, so that people of all backgrounds can feel welcome and comfortable in the industry.”

In 2013, Rachel discovered a passion for teaching after being invited to develop General Assembly’s first Ruby on Rails course. The opportunity allowed her to experiment with teaching techniques to see what worked with new and experienced Ruby on Rails students. Tech was moving into New York City more and a lot of people interested in Ruby on Rails were expressing that it was hard to get started. All the dots started connecting and Rachel set off on a course to bring more Ruby on Rails workshops to New York City.

It was through this experience that [Bridge Troll](https://www.bridgetroll.org/events) was born as an event management tool for all of [Bridge Foundry](https://bridgefoundry.org/)’s Bridge communities. The function is to make it easier to surface novice to advanced workshops happening around the world so that more people can learn to code. “I found out about Ruby Together through Twitter and learned that the organization funded open source projects.

For Bridge Troll to happen, I needed funding to support the time I would dedicate to working on the tool, so I put an application together and made a case for it.” With her proposal reviewed and accepted by the Ruby Together board, Rachel shares updates on where Bridge Troll is today after four weeks into the Ruby Together program.

#### Update #1

Our first two weeks managing the Bridge Troll project were basically figuring out the scope of the Bridge Troll project!

To give some history, Bridge Troll was created in order to make it easier to surface workshops that were happening around the world.

All of our bridges are entirely volunteer-run and largely run independently from each other. This leads to flexibility, but what can occur is that organizers can feel lost or worse that there is no one else in the organization available to help them with their needs.

Unfortunately, this real-world reality is often reflected in the code base of Bridge Troll itself!

Bridge Troll was originally led by a core team of individuals who have rolled off the project over the years without finding a replacement core team to pick up the reins and lead development of features and manage bugs. Because the application had certain quirks originally meant just for RailsBridge and a USA-based workshop, we now run into problems where not all of our Bridge workshops are recorded in this important piece of software.

After many discussions with Sarah Allen on this subject, our first object, and quite possibly the only objective of this project that we will likely focus on, is to create processes and lines of communication so that by the end of the 12 weeks we will have a new core team of contributors who will be set up for success to support the application and support new contributors who would like to help us out with the development.

My first objective for this 2-week period was to get introductions to the previous core contributors and begin conversations with those on the different program Boards for the different Bridge sub-organizations.

My second objective was to start documenting everything that I was working on, this included:

  - Development log: to track what I was working on to report to Ruby Together
  - Program Board: this can include daily updates of new files I created or documentation for the project or investigations into bugs that came in that I could triage right away.
  - Communication log: to document who I was reaching out to and what decisions had been made
  - Ongoing Questions file: if I had a conversation with someone and they ask something like “How do I get access to x?” and if I didn’t know how to answer that, I would add it to this file so that we could create the proper process to get people access.
  - User Interview questions: as I began to schedule a time to talk to contributors and stakeholders, I wanted to make sure I was consistent in what I was asking them but also had two different paths depending on who I was talking to.

Contributors were those who worked in the internals of the Bridge Troll code base and know the history of why things are the way they are.

Program board members and workshop organizers were users of the application itself. I want to find out more where Bridge Troll is excelling as a tool but also failing to provide the support for running workshops.

There is a lot of work to be done on the project and most of it is just finding out what is the most important thing to focus on first!

Sarah Allen and I have regular weekly meetings set up to track progress and bounce ideas off of each other as I work through creating processes and triage bug issues over the next few weeks!

#### Update #2

Our second two-week batch of work focused on triage of new bugs, setting up more communication channels between code contributors, board members, and Bridge Troll users, and a deep look into the [Core Infrastructure Badge Program](https://www.coreinfrastructure.org/programs/badge-program/).

_Triage of bugs_

One issue that constantly comes up is who has the permissions to approve new workshops on Bridge Troll? This is a question that spans both the core contributors (how exactly does someone get permission via the code base?) and the board members (which people get permission to approve events?)

The code base currently lets those who are bridge leaders, e.g. someone who is on the board, to approve events. But if that person is unresponsive—we have had issues where workshops have gone weeks without being approved—this can affect anything from attendance levels —because the workshop isn’t published on the platform—to the workshop’s organizers ability to get sponsorship funding because they can’t prove to the sponsor that the event is actually happening.

After a conversation with a past core contributor, we found that we could only add new admins via a Heroku console command and made a ticket to create an admin panel in Bridge Troll itself to better facilitate this action in the future. Additionally, we added 3 new admins (including myself, another core contributor, and a board member) to pick up the slack to approve new workshops.

We also recognized that the emails we send out to those who can approve workshops are ambiguous at best. The email itself does not have a clear “call to action” to say how to approve or what qualifications an event should have before approval. So that too was added to the backlog of things to address including a look into all of the emails we send!

_Core Infrastructure Badge Program_

I started to look into this after a conversation with Sarah Allen. Her feeling was that this program was a great first step to address the different parts of what a “successful” open source project includes in its documentation. I took a working session to run Bridge Troll through their system and set up a [public project status page](https://bestpractices.coreinfrastructure.org/en/projects/2769/).

Going through each of these benchmarks is a time-consuming ordeal and even after I went through it independently, I needed to also speak to Sarah about this and ask more detailed questions about whether we hit the criteria, could do better at hitting the criteria or didn’t hit it at all. We definitely were better at certain sections than others, but unfortunately, we didn’t make it through the entire document in one sitting and will have to revisit it again.

_Top Hit List_

This session we also started to develop our most important hit list of items that we felt could make the biggest impact in addition to the Core Infrastructure Badge Program that would help show potential contributors that the project was active and looking for contribution. I started investigating the way we display dates and times on the site (which ended up being quite varied!) and caused confusion to our international workshop organizers and attendees.

<p class="small">Stay tuned for more updates on the 12-week Bridge Troll project. Interested in getting paid to work on a Ruby open source project? <a href="https://rubytogether.org/projects">Learn more and apply for funding!</a></p>
