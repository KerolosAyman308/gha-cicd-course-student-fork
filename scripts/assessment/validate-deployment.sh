#!/usr/bin/env bash
set -Eeuo pipefail

BASE_URL="${1:-}"

if [[ -z "${BASE_URL}" ]]; then
  echo "Usage: bash scripts/assessment/validate-deployment.sh http://<host>:8000"
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to validate the deployment."
  exit 1
fi

BASE_URL="${BASE_URL%/}"

check_endpoint() {
  local name="$1"
  local path="$2"

  echo "Checking ${BASE_URL}${path}"
  curl --fail --silent --show-error "${BASE_URL}${path}"
  echo
  echo
  echo "[PASS] ${name} responded successfully."
  echo
}

check_endpoint "/health" "/health"
check_endpoint "/version" "/version"
check_endpoint "/status" "/status"

echo "Deployment validation completed successfully."
