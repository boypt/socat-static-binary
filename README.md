
Build a socat static binary executable using docker and musl

## Update

This fork have all dependencies updated to modern version.

 - MUSL_VERSION      1.2.3
 - SOCAT_VERSION     1.7.4.3
 - NCURSES_VERSION   6.3
 - READLINE_VERSION  8.1
 - OPENSSL_VERSION   1.1.1q

## Build:

```
$ make all
```

The static binary is in the directory `$PWD/bin/linux/x86_64/`
