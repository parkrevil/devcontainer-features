#!/bin/bash
set -e

source dev-container-features-test-lib

# Go 설치 확인
check "go version" go version
check "go env GOPATH" go env GOPATH

# Go 도구들 확인
check "gopls installed" which gopls
check "goimports installed" which goimports
check "golangci-lint installed" which golangci-lint

# 환경 변수 확인
check "GOROOT set" echo $GOROOT
check "GOPATH set" echo $GOPATH

reportResults
