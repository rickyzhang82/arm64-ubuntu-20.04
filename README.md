What
====

QEMU install ARM64 Ubuntu 20.04.

- [Ubuntu image source](http://cdimage.ubuntu.com/ubuntu/releases/20.04/release/ubuntu-20.04.1-live-server-arm64.iso)
- Installation script `boot-install.sh`.
- Start OS script `run-server.sh`

How
===

1. Follow instruction in `doc/How to install Ubuntu Server for Arm in a QEMU aarch64 virtual machine – Lanyap Lab.pdf` to build BIOS, image.
1. Run `boot-install.sh` to install Ubuntu from ISO.
1. Run `run-server.sh` to start QEMU AARCH64 VM.
