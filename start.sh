set -ex

PLEX_CLAIM=$(cat plex_claim.txt) docker-compose up -d

docker-compose logs -f
