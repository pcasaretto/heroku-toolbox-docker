FROM ruby
RUN mkdir -p /usr/local
WORKDIR /usr/local
RUN curl -s "https://s3.amazonaws.com/assets.heroku.com/heroku-client/heroku-client.tgz" | tar xz
RUN mv heroku-client heroku
env PATH /usr/local/heroku/bin:$PATH
