#!/usr/bin/env bash


paru -S --noconfirm --needed \
	tmux \
	tmuxinator \
	zsh \
	oh-my-zsh-git \
  starship \
  btop \
  fastfetch \
  fd \
  fzf \
  ripgrep \
  tldr \
  jq \
  less \
  man \
  whois \
  unzip \
  clang \
  gcc14 \
  lazygit \
  mise \
  luarocks \
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  noto-fonts-extra \
  ttf-cascadia-mono-nerd \
  ttf-font-awesome \
  ttf-jetbrains-mono \
  obsidian \
  nautilus \
  gnome-calculator \
  plymouth \
  gnome-keyring \
	claude-code \
	wezterm-git \
	forticlient-vpn \

	if ! command -v walker $>/dev/null; then
		paru -S --noconfirm --needed walker-bin
	fi
