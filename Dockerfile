FROM debian:latest

# File Updated: August 4, 2019

# https://docs.docker.com/engine/reference/builder/

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y bash curl git \
    && apt-get autoremove \
    && apt-get autoclean

# https://fuchsia.dev/fuchsia-src/getting_started
# https://fuchsia.dev/fuchsia-src/development/source_code

RUN curl -s "https://fuchsia.googlesource.com/fuchsia/+/master/scripts/bootstrap?format=TEXT" | base64 --decode | bash

ENV PATH $PATH:/fuchsia/.jiri_root/bin

RUN set -x \
    && jiri init -analytics-opt=false "/fuchsia"
