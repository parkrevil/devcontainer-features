#!/bin/bash
set -e

source dev-container-features-test-lib

check "bun version" bun --version

check "ng version" ng version
check "ng location" which ng

reportResults
