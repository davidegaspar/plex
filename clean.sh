set -ex

cd ${1:-raspi}

PLEX_CLAIM=$(cat plex_claim) DATA=$(cat data) docker-compose rm
