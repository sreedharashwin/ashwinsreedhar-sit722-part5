set -u # or set -o nounset
: "$REGISTRY_HOSTNAME"
: "$VERSION"

cd ./book_catalog

docker build --no-cache -t $REGISTRY_HOSTNAME/catalog:$VERSION .

cd ./inventory_management

docker build --no-cache -t $REGISTRY_HOSTNAME/inventory:$VERSION .