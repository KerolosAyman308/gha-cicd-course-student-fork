#!/usr/bin/env bash
set -euo pipefail

echo "Preparing or checking the local machine for optional assessment support..."

if [[ "$(uname -s)" == "Linux" ]] && command -v apt-get >/dev/null 2>&1; then
  if [[ "${EUID}" -eq 0 ]]; then
    apt-get update
    apt-get install -y docker.io curl openssh-client
    echo "Installed Docker, curl, and OpenSSH client on this Linux machine."
    exit 0
  fi

  echo "Linux machine detected."
  echo "Run this script with sudo if you want it to install Docker, curl, and OpenSSH client automatically."
  exit 0
fi

MISSING=0

for tool in docker curl ssh; do
  if command -v "${tool}" >/dev/null 2>&1; then
    echo "Found ${tool}."
  else
    echo "Missing ${tool}."
    MISSING=1
  fi
done

if [[ "${MISSING}" -eq 1 ]]; then
  echo
  echo "Install the missing tools manually on this machine before using optional local validation."
else
  echo
  echo "This machine already has the common local support tools."
fi
