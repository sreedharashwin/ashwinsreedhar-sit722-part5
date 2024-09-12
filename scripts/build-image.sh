set -u # or set -o nounset
: "$REGISTRY_HOSTNAME"
: "$VERSION"

./docker-compose up -d --build