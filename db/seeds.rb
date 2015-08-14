# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[User, Membership].each(&:destroy_all)

andre = User.create!(
  email: "mail@arko.net",
  encrypted_password: "$2a$12$lPDc097WBP/Fds25KKLFmOvpVk8jF5.8rqyoiU2gICtCwNV7phzSq",
)

Membership.create!(user: andre, name: "André Arko",
  kind: :individual, expires_at: 1.year.from_now)

directors = [
  "Aaron Patterson",
  "Steve Klabnik",
  "Sarah Mei",
  "Terence Lee",
  "Ines Sombra",
  "Joel Watson"
]

directors.each do |name|
  Membership.create!(expires_at: 1.year.from_now, kind: :individual, name: name)
end

corporations = [
  ["Stripe", "payments infrastructure for the internet", "http://stripe.com"],
  ["Engine Yard", "the platform-as-a-service of your dreams", "http://engineyard.com"]
]

corporations.each do |name, description, url|
  Membership.create!(expires_at: 1.year.from_now, name: name, description: description, url: url, kind: :corporate_emerald)
end

Membership.create!(
  expires_at: 1.year.from_now,
  name: "Kickstarter",
  url: "https://kickstarter.com",
  kind: :corporate_topaz
)
