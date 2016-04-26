#!/bin/python

import glob
import random
import os

files = glob.glob("/home/fmm/Wallpapers/*.jpg")
random.shuffle(files)
command = "feh --no-fehbg --bg-fill " + files[0] + " " + files[1]
os.system(command)
