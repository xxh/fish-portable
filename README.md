The docker containers to build portable fish. Originally created for [xxh project](https://github.com/xxh/xxh).

## Building
### musl
```
./build-fish-portable-musl-alpine.sh
```

## Example
```
mkdir -p /tmp/fish-portable
cp ./result/* /tmp/fish-portable 
cd /tmp/fish-portable && tar -xvzf fish-portable-musl-alpine-Linux-x86_64.tar.gz
./fish
```
