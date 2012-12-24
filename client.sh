#!/bin/sh

set -e

pair_host=${1:?"Must provide host name"}

main() {
  sudo echo # Activate sudo

  sudo openvpn --user "$USER" --remote "$pair_host" --dev tun --ifconfig 10.4.0.2 10.4.0.1 &
  telnet 10.4.0.1 9999
}

finish() {
  kill 0
  wait
}

trap 'finish' SIGINT SIGTERM EXIT
main
