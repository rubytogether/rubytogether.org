source "https://rubygems.org"
ruby "2.2.0"

gem "rails", "4.2.0"

gem "devise"
gem "jquery-rails"
gem "pg"
gem "puma"
gem "sass-rails", "~> 5.0"
gem "stripe"
gem "uglifier", ">= 1.3.0"

group :development do
  gem "guard-livereload", "~> 2.4", require: false
  gem "guard-rails"
  gem "rack-livereload"
  gem "terminal-notifier-guard", "~> 1.6"
  gem "web-console", "~> 2.0"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.0.0.beta"
  gem "pretty_backtrace"
  gem "pry-byebug"
  gem "pry-rails"
end

group :production do
  gem "rails_12factor"
end