FROM alpine:3.10.3

RUN apk add --no-cache git ruby file
RUN gem install git_fame --no-rdoc --no-ri

WORKDIR /src
ENTRYPOINT ["git", "fame", "."]