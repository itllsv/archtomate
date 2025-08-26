#!/usr/bin/env bash


paru -S mesa linux-firmware --needed --noconfirm

# xorg
paru -S xf86-video-amdgpu --needed --noconfirm

# vulkan
paru -S vulkan-radeon --needed --noconfirm

# video acceleration
paru -S libva-mesa-driver mesa-vdpau libva-utils --needed --noconfirm

