#!/bin/bash

set -e

ANGULAR_VERSION=${FEATURE_VERSION}

echo "Installing Angular CLI version $ANGULAR_VERSION using $PACKAGE_MANAGER"

bun install -g @angular/cli@"$ANGULAR_VERSION"
