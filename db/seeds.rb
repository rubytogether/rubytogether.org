# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

[User, Membership].each(&:delete_all)
expiration = 100.years.from_now

andre = User.create!(
  email: "andre@arko.net",
  encrypted_password: "$2a$12$cArR8JXd.hWQcjlo397WNO5ZwBXKJFrR7FcZR5roeFx04V08/Fb3G",
  admin: true
)

Membership.create!(
  user: andre,
  name: "André <script>alert(1);</script> Arko",
  level: :developer_medium,
  expires_at: expiration
)

directors = {
  "Adarsh Pandit": :developer_large,
  "Allison Sheren McMillan": :developer_medium,
  "Coraline Ada Ehmke": :developer_small,
  "Jonan Scheffler": :developer_large,
  "Valerie Woolard Srinivasan": :developer_medium,
}

directors.each do |name, level|
  user = User.create!(email: "#{name.to_s.split.first.downcase}@example.com")
  Membership.create!(expires_at: expiration, level: level, name: name, user: user)
end

corporations = [
  ["Stripe", "payments infrastructure for the internet", "http://stripe.com", :corporate_ruby],
  ["Bleacher <script>alert(1);</script> Report", "Bleacher <script>alert(1);</script> Report is the voice of today’s sports fan", "http://bleacherreport<script>alert(1);</script>.com", :corporate_sapphire],
  ["Kickstarter", "won't show up", "https://kickstarter.com", :corporate_emerald],
]

corporations.each do |name, description, url, level|
  user = User.create!(
    email: "#{name.split.first.downcase}@example.com"
  )

  Membership.create!(
    expires_at: expiration,
    name: name,
    description: description,
    url: url,
    level: level,
    user: user,
  )
end

User.update_all(created_at: 1.year.ago)
Membership.update_all(created_at: 1.year.ago)

# Import CMS seeds
Comfy::Cms::Site.create_with(
  label: "Ruby Together",
  hostname: Rails.application.routes.default_url_options.fetch(:host),
  locale: "en"
).find_or_create_by!(identifier: "ruby-together")
ComfortableMexicanSofa::Seeds::Importer.new("ruby-together", "ruby-together").import!

# Import existing text blog posts
Post.all.reverse.each do |np|
  md = ApplicationController.render(inline: np.body)

  ::Comfy::Blog::Post.create_with(
    created_at: np.date,
    published_at: np.date,
    site: ::Comfy::Cms::Site.find_by(identifier: "ruby-together"),
    layout: ::Comfy::Cms::Layout.find_by(identifier: "news"),
    title: np.title,
    fragments_attributes: [
      {identifier: "summary", content: np.summary},
      {identifier: "content", content: md},
    ]).find_or_create_by!(slug: np.name)
end
