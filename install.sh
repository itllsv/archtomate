#!/usr/bin/env bash
ansi_art='
 █████  ██████   ██████ ██   ██ ████████  ██████  ███    ███  █████  ████████ ███████ 
██   ██ ██   ██ ██      ██   ██    ██    ██    ██ ████  ████ ██   ██    ██    ██      
███████ ██████  ██      ███████    ██    ██    ██ ██ ████ ██ ███████    ██    █████   
██   ██ ██   ██ ██      ██   ██    ██    ██    ██ ██  ██  ██ ██   ██    ██    ██      
██   ██ ██   ██  ██████ ██   ██    ██     ██████  ██      ██ ██   ██    ██    ███████ 
                                                                                      
                                                                                      '

clear
echo -e "\n$ansi_art\n"

set -e

REPO_URL="https://github.com/itllsv/archtomate"
INSTALL_DIR="$HOME/.local/share/archtomate"
TEMP_DIR="/tmp/archtomate-install"

echo "Installing itllsv/archtomate... 🍅"

mkdir -p "$HOME/.local/share"

if [ -d "$INSTALL_DIR" ]; then
    mv "$INSTALL_DIR" "${INSTALL_DIR}.bak"
fi

rm -rf "$TEMP_DIR"
mkdir -p "$TEMP_DIR"

echo "Downloading repository..."
curl -fsSL "${REPO_URL}/archive/main.tar.gz" | tar -xz -C "$TEMP_DIR" --strip-components=1

echo "Installing to ${INSTALL_DIR}..."
mv "$TEMP_DIR" "$INSTALL_DIR"

if [ -f "$INSTALL_DIR/run.sh" ]; then
    chmod +x "$INSTALL_DIR/run.sh"
fi

echo "Running setup..."
cd "$INSTALL_DIR"
./run.sh

echo "Installation complete!"
echo "Installed to: ${INSTALL_DIR}"
