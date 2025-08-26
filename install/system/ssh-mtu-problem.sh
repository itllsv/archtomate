#!/usr/bin/env bash


if ! grep -q "net.ipv4.tcp_mtu_probing=1" /etc/sysctl.d/99-sysctl.conf; then
	echo "net.ipv4.tcp_mtu_probing=1" | sudo tee -a /etc/sysctl.d/99-sysctl.conf
fi
