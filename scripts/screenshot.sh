#! /bin/bash

output=~/screenshots/%Y-%m-%d-%T-screenshot.png

scrot "$output" || exit
