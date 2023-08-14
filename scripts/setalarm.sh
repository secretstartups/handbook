#!/bin/sh

unset setalarm

function setalarm() {
  # default to 25 minutes (speedy meetings)  
  [[ -z "$1" ]] && set $1 "25"
  echo "Will ping you at $(date -v +`echo "$1-5" | bc`M +"%H:%M"), and at $(date -v +$1M +"%H:%M")"
  sleep $(echo "($1 - 5) * 60" | bc)
  say -i "Five minutes remaining"
  echo "We have 5 minutes remaining" | pbcopy

  at_time="We are at time"
  sleep $(echo "5 * 60" | bc)
  say -i $at_time
  echo $at_time | pbcopy
}
