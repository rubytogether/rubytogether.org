# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[User, Membership].each(&:destroy_all)

directors = [
  "André Arko",
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
  Membership.create!(expires_at: 1.year.from_now, name: name, description: description, url: url, kind: :corporate)
end