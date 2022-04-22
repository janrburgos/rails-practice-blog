FROM ruby:3.0.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

RUN apt-get update

COPY Gemfile /usr/src/app/

COPY Gemfile.lock /usr/src/app/

RUN bundle install

COPY . /usr/src/app