#!/bin/bash

xrandr --output HDMI1 --rotate right --left-of HDMI2
python $HOME/scripts/dual-wallpaper.py
