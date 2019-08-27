set -ex

ARCH=$1

PLEX_CLAIM=$(cat plex_claim) docker-compose -f docker-compose-${ARCH}.yml up -d

docker logs -f plex
