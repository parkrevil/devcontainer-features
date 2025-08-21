#!/bin/bash
set -e

source dev-container-features-test-lib

REMOTE_USER=${_REMOTE_USER:-"vscode"}
BUN_INSTALL_EXPECTED="/home/$REMOTE_USER/.bun"

echo "Testing for user: $REMOTE_USER"
echo "Expected BUN_INSTALL: $BUN_INSTALL_EXPECTED"

export PATH="$BUN_INSTALL_EXPECTED/bin:$PATH"

check "bun version" bun --version
check "bun location" which bun
check "BUN_INSTALL set" echo $BUN_INSTALL
check "bun directory ownership" ls -la "$BUN_INSTALL_EXPECTED" | head -1

reportResults
