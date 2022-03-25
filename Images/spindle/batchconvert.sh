#!/bin/bash
for i in *.mp4;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -vcodec libx264 -crf 25 -preset medium -vf scale=-2:1080 -acodec libmp3lame -q:a 4 -ar 48000 -ac 2 "${name}fmg.mp4"
done

