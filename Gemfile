source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "~> 5.2"

gem "compass-rails", "~> 3.1"
gem "devise", '~> 4.7.1'
gem "fastly-rails", "~> 0.8"
gem "http", "~> 4.1"
gem "jquery-rails", "~> 4.3"
gem "lograge", "~> 0.11"
gem "mail", "~> 2.7.1"
gem "nilify_blanks", "~> 1.3"
gem "nokogiri", "~> 1.10"
gem "pg", "~> 1.1"
gem "premailer-rails", "~> 1.10"
gem "pry-rails", "~> 0.3"
gem "puma", "~> 4.2"
gem "rails-controller-testing", "~> 1.0.2"
gem "rdiscount", "~> 2.2"
gem "rollbar", "~> 2.22"
gem "sass-rails", "~> 5.0"
gem "slack-notifier", "~> 2.3"
gem "stripe_event", "~> 2.3"
gem "uglifier", "~> 4.2"

group :development do
  gem "annotate", "~> 3.0"
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rails", "~> 0.8"
  gem "guard-rspec", "~> 4.7"
  gem "letter_opener", "~> 1.6"
  gem "rack-livereload", "~> 0.3"
  gem "terminal-notifier-guard", "~> 1.7"
  gem "terminal-notifier", "~> 2.0"
  gem "web-console", "~> 3.7"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.7"
  gem "pry-byebug", "~> 3.7"
  gem "rspec-rails", "~> 3.9"
end

group :production do
  gem "postmark-rails", "~> 0.19"
  gem "rails_12factor", "~> 0.0"
  gem "sprockets-redirect", "~> 1.0"
end

group :test do
  gem "webmock", "~> 3.7", require: false
  gem "vcr", "~> 5.0"
end

