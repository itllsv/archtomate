#!/usr/bin/env bash


paru -S --noconfirm --needed blueberry

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
