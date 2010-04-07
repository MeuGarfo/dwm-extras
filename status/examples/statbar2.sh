#!/bin/sh

music=""
battery=""
loadavg=""
clock=""

while true ; do

  music="$(mpc current 2>/dev/null)"
  if [ "x$music" != "x" ] ; then
    music="$music | "
  fi

  if [ -x /usr/bin/acpi ] ; then
    battery="$(acpi -b | sed -e 's/.*, \(.*%\).*/\1/')"
    if [ "x$battery" != "x" ] ; then
      battery="$battery | "
    fi
  fi

  loadavg="$(cat /proc/loadavg) | "

  clock="$(date +'%a %b %-d %-I:%M')"

  xsetroot -display :0 -name "${music}${battery}${loadavg}${clock}"
  sleep 5

done

