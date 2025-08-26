#!/usr/bin/env bash


ARCHTOMATE_DOTFILES="$HOME/.local/share/archtomate/dotfiles"

if ! command -v stow; then
	paru -S stow --needed --noconfirm
fi

# Remove existing configs for packages we're about to install
rm -rf "$HOME/.config/hypr"
rm -rf "$HOME/.config/nvim"
rm -rf "$HOME/.config/starship"
rm -rf "$HOME/.config/tmux"
rm -rf "$HOME/.config/tmuxinator"
rm -rf "$HOME/.config/waybar"
rm -rf "$HOME/.config/wezterm"
rm -rf "$HOME/.config/zsh"
rm -rf "$HOME/.local/share/fonts"

cd "$ARCHTOMATE_DOTFILES"
stow -t ~ */

