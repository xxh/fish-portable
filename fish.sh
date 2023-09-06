#!/bin/sh

export TERMINFO_DIRS=/lib/terminfo:/etc/terminfo:/usr/share/terminfo:$TERMINFO_DIRS
CURRENT_DIR="$(cd "$(dirname "$(realpath "$0" )" )" && pwd)"
$CURRENT_DIR/fish "$@"
