#!/bin/bash

SYMLINK_NAME="amd-igpu"
RULE_PATH="/etc/udev/rules.d/amd-igpu-dev-path.rules"
AMD_IGPU_ID=$(lspci -d ::03xx | grep 'AMD' | cut -f1 -d' ')
UDEV_RULE="$(
  cat <<EOF
KERNEL=="card*", \
KERNELS=="0000:$AMD_IGPU_ID", \
SUBSYSTEM=="drm", \
SUBSYSTEMS=="pci", \
SYMLINK+="dri/$SYMLINK_NAME"
EOF
)"

echo "$UDEV_RULE" | sudo tee "$RULE_PATH"

sudo udevadm control --reload
sudo udevadm trigger

echo "AMD done!"
