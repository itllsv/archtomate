#!/usr/bin/env bash

# Stop if anything goes wrong
set -e

ITLLSV_INSTALL="$HOME/.local/share/archtomate/install"

trap 'echo "Error on $BASH_COMMAND"' ERR

GREEN='\033[0;32m'
NC='\033[0m'

print() {
    echo
    echo -e "${GREEN}$1 ${NC}"
    echo
}

install_module() {
	local module_name="$1"
	print "> $module_name"
	source "$ITLLSV_INSTALL/$module_name"
}

print "Starting..."

read -p "git username: " GIT_USER_NAME
read -p "git email: " GIT_USER_EMAIL

print "Installations..."
sudo pacman -S --needed --noconfirm git base-devel &>/dev/null

install_module "aur.sh"
install_module "git.sh"
install_module "initramfs.sh"
install_module "firewall.sh"
install_module "amdgpu.sh"
install_module "audio.sh"
install_module "mimetypes.sh"
install_module "ssh-mtu-problem.sh"
install_module "bluetooth.sh"
install_module "hypr.sh"
install_module "webapps.sh"
install_module "packages.sh"
install_module "dotfiles.sh"

print "Done"
