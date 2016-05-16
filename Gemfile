source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "~> 4.2.4"

gem "compass-rails", "~> 2.0.4"
gem "devise"
gem "fastly-rails"
gem "http"
gem "jquery-rails"
gem "nilify_blanks"
gem "nokogiri"
gem "pg"
gem "premailer-rails"
gem "pry-rails"
gem "puma", "~> 2.12"
gem "rdiscount"
gem "rollbar", "~> 2.0"
gem "sass-rails", "~> 5.0"
gem "slack-notifier"
gem "stripe_event", "~> 1.5"
gem "uglifier", "~> 2.7"

group :development do
  gem "guard-livereload", "~> 2.4", require: false
  gem "guard-rails"
  gem "guard-rspec"
  gem "quiet_assets"
  gem "rack-livereload"
  gem "terminal-notifier-guard", "~> 1.6"
  gem "web-console", "~> 2.0"
  gem "letter_opener"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.0"
  gem "pry-byebug"
  gem "rspec-rails"
end

group :production do
  gem "postmark-rails"
  gem "rails_12factor"
end

group :test do
  gem "webmock", require: false
  gem "vcr"
end
