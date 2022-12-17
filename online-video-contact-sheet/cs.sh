#! /usr/bin/env bash

set -euxo pipefail

: --- download image screengrab ---

mpv 'https://www.youtube.com/watch?v=Fgy77Dnapf4' \
  --no-config \
  --frames=1 \
  --no-audio \
  --no-sub \
  --hr-seek=absolute \
  --no-cache \
  --demuxer-readahead-secs=0 \
  --ytdl-format="bestvideo[height<=1440]" \
  --start="50%" \
  --script=screenshotter.lua --screenshot-format=png
  # --of=image2 --ofopts=strftime=,update=1 --o="png"
  # -o "out0001.png"


: --- Converting / adding timestamp ---
# cf. https://stackoverflow.com/a/12754055

# for img in out*.png; do
#     convert \
#       "${img}" \
#       -resize 800 \
#       -gravity southeast \
#       -pointsize 36 \
#       -fill 'Red' \
#       -annotate +20+15 '%t' \
#       "with-annotate-${img}"
# done

: --- tile ---
