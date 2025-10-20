#!/bin/bash

sudo systemctl --machine=$USER@.host --user enable --now hypridle.service
