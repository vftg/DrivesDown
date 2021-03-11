#!/bin/bash
wget https://www.rarbgtor.org/download.php?id=7g9xfpu&h=f75&f=Raya.and.the.Last.Dragon.2021.2160p.DSNP.WEB-DL.x265.10bit.HDR.DDP5.1-NOGRP-[rarbg.to].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=341; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ od:/test/
#echo "$i-$j 上传完成"
#done
