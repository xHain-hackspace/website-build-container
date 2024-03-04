FROM debian:trixie-slim

# update and upgrade
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    hugo \
    jq

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
