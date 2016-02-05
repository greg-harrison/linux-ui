#!/bin/sh

if (xrandr | grep "HDMI1 disconnected") || (xrandr | grep "HDMI2 disconnected") ; then
  killall conky
  xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
  conky
else
  killall conky
  xrandr --output VIRTUAL1 --off --output eDP1 --off --output DP1 --off --output HDMI2 --primary --mode 1920x1200 --pos 1200x368 --rotate normal --output HDMI1 --mode 1920x1200 --pos 0x0 --rotate left --output DP2 --off
  conky
fi
