#!/usr/bin/env bash
################################################################################
# Google distributes the bootstrap script for Fuchsia as a very condensed base64
# file. Want to read it? Check out the /bin/unpack_bootstrap.sh script for notes
#
# This is just for exploration. Follow the official Google steps to checkout the
# Fuchsia source code found here:
#
# https://fuchsia.dev/fuchsia-src/development/source_code
# 

curl -s "https://fuchsia.googlesource.com/fuchsia/+/master/scripts/bootstrap?format=TEXT"
