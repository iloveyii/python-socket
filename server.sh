#!/bin/bash

# streamer -q -c /dev/video0 -f rgb24 -r 3 -t 00:00:10 -d  | nc 127.0.0.1 5555
streamer -q -c /dev/video0 -f rgb24 -r 3 -t 00:00:10 -d -o b.avi
 streamer -q -c /dev/video0 -f rgb24 -r 3 -t 00:10:10 -d -o - | nc 127.0.0.1 5555

# livestreamer -O https://manifest.googlevideo.com/api/manifest/hls_variant/expire/1579924238/ei/rmYrXteaLY_3yQXs3bPYAg/ip/85.197.159.64/id/VDG-qBwkogc.0/source/yt_live_broadcast/requiressl/yes/tx/23791272/txs/23791272%2C23791946/hfr/1/maudio/1/vprv/1/go/1/keepalive/yes/fexp/23842630/dover/11/itag/0/playlist_type/DVR/sparams/expire%2Cei%2Cip%2Cid%2Csource%2Crequiressl%2Ctx%2Ctxs%2Chfr%2Cmaudio%2Cvprv%2Cgo%2Citag%2Cplaylist_type/sig/ALgxI2wwRQIgREand74v03c3I9OmE2exv78RNh0n6gNinFf4Kt8o9ZUCIQDQtpK5TXBoPFmuk_qYmYf3QySe1rngwUcDz2P8xhZx0Q%3D%3D/file/index.m3u8  best | nc 127.0.0.1 5555
