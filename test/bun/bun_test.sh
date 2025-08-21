#!/bin/bash
set -e

source dev-container-features-test-lib

# Bun 설치 확인
check "bun version" bun --version
check "bun location" which bun

# Bun 환경 변수 확인
check "BUN_INSTALL set" echo $BUN_INSTALL

reportResults
