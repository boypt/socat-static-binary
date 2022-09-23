FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get upgrade -yy \
  && apt-get install -yy \
    automake \
    build-essential \
    curl \
    git  \
    pkg-config \
    libwrap0-dev \
    linux-libc-dev \
    linux-headers-generic \
  && apt-get clean

RUN mkdir -p /usr/include/x86_64-linux-musl && ln -s /usr/include/x86_64-linux-gnu/asm /usr/include/x86_64-linux-musl/asm && ln -s /usr/include/asm-generic /usr/include/x86_64-linux-musl/asm-generic && ln -s /usr/include/linux /usr/include/x86_64-linux-musl/linux
RUN mkdir /build
ADD . /build

ENV MUSL_VERSION      1.2.3
ENV SOCAT_VERSION     1.7.4.3
ENV NCURSES_VERSION   6.3
ENV READLINE_VERSION  8.1
ENV OPENSSL_VERSION   1.1.1q
ENV sc_cv_getprotobynumber_r 2

VOLUME /output

CMD /build/build.sh
