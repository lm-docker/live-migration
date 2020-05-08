#!/bin/bash
# Diskless dump (with page-server)
sudo runc checkpoint \
    --page-server 127.0.0.1:9999 \
    --image-path ./src-images/ \
    eureka