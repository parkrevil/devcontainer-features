#!/bin/bash
set -e

source dev-container-features-test-lib

check "bunx --bun ng version" ng version
check "bunx --bun ng location" which ng

reportResults
