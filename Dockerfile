FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y git ruby file ruby-dev make cmake pkg-config libssl-dev && \
    # Clean up anything files left over by package management and any temp files in order to not bloat this layer
    rm -rf /var/lib/apt/lists/* /tmp/*
RUN gem install git_fame --no-document

WORKDIR /src
ENTRYPOINT ["git", "fame", "."]