#!/usr/bin/env bash
set -e

ansi_art='
 █████  ██████   ██████ ██   ██ ████████  ██████  ███    ███  █████  ████████ ███████ 
██   ██ ██   ██ ██      ██   ██    ██    ██    ██ ████  ████ ██   ██    ██    ██      
███████ ██████  ██      ███████    ██    ██    ██ ██ ████ ██ ███████    ██    █████   
██   ██ ██   ██ ██      ██   ██    ██    ██    ██ ██  ██  ██ ██   ██    ██    ██      
██   ██ ██   ██  ██████ ██   ██    ██     ██████  ██      ██ ██   ██    ██    ███████ 
'

REPO_URL="git@github.com:itllsv/archtomate.git"
INSTALL_DIR="$HOME/.local/share/archtomate"

clear
echo -e "\n$ansi_art\n"
echo "Installing itllsv/archtomate... 🍅"

mkdir -p "$HOME/.local/share"
[ -d "$INSTALL_DIR" ] && mv "$INSTALL_DIR" "${INSTALL_DIR}.bak"

echo "Cloning repository..."
git clone "$REPO_URL" "$INSTALL_DIR"
chmod +x "$INSTALL_DIR/run.sh"

echo "Running setup..."
cd "$INSTALL_DIR" && ./run.sh

echo "Installation complete!"
