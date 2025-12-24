#!/usr/bin/env ysh
var SCRIPT_DIR = $(cd "$_this_dir" { pwd })

cd $SCRIPT_DIR {
  var tag = $(cat ../tag.txt)
  podman run -it "demurgos/dev:${tag}"
}
