FROM alpine
VOLUME /result

ENV NCURSES_VER 6.2
ENV FISH_VER 3.1.0
ENV LDFLAGS -static

RUN apk update && apk add wget mc alpine-sdk git g++ make cmake ncurses ncurses-dev ncurses-libs

RUN mkdir -p /build /result
WORKDIR /build
RUN wget https://invisible-mirror.net/archives/ncurses/ncurses-$NCURSES_VER.tar.gz
RUN wget https://github.com/fish-shell/fish-shell/releases/download/$FISH_VER/fish-$FISH_VER.tar.gz
RUN tar xf fish-$FISH_VER.tar.gz && tar xf ncurses-$NCURSES_VER.tar.gz
RUN mkdir -p fish-$FISH_VER/build

WORKDIR /build/ncurses-$NCURSES_VER
RUN ./configure && make
RUN cp lib/libncurses.a /usr/lib/ && cp lib/libncurses.a /usr/lib/libcurses.a

WORKDIR /build/fish-$FISH_VER/build
RUN cmake .. && make
CMD tar -zcf /result/fish-portable-musl-alpine-`uname`-`uname -m`.tar.gz ./fish && ls -sh1 /result
