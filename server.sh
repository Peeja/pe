#!/bin/sh

sudo openvpn --remote Timmy.local --dev tun1 --ifconfig 10.4.0.1 10.4.0.2 --verb 9
