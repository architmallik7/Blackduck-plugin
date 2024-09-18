#!/bin/sh

# force go modules
export GOPATH=""

# disable cgo
export CGO_ENABLED=0

set -e
set -x

# windows
GOOS=windows go build -o release/windows/amd64/blackduck-plugin.exe