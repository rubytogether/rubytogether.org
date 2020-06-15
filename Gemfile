source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "~> 6.0.3"

gem "compass-rails", "~> 4.0"
gem "devise", '~> 4.7.2'
gem "fastly", "~> 2.5"
gem "http", "~> 4.4"
gem "jquery-rails", "~> 4.4"
gem "lograge", "~> 0.11"
gem "mail", "~> 2.7.1"
gem "nilify_blanks", "~> 1.4"
gem "nokogiri", "~> 1.10"
gem "pg", "~> 1.2"
gem "premailer-rails", "~> 1.11"
gem "pry-rails", "~> 0.3"
gem "puma", "~> 4.3"
gem "rails-controller-testing", "~> 1.0.2", github: "rails/rails-controller-testing"
gem "rdiscount", "~> 2.2"
gem "rollbar", "~> 2.25"
gem "sass-rails", "~> 5.0"
gem "slack-notifier", "~> 2.3"
gem "stripe_event", "~> 2.3"
gem "uglifier", "~> 4.2"

group :development do
  gem "annotate", "~> 3.1"
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rails", "~> 0.8"
  gem "guard-rspec", "~> 4.7"
  gem "letter_opener", "~> 1.6"
  gem "rack-livereload", "~> 0.3"
  gem "terminal-notifier-guard", "~> 1.7"
  gem "terminal-notifier", "~> 2.0"
  gem "web-console", "~> 4.0"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.7"
  gem "pry-byebug", "~> 3.9"
  gem "rspec-rails", "~> 4.0"
end

group :production do
  gem "postmark-rails", "~> 0.20"
  gem "sprockets-redirect", "~> 1.0"
end

group :test do
  gem "webmock", "~> 3.8", require: false
  gem "vcr", "~> 6.0"
end
