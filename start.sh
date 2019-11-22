set -ex

docker run \
  -d \
  --name plx \
  -e PUID=0 \
  -e PGID=0 \
  -e VERSION=docker \
  -e UMASK_SET=022 \
  -e PLEX_CLAIM="$(cat plex_claim)" \
  -v /plex/config:/config \
  -v /plex/transcode:/transcode \
  -v /plex/data:/data \
  -p "32400:32400/tcp" \
  -p "3005:3005/tcp" \
  -p "8324:8324/tcp" \
  -p "32469:32469/tcp" \
  -p "1900:1900/udp" \
  -p "32410:32410/udp" \
  -p "32412:32412/udp" \
  -p "32413:32413/udp" \
  -p "32414:32414/udp" \
  --restart unless-stopped
  linuxserver/plex:arm32v7-latest \

docker logs -f plx
