#!/usr/bin/env bash

# Function to set git alias only if it doesn't exist
set_git_alias() {
    local alias_name="$1"
    local alias_command="$2"
    
    if ! git config --global alias."$alias_name" 2>&1; then
        git config --global alias."$alias_name" "$alias_command"
    fi
}

# Set aliases only if they don't exist
set_git_alias "sw" "switch"
set_git_alias "co" "commit -m"
set_git_alias "st" "status --oneline"

# Set pull rebase if not already set
if ! git config --global pull.rebase 2>&1; then
    git config --global pull.rebase true
fi

# Set user info if not already set
if ! git config --global user.name 2>&1; then
    git config --global user.name "$GIT_USER_NAME"
fi

if ! git config --global user.email 2>&1; then
    git config --global user.email "$GIT_USER_EMAIL"
fi
