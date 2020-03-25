The docker containers to build portable fish. Originally created for [xxh project](https://github.com/xxh/xxh).

## Building
### musl
```
./build-fish-portable-musl-alpine.sh
```

## Example
```
mkdir /tmp/fish && cd /tmp/fish
wget https://github.com/xxh/fish-portable/raw/master/result/fish-portable-musl-alpine-Linux-x86_64.tar.gz
tar -xzf fish-portable-musl-alpine-Linux-x86_64.tar.gz
./fish.sh
```
