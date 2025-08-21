#!/bin/bash
set -e

BUN_VERSION=${FEATURE_VERSION}

echo "Installing Bun version $BUN_VERSION"

export BUN_INSTALL=/usr/local

curl -fsSL https://bun.com/install | bash -s "bun-v${BUN_VERSION}"
