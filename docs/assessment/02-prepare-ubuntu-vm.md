# Prepare the Ubuntu VM

## Purpose

This page helps you prepare one Ubuntu VM for the final assessment.

## Before You Start

Use this page only after you already know the standardized assessment model:

- one Ubuntu VM is the deployment target
- GitHub Actions reaches that VM over SSH
- the deployed app must answer on port `8000`
- Docker Hub carries the image and the VM must support Docker

## What the VM Must Support

Your VM should be able to:

- accept SSH login with a key
- answer HTTP requests on port `8000`
- be reachable from GitHub Actions on its public IP or DNS name
- run Docker containers

## Supporting Script

This repository includes:

- `scripts/assessment/prepare-ubuntu-vm.sh`
- `scripts/assessment/prepare-local-machine.sh` for optional local support checks

Use `prepare-ubuntu-vm.sh` mainly for the Docker-based assessment path.

It installs the common VM dependencies used in that path:

- Docker
- curl
- firewall rule for port `8000`

## One Practical Way to Use the Script

From your repository on your machine, copy the script to the VM:

```bash
scp scripts/assessment/prepare-ubuntu-vm.sh <vm-user>@<vm-host>:~/
```

Then connect to the VM:

```bash
ssh <vm-user>@<vm-host>
```

Run the script with `sudo`:

```bash
chmod +x ~/prepare-ubuntu-vm.sh
sudo ~/prepare-ubuntu-vm.sh <vm-user>
```

## What to Check After the Script

On the VM, always confirm:

```bash
curl --version
```

Also confirm:

```bash
docker --version
docker ps
```

If `docker ps` asks for root permission, sign out and sign back in once so the Docker group change can apply.

## Port Check

Your deployed app will use port `8000`.

Make sure:

- your VM firewall allows `8000`
- your cloud security rule or VM network rule allows `8000`
- the VM is reachable from the public internet, because GitHub-hosted runners must reach it too

## Why This Matters

The workflow can only deploy successfully if the VM is ready first.

This preparation step removes the most common remote-deployment blockers before the workflow runs.

When this page is done, continue with:

- [Configure Docker Hub, SSH, and GitHub Secrets](03-configure-secrets-and-ssh.md)
