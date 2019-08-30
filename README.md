# plex

My plex installation, based on docker.

## setup

https://www.plex.tv/claim/

```
echo "PASTE YOUR CODE HERE" > plex_claim
echo "PATH TO DATA HERE" > data
```

## usage
```
./start.sh <macos|raspi>
./clean.sh <macos|raspi>
./stop.sh <macos|raspi>
```

## access
[ui](http://127.0.0.1:32400/web/index.html)

## raspi setup usb
```
sudo su
blkid
umount /dev/sda2
mkdir -p /media/plex/
mkfs.ext4 /dev/sda2 -L plex64
mount -t ext4 /dev/sda2 /media/plex
mkdir -p /media/plex/data
cp /etc/fstab /etc/fstab.backup
/dev/sda2 /media/plexk ext4 rw,defaults 0 0
```

## raspi send files to usb
```
scp -Cr <source> root@plexberry.local:/media/plex/data
```

## setup plex
```
ssh root@plexberry -L 8888:localhost:32400
http://localhost:8888/web
```
