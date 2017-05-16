# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[User, Membership].each(&:destroy_all)
expiration = 100.years.from_now

andre = User.create!(
  email: "mail@arko.net",
  encrypted_password: "$2a$12$lPDc097WBP/Fds25KKLFmOvpVk8jF5.8rqyoiU2gICtCwNV7phzSq",
)

Membership.create!(user: andre, name: "André <script>alert(1);</script> Arko",
  kind: :individual, expires_at: expiration)

directors = [
  "Aaron Patterson",
  "Steve Klabnik",
  "Sarah Mei",
  "Terence Lee",
  "Ines Sombra",
  "Joel Watson"
]

directors.each do |name|
  Membership.create!(expires_at: expiration, kind: :individual, name: name)
end

corporations = [
  ["Stripe", "payments infrastructure for the internet", "http://stripe.com"],
  ["Engine <script>alert(1);</script> Yard", "the platform-as-a-service of your <script>alert(1);</script> dreams", "http://engineyard<script>alert(1);</script>.com"]
]

corporations.each do |name, description, url|
  Membership.create!(expires_at: expiration, name: name, description: description, url: url, kind: :corporate_emerald)
end

Membership.create!(
  expires_at: expiration,
  name: "Kickstarter",
  url: "https://kickstarter.com",
  kind: :corporate_topaz
)

User.update_all(created_at: 1.year.ago)
Membership.update_all(created_at: 1.year.ago)
