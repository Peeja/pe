#!/bin/sh

set -e

main() {
  sudo echo # Activate sudo

  sudo openvpn --user "$USER" --dev tun --ifconfig 10.4.0.1 10.4.0.2 &
  /usr/libexec/telnetd -p ./springboard.sh -debug 9999 &>/dev/null &
  wemux
}

finish() {
  kill 0
  wait
}

trap 'finish' SIGINT SIGTERM EXIT
main
