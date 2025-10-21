#!/bin/bash
echo -e '\nif uwsm check may-start; then\n\texec uwsm start hyprland-uwsm.desktop\nfi' >>~/.bash_profile
