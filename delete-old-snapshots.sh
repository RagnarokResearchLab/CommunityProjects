set -eu

test $GH_TOKEN # Mandatory
echo "Using GitHub token: $GH_TOKEN"

# Local tags may be out of sync (just delete any offenders)
git fetch --prune --prune-tags origin

# Delete all but the latest snapshot (no point in storing them)
OUTDATED_RELEASE_TAGS=$(git tag --sort=-creatordate | tail -n +2)
TAG_COUNT=$(git tag --sort=-creatordate | tail -n +2 | wc -l)

echo "Found $TAG_COUNT outdated release tags"

for TAG in $OUTDATED_RELEASE_TAGS; do
    echo "Deleting tagged release  $TAG"
    gh release delete "$TAG" --yes --cleanup-tag
done
