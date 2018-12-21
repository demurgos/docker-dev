FROM archlinux/base:latest
MAINTAINER Charles Samborski <demurgos@demurgos.net>

RUN pacman -Syu --quiet --noconfirm --noprogressbar \
  && pacman -S --quiet --noconfirm --noprogressbar \
    coreutils \
    expect \
    jdk10-openjdk \
    gcc \
    git \
    make \
    neko \
    nodejs \
    npm \
    ocaml \
    pcre \
    unzip \
    xorg-server-xvfb \
    yarn \
    zlib
# TODO: Check if we need to empty the cache ourselves or not
#  && pacman -Sc --quiet --noconfirm --noprogressbar

RUN npm install -g npm gulp-cli

ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF8

RUN node --version \
  && npm --version \
  && yarn --version \
  && gulp --version

CMD ["/bin/bash"]
