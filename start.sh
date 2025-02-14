#!/bin/bash

# If a data file server URL is a non-empty string that is not the default value, search and replace.
if [[ "x${DR_SERVER_URL}" != "x" && "$DR_SERVER_URL" != "desdr-server.ncsa.illinois.edu" ]]; then
    find static/des_components -type f -exec sed -i "s/desdr-server.ncsa.illinois.edu/${DR_SERVER_URL}/g" {} \;
fi

set -euo pipefail

python main.py
