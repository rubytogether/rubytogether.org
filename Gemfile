source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "4.2.10"

gem "compass-rails", "~> 3.0"
gem "devise", '~> 4.3.0'
gem "fastly-rails", "~> 0.6"
gem "http", "~> 3.0"
gem "jquery-rails", "~> 4.1"
gem "lograge", "~> 0.7"
gem "mail", "~> 2.7.0"
gem "nilify_blanks", "~> 1.2"
gem "nokogiri", "~> 1.7"
gem "pg", "~> 0.21.0"
gem "premailer-rails", "~> 1.10"
gem "pry-rails", "~> 0.3"
gem "puma", "~> 3.11"
gem "rdiscount", "~> 2.2"
gem "rollbar", "~> 2.15"
gem "sass-rails", "~> 5.0"
gem "slack-notifier", "~> 2.3"
gem "stripe_event", "~> 1.8"
gem "uglifier", "~> 3.2"

group :development do
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rails", "~> 0.8"
  gem "guard-rspec", "~> 4.7"
  gem "letter_opener", "~> 1.4"
  gem "quiet_assets", "~> 1.1"
  gem "rack-livereload", "~> 0.3"
  gem "terminal-notifier-guard", "~> 1.7"
  gem "web-console", "~> 3.3"
  gem "wicked_pdf", "~> 1.1"
  gem "wkhtmltopdf-binary", "~> 0.12.3"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.1"
  gem "pry-byebug", "~> 3.5"
  gem "rspec-rails", "~> 3.6"
end

group :production do
  gem "postmark-rails", "~> 0.12"
  gem "rails_12factor", "~> 0.0"
  gem "sprockets-redirect", "~> 1.0"
end

group :test do
  gem "webmock", "~> 3.0", require: false
  gem "vcr", "~> 4.0"
end
