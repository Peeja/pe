# The `pe` command: a prototype.

This is a prototype of the `pe` command for pairing through PairExchange.  It
sets up a point-to-point VPN and a shared Tmux session.  To use it, you'll
need (with OS X installation info shown):

* OpenVPN (`brew install openvpn`)
* A tun/tap device driver (<http://tuntaposx.sourceforge.net/>)
* Wemux (`brew install wemux`)

First, set up the CA (certificate authority).  This represents PairExchange
itself.

```sh
alice$ ./pe ca init
```

Then, generate your certificate.  In real life, this would happen when the
user authenticates with PairExchange.

```sh
alice$ ./pe generate-cert alice
```

Now, on another machine, do the same thing.

```sh
bob$ ./pe ca init
bob$ ./pe generate-cert bob
```

Finally, have one machine host the session,

```sh
alice$ ./pe host alice bob
```

and the other machine join the session.

```sh
bob$ ./pe join bob alice bob.local
```

You should now be in a shared Tmux (Wemux) session.  There is also an
encrypted VPN connection which should make connecting to services on each
others machines a breeze. Alice, the host, is 10.4.0.1, and Bob, the guest, is
10.4.0.2.
