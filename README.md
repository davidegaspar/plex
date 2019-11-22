# plex

Plex setup in the raspberry pi with docker.

## setup

#### 1. create media directory
```
mkdir -p /plex/data
```

#### 2. get plex token
https://www.plex.tv/claim/
```
echo "PASTE YOUR CODE HERE" > plex_claim
```

#### 3. start container
```
./start
```

#### 4. access
```sh
open http://<ip or address>:32400/web/index.html
```

#### 5. register server
```sh
ssh root@plexberry -L 8888:localhost:32400
open http://localhost:8888/web
# follow instructions
```

#### 6. send files
```
rsync --dry-run -vrtzhi --progress --delete --ignore-existing . root@<ip or address>:/plex/data/
```

## optional

#### raspi setup usb

```
sudo su
blkid
umount /dev/sda2
mkdir -p /media/usb/
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

## docs

- https://support.plex.tv/articles/200288586-installation
