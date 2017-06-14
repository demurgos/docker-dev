#!/usr/bin/env bash
# Exit on error
set -e
# Echo and run
CMD="docker run -it demurgos/dev:latest" && echo "$CMD" && eval "$CMD"
