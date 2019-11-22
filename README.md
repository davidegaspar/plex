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

#### 4. verify
```sh
open http://<ip or address>:32400/web/index.html
```

#### 5. register server
```sh
ssh root@<ip or address> -L 8888:localhost:32400
open http://localhost:8888/web
# follow instructions
```

#### 6. send files
```
rsync --dry-run -vrtzhi --progress --delete --ignore-existing . root@<ip or address>:/plex/data/
```

## docs

- https://support.plex.tv/articles/200288586-installation
