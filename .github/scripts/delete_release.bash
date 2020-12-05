#!/bin/bash

# A script to delete a GitHub release if it exists

# Get the release ID
RELEASE_ID=`curl -H "Accept: application/vnd.github.v3+json" ${GH_REPO}/tags/v${LBRY_VERSION} | jq '.id'`

if [ "${RELEASE_ID}" != "null" ]; then
     # Delete the release
     curl -u paveloom:${GH_TOKEN} -X DELETE -H "Accept: application/vnd.github.v3+json" ${GH_REPO}/${RELEASE_ID}
fi
