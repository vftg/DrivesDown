#!/bin/bash
wget https://pan.mduu.top/dltorrent/Tom.and.Jerry.2021.2160p.HMAX.WEB-DL.x265.10bit.HDR.DDP5.1.Atmos-SWTYBLZ.torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=341; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ od:/test/
#echo "$i-$j 上传完成"
#done
