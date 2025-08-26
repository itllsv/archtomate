#!/usr/bin/env bash

if ! git config --global pull.rebase 2>&1; then
    git config --global pull.rebase true
fi

if ! git config --global user.name 2>&1; then
    git config --global user.name "$GIT_USER_NAME"
fi

if ! git config --global user.email 2>&1; then
    git config --global user.email "$GIT_USER_EMAIL"
fi
