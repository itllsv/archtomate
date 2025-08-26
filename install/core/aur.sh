#!/usr/bin/env bash


# yay
if ! command -v yay; then
        cd /tmp
        rm -rf yay-bin
        git clone https://aur.archlinux.org/yay-bin.git
        cd yay-bin
        makepkg -si --noconfirm
        cd ..
        rm -rf yay-bin
        cd
fi

# paru
if ! command -v paru; then
        cd /tmp
        rm -rf paru
				git clone https://aur.archlinux.org/paru.git
				cd paru
				makepkg -si --noconfirm
        cd ..
        rm -rf paru
        cd
fi

# pacman setup
if ! grep -q "ILoveCandy" /etc/pacman.conf; then
        sudo sed -i '/^\[options\]/a Color\nILoveCandy' /etc/pacman.conf
        sudo sed -i 's/^#*\s*ParallelDownloads\s*=.*/ParallelDownloads = 10/' /etc/pacman.conf
fi
