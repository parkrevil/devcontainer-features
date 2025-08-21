#!/bin/bash
set -e

source dev-container-features-test-lib

REMOTE_USER=${_REMOTE_USER:-"vscode"}

check "ng version" bunx ng version
check "ng location" which ng
check "ng owned by remote user" ls -la $(which ng) | grep -q "$REMOTE_USER $REMOTE_USER"

reportResults
