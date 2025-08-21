#!/bin/bash
set -e

source dev-container-features-test-lib

check "ng version" bunx ng version
check "ng location" which ng

reportResults
