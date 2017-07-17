FROM ubuntu
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
  curl \
  postgresql-client
RUN mkdir -p /usr/local
WORKDIR /usr/local/lib
RUN mkdir heroku
RUN curl -k "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x64.tar.gz" | tar xz --directory heroku --strip-components 1
RUN ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
# force heroku to actually install
RUN heroku --version
