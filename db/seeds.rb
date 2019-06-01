# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[User, Membership].each(&:delete_all)
expiration = 100.years.from_now

andre = User.create!(
  email: "andre@arko.net",
  encrypted_password: "$2a$12$lPDc097WBP/Fds25KKLFmOvpVk8jF5.8rqyoiU2gICtCwNV7phzSq",
)

Membership.create!(
  user: andre,
  name: "André <script>alert(1);</script> Arko",
  level: :individual_medium,
  expires_at: expiration
)

directors = {
  "Adarsh Pandit": :individual_large,
  "Allison Sheren McMillan": :individual_medium,
  "Coraline Ada Ehmke": :individual_small,
  "Jonan Scheffler": :individual_large,
  "Valerie Woolard Srinivasan": :individual_medium,
}

directors.each do |name, level|
  Membership.create!(expires_at: expiration, level: level, name: name)
end

corporations = [
  ["Stripe", "payments infrastructure for the internet", "http://stripe.com", :corporate_ruby],
  ["Bleacher <script>alert(1);</script> Report", "Bleacher <script>alert(1);</script> Report is the voice of today’s sports fan", "http://bleacherreport<script>alert(1);</script>.com", :corporate_sapphire],
  ["Kickstarter", "won't show up", "https://kickstarter.com", :corporate_emerald],
]

corporations.each do |name, description, url, level|
  Membership.create!(
    expires_at: expiration,
    name: name,
    description: description,
    url: url,
    level: level
  )
end

User.update_all(created_at: 1.year.ago)
Membership.update_all(created_at: 1.year.ago)
