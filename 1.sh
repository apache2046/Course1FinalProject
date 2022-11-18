#!/bin/bash
rm -f 1.mp4 2.mp4 3.mp4
ffmpeg -r 60 -f image2 -s 1920x1080 -start_number 139 -i /tmp/sim/image%04d.png -vcodec libx264 -crf 15  -pix_fmt yuv420p 1.mp4
ffmpeg -r 60 -f image2 -s 600x900 -start_number 139 -i /tmp/sim2/image%04d.png -vcodec libx264 -crf 15  -pix_fmt yuv420p 2.mp4
ffmpeg -r 60 -f image2 -s 400x800 -start_number 139 -i /tmp/sim3/image%04d.png -vcodec libx264 -crf 15  -pix_fmt yuv420p 3.mp4
