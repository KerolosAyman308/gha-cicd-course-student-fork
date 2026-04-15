#!/usr/bin/env bash
set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "Run this script with sudo on the Ubuntu VM."
  exit 1
fi

TARGET_USER="${1:-${SUDO_USER:-ubuntu}}"

echo "Preparing Ubuntu VM for the final deployment assessment..."

apt-get update
apt-get install -y docker.io curl ufw

systemctl enable --now docker
usermod -aG docker "${TARGET_USER}"

if command -v ufw >/dev/null 2>&1; then
  ufw allow 22/tcp || true
  ufw allow 8000/tcp || true
  ufw --force enable || true
fi

echo
echo "VM preparation finished."
echo "Docker and curl are installed."
echo "Port 8000 is allowed through UFW if UFW is available."
echo "Sign out and sign back in once so Docker group access can apply to ${TARGET_USER}."
