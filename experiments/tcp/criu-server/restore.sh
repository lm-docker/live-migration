#!/bin/bash
sudo criu restore -v4 \
    --images-dir images/1 \
    --work-dir logs \
    --shell-job \
    --inherit-fd fd[$1]:netns1 \
    --external veth\[veth1\]:br-veth1@br1 \
    --tcp-established
