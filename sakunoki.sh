#!/bin/bash

today_dow=$(date +%w)
if [[ 4 -le $today_dow ]]; then 
    sakunoki=$(date -d last-wednesday +%Y%m%d)
else 
    sakunoki=$(date -d wednesday +%Y%m%d)
fi

mkdir -p "$HOME/sakunoki"

wget -P "$HOME/sakunoki" "http://vod.bayfm.jp/VODFILES/artist/miyawaki-$sakunoki.mp3"