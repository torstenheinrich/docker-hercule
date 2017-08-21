FROM alpine

LABEL maintainer="t.heinrich@live.de"
LABEL version="4.1.0"

# install all the dependencies
RUN apk add --update \
    nodejs \
    nodejs-npm \
  && rm -rf /var/cache/apk/*

# install hercule
RUN npm install -g hercule@4.1.0

WORKDIR /docs

ENTRYPOINT ["hercule"]
