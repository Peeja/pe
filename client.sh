#!/bin/sh

sudo openvpn --remote Jerome.local --dev tun1 --ifconfig 10.4.0.2 10.4.0.1 --verb 9
