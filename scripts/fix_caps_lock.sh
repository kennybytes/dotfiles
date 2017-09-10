#!/bin/bash
#
# In some cases, x2go or remote sessions get the caps lock state all messed up
# (I remap caps lock to ctrl in windows). This script should reset the caps lock state.
#
# Taken from here:
# 	https://askubuntu.com/questions/80254/how-do-i-turn-off-caps-lock-the-lock-not-the-key-by-command-line/80301

python -c 'from ctypes import *; X11 = cdll.LoadLibrary("libX11.so.6"); display = X11.XOpenDisplay(None); X11.XkbLockModifiers(display, c_uint(0x0100), c_uint(2), c_uint(0)); X11.XCloseDisplay(display)'

