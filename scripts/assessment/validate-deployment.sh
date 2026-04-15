#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${1:-}"

if [[ -z "${BASE_URL}" ]]; then
  echo "Usage: bash scripts/assessment/validate-deployment.sh http://<host>:8000"
  exit 1
fi

echo "Checking ${BASE_URL}/health"
curl --fail --silent "${BASE_URL}/health"
echo
echo

echo "Checking ${BASE_URL}/version"
curl --fail --silent "${BASE_URL}/version"
echo
echo

echo "Checking ${BASE_URL}/status"
curl --fail --silent "${BASE_URL}/status"
echo
echo

echo "Deployment validation completed successfully."
