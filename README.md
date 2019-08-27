# plex

My plex installation, based on docker.

## get plex claim

https://www.plex.tv/claim/

```
echo "PASTE YOUR CODE HERE" > plex_claim
```

## usage
```
./start.sh <macos|raspi>
./clean.sh <macos|raspi>
./stop.sh <macos|raspi>
```

## access
[ui](http://127.0.0.1:32400/web/index.html)

## mount usb (FAT)
```sh
sudo blkid
sudo mkdir /media/plex
sudo mount /dev/sda2 /media/plex
ls -latr /media/plex
```
