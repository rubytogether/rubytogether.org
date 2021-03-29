source "https://rubygems.org"
ruby File.read(File.expand_path("../.ruby-version", __FILE__)).chomp

gem "rails", "~> 6.1.3"

gem "aws-sdk-s3", "~> 1.93", require: false
gem "comfortable_mexican_sofa", "~> 2.0"
gem "comfy_blog", "~> 2.0"
gem "devise", '~> 4.7.3'
gem "fastly", "~> 3.0"
gem "http", "~> 4.4"
gem "http-parser", "~> 1.2.3" # required for Apple Silicon
gem "jquery-rails", "~> 4.4"
gem "lograge", "~> 0.11"
gem "mail", "~> 2.7.1"
gem "nilify_blanks", "~> 1.4"
gem "nokogiri", "~> 1.11"
gem "pg", "~> 1.2"
gem "premailer-rails", "~> 1.11"
gem "pry-rails", "~> 0.3"
gem "puma", "~> 5.2"
gem "rails-controller-testing", "~> 1.0.5", github: "rails/rails-controller-testing"
gem "rdiscount", "~> 2.2"
gem "rollbar", "~> 3.1"
gem "sassc-rails", "~> 2.1"
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
  gem "web-console", "~> 4.1"
end

group :development, :test do
  gem "dotenv-rails", "~> 2.7"
  gem "pry-byebug", "~> 3.9"
  gem "rspec-rails", "~> 5.0"
end

group :production do
  gem "postmark-rails", "~> 0.21"
  gem "sprockets-redirect", "~> 1.0"
end

group :test do
  gem "webmock", "~> 3.12", require: false
  gem "vcr", "~> 6.0"
end
