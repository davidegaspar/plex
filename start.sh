set -ex

cd $1

PLEX_CLAIM=$(cat plex_claim) docker-compose up -d

docker-compose logs -f
