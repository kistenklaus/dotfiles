#!/usr/bin/env sh

######################################################################
# @author      : kistenklaus (karlsasssie@gmail.com)
# @file        : random_wallpaper
# @created     : Donnerstag Aug 03, 2023 13:40:00 CEST
#
# @description : 
######################################################################

WALLPAPER_ID=$(($RANDOM%25))

case $WALLPAPER_ID in 
  0)
    dwall -s aurora
    ;;
  1)
    dwall -s beach
    ;;
  2)
    dwall -s bitday
    ;;
  3)
    dwall -s chihuahuan;
    ;;
  4)
    dwall -s cliffs
    ;;
  5)
    dwall -s colony
    ;;
  6)
    dwall -s desert
    ;;
  7)
    dwall -s earth
    ;;
  8)
    dwall -s exodus
    ;;
  9)
    dwall -s factory
    ;;
  10)
    dwall -s firewatch
    ;;
  11)
    dwall -s forest
    ;;
  12)
    dwall -s gradient
    ;;
  13)
    dwall -s home
    ;;
  14)
    dwall -s island
    ;;
  15)
    dwall -s lake
    ;;
  16)
    dwall -s lakeside
    ;;
  17)
    dwall -s market
    ;;
  18)
    dwall -s mojave
    ;;
  19)
    dwall -s moon
    ;;
  20)
    dwall -s mountains
    ;;
  21)
    dwall -s room
    ;;
  22)
    dwall -s sahara
    ;;
  23)
    dwall -s street
    ;;
  24)
    feh --bg-scale ~/Pictures/mu-zero-siii-atlas.jpg
    ;;
  *)
    dwall -s tokyo
    ;;
esac
      




