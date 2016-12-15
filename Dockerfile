FROM ruby:2.3

RUN apt-get update && apt-get install vim -y && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/tmp
WORKDIR /usr/src/app

COPY ./Gemfile /usr/src/app/Gemfile
COPY ./Gemfile.lock /usr/src/app/Gemfile.lock

RUN bundle install -j4

COPY . /usr/src/app

EXPOSE 3000

# CMD ["bundle", "exec", "unicorn", "-c", "config/unicorn/docker.rb"]
CMD ["bundle", "exec", "rails", "s"]
