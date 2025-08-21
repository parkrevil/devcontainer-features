#!/bin/bash

set -e

ANGULAR_VERSION=${VERSION:-"^20"}

echo "Installing Angular CLI version $ANGULAR_VERSION using Bun"

bun add -g @angular/cli@"$ANGULAR_VERSION"
