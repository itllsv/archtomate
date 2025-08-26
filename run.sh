#!/usr/bin/env bash
set -e

INSTALL_DIR="$HOME/.local/share/archtomate/install"

GREEN='\033[0;32m'
NC='\033[0m'

log() {
    echo -e "\n${GREEN}$1${NC}\n"
}

run_module() {
    local category="$1"
    local module="$2"
    log "Installing $module..."
    source "$INSTALL_DIR/$category/$module"
}

read -p "Git username: " GIT_USER_NAME
read -p "Git email: " GIT_USER_EMAIL
export GIT_USER_NAME GIT_USER_EMAIL

log "Starting..."

sudo pacman -S --needed --noconfirm git base-devel

run_module "core" "aur.sh"
run_module "core" "git.sh"
run_module "core" "initramfs.sh"
run_module "core" "firewall.sh"

run_module "hardware" "amdgpu.sh"
run_module "hardware" "audio.sh"
run_module "hardware" "bluetooth.sh"

run_module "system" "mimetypes.sh"
run_module "system" "ssh-mtu-problem.sh"

run_module "desktop" "hypr.sh"
run_module "desktop" "packages.sh"
run_module "desktop" "webapps.sh"
run_module "desktop" "dotfiles.sh"

sudo chsh -s /usr/bin/zsh "$USER"

log "Installation completed!"

echo "The system needs to reboot to apply all changes."
