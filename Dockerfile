# Make sure it matches the Ruby version in .ruby-version and Gemfile
FROM ruby:3.1.2-slim-bullseye as base

ENV RAILS_ENV=production \
    BUNDLE_PATH=/bundle \
    BUNDLE_WITHOUT="development test" \
    PATH=/app/bin:/app/vendor/bundle/bin:$PATH

WORKDIR /app

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential libpq-dev nodejs yarn && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# # Assets precompile
# FROM base as assets
# RUN bundle exec rake assets:precompile

# # Migrations
# FROM base as migrations
# RUN bundle exec rake db:create db:migrate
# RUN bundle exec rake db:seed


ENV RAILS_ENV=production
