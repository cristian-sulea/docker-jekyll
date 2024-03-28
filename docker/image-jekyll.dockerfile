FROM ruby:3.1-slim-bullseye as jekyll

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem update --system && gem install jekyll -v 4.3.3 && gem cleanup

WORKDIR /site
EXPOSE 4000

ENTRYPOINT [ "jekyll" ]
CMD [ "--help" ]
