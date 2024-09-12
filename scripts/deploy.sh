set -u # or set -o nounset
: "$REGISTRY_HOSTNAME"
: "$VERSION"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -