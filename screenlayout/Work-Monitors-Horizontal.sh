#!/bin/sh

if (xrandr | grep "DP1 disconnected") || (xrandr | grep "HDMI1 disconnected") ; then
  killall conky
  xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
  conky
else
  killall conky
  xrandr --output VIRTUAL1 --off --output eDP1 --off --output HMDI2 --off --output DP1 --primary --mode 1920x1200 --pos 1920x0 --rotate normal --output HMDI1 --mode 1920x1200 --pos 0x0 --rotate normal --output DP2 --off
  conky
fi

