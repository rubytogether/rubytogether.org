source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "4.2.7.1"

gem "compass-rails", "~> 2.0.4"
gem "devise"
gem "fastly-rails"
gem "http"
gem "jquery-rails"
gem "lograge"
gem "nilify_blanks"
gem "nokogiri", "~> 1.7"
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
  gem "letter_opener"
  gem "quiet_assets"
  gem "rack-livereload"
  gem "terminal-notifier-guard", "~> 1.6"
  gem "web-console", "~> 2.0"
  gem "wicked_pdf", "~> 1.1"
  gem "wkhtmltopdf-binary", "~> 0.12.3"
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
