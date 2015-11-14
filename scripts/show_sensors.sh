#!/bin/bash
#
# Run this as root.
# https://ivan.reallusiondesign.com/thinkpad-t430-ubuntu-fan-control/
#
# Install `lm-sensors` first and run `sensors-detect`
#

watch -n 1 -d sensors
