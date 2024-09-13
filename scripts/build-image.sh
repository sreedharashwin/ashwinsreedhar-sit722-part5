set -u # or set -o nounset
: "$REGISTRY_HOSTNAME"
: "$VERSION"

cd .
docker compose up -d --build