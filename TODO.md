TODO:
+ Route packets with 10.4.1.X addresses.
+ Run with a tmux session.
+ Put everything in a single pe command.
+ Require certificate to connect.
- Don't require superuser privileges to run the command each time.
  - Instead, use a LaunchAgent or something to hold the privileges so that the command for each session can be unprivileged.
- Set up DNS.
- Make openvpn stop the script if it fails to initialize, rather than simply
  die in the background.
    - Use --daemonize.
    - But find a way to clean it up. (--writepid will help.)
- Make sure it's impossible for the guest to run commands invisibly through Tmux.
- Allow a disconnected joining pair to reconnect.
  - Fails because telnetd dies.
- Fail gracefully when the wrong user connects.
  - Right now it crashes OpenVPN and I'm not sure why.
- Use a more structured distinguished name.
  - Make the common name just <username>?
- Route packets with IPv6 addresses.
