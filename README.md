
Build a socat static binary executable using docker and musl

## Update

This fork have all dependencies updated to modern version.

They are defined in the `Dockerfile` script.

 - MUSL      1.2.3
 - SOCAT     1.7.4.3
 - NCURSES   6.3
 - READLINE  8.1
 - OPENSSL   1.1.1q

## Build:

```
$ make all
```

The static binary is in the directory `$PWD/bin/linux/x86_64/`
