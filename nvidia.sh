#!/bin/bash

echo "Adding Nvidia modules to mkinitcpio.conf..."
# Add to /etc/mkinitcpio.conf (append to MODULES if not present)
sudo sed -i '/^MODULES=/ s/)$/ nvidia nvidia_modeset nvidia_uvm nvidia_drm)/' /etc/mkinitcpio.conf

echo "Rebuilding initramfs..."
# Rebuild initramfs
sudo mkinitcpio -P

echo "Adding kernel parameters..."
# Add kernel parameter for suspend in systemd-boot
for entry in /boot/loader/entries/*.conf; do
  sudo sed -i '/^options/ s/$/ nvidia.NVreg_PreserveVideoMemoryAllocations=1/' "$entry"
done

echo "Enabling suspend/wake functionality..."
# Suspend/wakeup
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service

echo "Nvidia done!"
