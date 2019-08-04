#!/usr/bin/env bash
################################################################################
# Google distributes the bootstrap script for Fuchsia as a very condensed base64
# file. Want to read it? Unpack it with these steps. Because the bootstrap.txt
# file is not in this /bin directory, you should run this script from the root /
# directory in this project.
#
# This is just for exploration. Follow the official Google steps to checkout the
# Fuchsia source code found here:
#
# https://fuchsia.dev/fuchsia-src/development/source_code
# 

cat bootstrap.txt | base64 --decode >> ./bootstrap.sh
