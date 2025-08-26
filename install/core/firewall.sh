#!/usr/bin/env bash


# Firewall controls network traffic in and out, blocking or allowing services through specific ports.
if ! command -v ufw; then
        paru -S --needed --noconfirm ufw

        sudo ufw default deny incoming
        sudo ufw default allow outgoing

        # LocalSend
        sudo ufw allow 53317/udp
        sudo ufw allow 53317/tcp

        # SSH
        sudo ufw allow 22/tcp

        sudo ufw enable
        sudo ufw reload
fi
