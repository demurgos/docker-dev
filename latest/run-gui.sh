#!/usr/bin/env bash
# Exit on error, echo
set -ex
xhost local:docker && docker run -it -e DISPLAY -v "${HOME}/.Xauthority:/home/root/.Xauthority" --net=host demurgos/dev:latest
