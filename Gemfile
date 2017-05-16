source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "4.2.7.1"

gem "compass-rails", "~> 2.0"
gem "devise", '~> 4.1.1'
gem "fastly-rails", "~> 0.6"
gem "http", "~> 2.0"
gem "jquery-rails", "~> 4.1"
gem "lograge", "~> 0.4"
gem "mail", "~> 2.6.6.rc1"
gem "nilify_blanks", "~> 1.2"
gem "nokogiri", "~> 1.7"
gem "pg", "~> 0.18"
gem "premailer-rails", "~> 1.9"
gem "pry-rails", "~> 0.3"
gem "puma", "~> 2.16"
gem "rdiscount", "~> 2.2"
gem "rollbar", "~> 2.11"
gem "sass-rails", "~> 5.0"
gem "slack-notifier", "~> 1.5"
gem "stripe_event", "~> 1.5"
gem "uglifier", "~> 2.7"

group :development do
  gem "guard-livereload", "~> 2.5", require: false
  gem "guard-rails", "~> 0.7"
  gem "guard-rspec", "~> 4.7"
  gem "letter_opener", "~> 1.4"
  gem "quiet_assets", "~> 1.1"
  gem "rack-livereload", "~> 0.3"
  gem "terminal-notifier-guard", "~> 1.7"
  gem "web-console", "~> 2.3"
  gem "wicked_pdf", "~> 1.1"
  gem "wkhtmltopdf-binary", "~> 0.12.3"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.1"
  gem "pry-byebug", "~> 3.4"
  gem "rspec-rails", "~> 3.4"
end

group :production do
  gem "postmark-rails", "~> 0.12"
  gem "rails_12factor", "~> 0.0"
end

group :test do
  gem "webmock", "~> 2.0", require: false
  gem "vcr", "~> 3.0"
end
