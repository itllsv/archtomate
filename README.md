# ArchTomate 🍅

An Arch Linux automated setup and configuration tool that installs and configures a complete development environment.

## Overview

ArchTomate is a collection of shell scripts that automates the installation and configuration of:
- AUR helpers (yay, paru)
- Development tools and packages
- Hyprland window manager
- Audio and Bluetooth setup
- GPU drivers (AMD)
- Firewall configuration
- SSH optimization
- Dotfiles deployment

## Installation

### Quick Install
```bash
curl -fsSL https://raw.githubusercontent.com/itllsv/archtomate/main/install.sh | bash
```

### Available Modules

- **aur.sh** - Installs yay and paru AUR helpers
- **git.sh** - Configures Git with user credentials
- **initramfs.sh** - Updates initial RAM filesystem
- **firewall.sh** - Sets up system firewall
- **amdgpu.sh** - Installs AMD GPU drivers
- **audio.sh** - Configures audio system
- **mimetypes.sh** - Sets up file associations
- **ssh-mtu-problem.sh** - Optimizes SSH connectivity
- **bluetooth.sh** - Configures Bluetooth
- **hypr.sh** - Installs Hyprland window manager
- **webapps.sh** - Installs web applications
- **packages.sh** - Installs essential packages
- **dotfiles.sh** - Deploys configuration files

### Key Packages Installed

- **Terminal & Shell**: tmux, tmuxinator, starship, bash-completion
- **System Tools**: btop, fastfetch, fd, fzf, ripgrep, tldr
- **Development**: cargo, clang, gcc14, lazygit, mise, luarocks
- **Fonts**: Noto fonts, Cascadia Code Nerd Font, JetBrains Mono
- **Applications**: Obsidian, Nautilus, GNOME Calculator, Claude Code

## Directory Structure

```
archtomate/
├── install.sh          # Main installer script
├── run.sh              # Setup orchestrator
├── install/            # Module scripts
│   ├── aur.sh
│   ├── packages.sh
│   ├── dotfiles.sh
│   └── ...
├── dotfiles/           # Configuration files
│   ├── fonts/
│   ├── nvim/
│   ├── starship/
│   └── tmuxinator/
└── bin/                # Utility scripts
```

## Requirements

- Arch Linux fresh install
- Internet connection
- curl

## License

This project is provided as-is for personal use and customization.
