#!/bin/bash 

set -e

echo ""
echo "[Validation]: goss"
~/bin/goss -g test-install-goss.yaml validate --format tap
