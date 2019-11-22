# plex

My plex installation, based on docker.

## setup

https://www.plex.tv/claim/

```
echo "PASTE YOUR CODE HERE" > plex_claim
echo "PATH TO DATA HERE" > data
```

## usage (docker run)
```
```

## usage (docker-compose)
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
```
```
cp /etc/fstab /etc/fstab.backup
nano /etc/fstab
# add this
/dev/sda2 /media/plex ext4 rw,defaults 0 0
```
```
mkdir -p /media/plex/data
```

## raspi send files to usb
```
cd data
rsync --dry-run -vrtzhi --progress --delete --ignore-existing . root@plexberry.local:/media/plex/data/
```

## setup plex
```
ssh root@plexberry -L 8888:localhost:32400
http://localhost:8888/web
```

## docs

- https://support.plex.tv/articles/200288586-installation/?_ga=2.204528656.1813465644.1567175726-2040744938.1555258148
