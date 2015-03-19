source "https://rubygems.org"
ruby "2.2.1"

gem "rails", "4.2.0"

gem "devise"
gem "fastly-rails"
gem "http"
gem "jquery-rails"
gem "nokogiri"
gem "nilify_blanks"
gem "pg"
gem "premailer-rails"
gem "puma"
gem "rdiscount"
gem "rollbar", "~> 1.4"
gem "sass-rails", "~> 5.0"
gem "stripe_event", "~> 1.5"
gem "sucker_punch", "~> 1.0"
gem "uglifier", "~> 2.7"

group :development do
  gem "guard-livereload", "~> 2.4", require: false
  gem "guard-rails"
  gem "guard-rspec"
  gem "quiet_assets"
  gem "rack-livereload"
  gem "terminal-notifier-guard", "~> 1.6"
  gem "web-console", "~> 2.0"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.0.0.beta"
  gem "pretty_backtrace"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
end

group :production do
  gem "librato-rails"
  gem "newrelic_rpm"
  gem "postmark-rails"
  gem "rails_12factor"
end
