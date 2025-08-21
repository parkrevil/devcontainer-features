#!/bin/bash

set -e

ANGULAR_VERSION=${VERSION}

echo "Installing Angular CLI version $ANGULAR_VERSION using Bun"

bun install -g @angular/cli@"$ANGULAR_VERSION"
