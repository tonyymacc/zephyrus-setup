#!/bin/bash

echo "Creating getty directory..."
# Create directory for getty service
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d

echo "Creating autologin.conf and appending config..."
# Create autologin.conf and append configuration
sudo bash -c 'cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf << EOF
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin tony --noclear %I \$TERM
Type=simple
EOF'

echo "Reloading daemon..."
# Reload systemd daemon
sudo systemctl daemon-reload

echo "Autologin done!"
