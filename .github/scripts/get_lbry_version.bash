#!/bin/bash

# A script to set an environment variable
# containing the last stable LBRY version

# Get the latest (stable) LBRY version
LBRY_VERSION=`curl -H "Accept: application/vnd.github.v3+json" \
              https://api.github.com/repos/lbryio/lbry-desktop/releases/latest \
              | jq '.html_url' | grep -Eo "[0-9]+.[0-9]+.[0-9+]"`

# Save it as an environment variable
echo "LBRY_VERSION=${LBRY_VERSION}" >> ${GITHUB_ENV}
