FROM ruby:2.2.2

RUN apt-get update -qq && apt-get install -y build-essential && apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

ENV BUNDLE_PATH /gems/praxisdecor
EXPOSE 3000

ADD . $app

CMD ["bundle", "install"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "--pid", "/tmp/server.pid"]
