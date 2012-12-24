TODO:
+ Route packets with 10.4.1.X addresses.
- Route packets with IPv6 addresses.
- Set up DNS.
- Require certificate to connect.
+ Run with a tmux session.
- Make openvpn stop the script if it fails to initialize, rather than simply
  die in the background.
    - Use --daemonize.
    - But find a way to clean it up. (--writepid will help.)
+ Put everything in a single pe command.
