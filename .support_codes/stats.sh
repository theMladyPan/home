#!/usr/bin/env bash

convertsecs() {
 ((h=${1}/3600))
 ((m=(${1}%3600)/60))
 ((s=${1}%60))
 printf "%02d:%02d:%02d\n" $h $m $s
}

ENGY_RAW=$(cat /sys/class/power_supply/BAT0/energy_now)
RATE=10
while true; do
  clear
  TEMP_RAW=$(cat /sys/class/thermal/thermal_zone0/temp)
  PWR_RAW=$(cat /sys/class/power_supply/BAT0/power_now)
  ENGY_FULL=$(cat /sys/class/power_supply/BAT0/energy_full)
  ENGY_DES=$(cat /sys/class/power_supply/BAT0/energy_full_design)
  ENGY_OLD=$ENGY_RAW
  ENGY_RAW=$(cat /sys/class/power_supply/BAT0/energy_now)
  ENGY_PERC=$(( 1000*$ENGY_RAW / $ENGY_FULL))
  BAT_LIFE=$((1000*$ENGY_FULL/$ENGY_DES))
  CHARGING_RAW=$(cat /sys/class/power_supply/AC0/uevent|grep ONLINE|cut -d"=" -f2)
  if [ $CHARGING_RAW -eq 1 ]; then
    CHARGING="charging"
    RATE=$(( (98*$RATE + 2*($ENGY_RAW-$ENGY_OLD))/100))
    TIME=$((($ENGY_FULL-$ENGY_RAW)/$RATE))
    BATTERY="time to charge"
  else
    CHARGING="discharging"
    RATE=$(( (98*$RATE + 2*($ENGY_OLD-$ENGY_RAW))/100))
    TIME=$((($ENGY_RAW)/$RATE))
    BATTERY="battery time"
  fi

  echo Temperature: $(bc <<<"scale=1;$TEMP_RAW/1000")°C
  echo Power: $(bc <<<"scale=1;$PWR_RAW/1000000")W, $CHARGING
  echo Bat. life: $(bc <<<"scale=1;$BAT_LIFE/10")%
  echo Bat. lvl: $(bc<<<"scale=2;$ENGY_RAW/1000000")Wh, $(bc<<<"scale=1;$ENGY_PERC/10")%
  echo Average $CHARGING rate: $(bc<<<"scale=2;3.6*$RATE/1000")W, remaining $BATTERY: $(convertsecs $TIME)
  sleep 1;
done
