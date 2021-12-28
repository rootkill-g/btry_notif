#!/usr/bin/env bash
battery_level=$(acpi -b | grep -oP '[0-9]+(?=%)')
is_discharging=$(acpi -b | grep -c "Discharging")
if [ $battery_level -le 99 ] && [ is_discharging == 1 ] ; then
  notify-send "Battery $battery_level! Plug-in ASAP"
fi
