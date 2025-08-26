#!/usr/bin/env bash


ARCHTOMATE_DOTFILES="$HOME/.local/share/archtomate/dotfiles"

if ! command -v stow; then
	paru -S stow --needed --noconfirm
fi
cd "$ARCHTOMATE_DOTFILES"
stow -t ~ */

