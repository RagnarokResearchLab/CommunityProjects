set -e

git submodule update --init --recursive
git submodule foreach '
  git fetch origin
  git checkout $(git rev-parse --abbrev-ref HEAD)
  git reset --hard origin/HEAD
'
if git rev-parse --verify --quiet submodule-update-tracking; then
    git branch -d submodule-update-tracking
fi
git checkout -b submodule-update-tracking
git add .
git commit -m "Update all submodules to the latest HEAD"
