#!/bin/sh

# May be I should use tmux for this

VIDEO=/mnt/sda4crypt/data/screencasts

# Только Lossless запись, без кодирования

ffmpeg -video_size 1920x1080 -framerate 60 -f alsa -ac 2 -acodec pcm_s16le -f x11grab -i :0.0 -c:v libx264 -crf 0 -qp 0 -preset ultrafast $VIDEO/capture.mkv
