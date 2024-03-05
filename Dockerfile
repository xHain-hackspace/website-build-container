FROM debian:trixie

# update and upgrade
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    hugo \
    python3 \
    python3-requests \
    python3-tz \
    jq

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
