FROM ruby:2.5.1
MAINTAINER siong1987@gmail.com

# Install apt based dependencies required to run Rails as
# well as RubyGems. As the Ruby image itself is based on a
# Debian image, we use apt-get to install those.
RUN apt-get update && apt-get install -y \
  postgresql-client \
  build-essential \
  locales \
  nodejs

# Use en_US.UTF-8 as our locale
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure --frontend=noninteractive locales

# Make /app our working directory.
RUN mkdir -p /app
WORKDIR /app

# Install bundler and make sure that the gems are cached
# at /cache/bundle.
ENV BUNDLE_PATH /cache/bundle
RUN gem install bundler

# Copy the main application.
COPY . ./

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000

# Configure an entry point, so we don't need to specify
# "bundle exec" for each of our commands.
ENTRYPOINT ["./bin/docker/run"]
