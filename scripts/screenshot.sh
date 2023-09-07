#! /bin/bash

output=~/web/my-website/photos/%Y-%m-%d-%T-screenshot.png

scrot "$output" || exit
