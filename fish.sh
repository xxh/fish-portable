#!/bin/sh

export TERMINFO_DIRS=/lib/terminfo:/etc/terminfo:/usr/share/terminfo:$TERMINFO_DIRS

if command -v realpath >/dev/null 2>&1 ; then
  CURRENT_DIR="$(cd "$(dirname "$(realpath "$0" )" )" && pwd)"
else
  CURRENT_DIR="$(cd "$(dirname             "$0"    )" && pwd)"
fi

$CURRENT_DIR/fish "$@"
