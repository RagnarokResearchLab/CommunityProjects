set -e

git submodule update --init --recursive
git submodule foreach '
  git fetch origin
  git checkout $(git rev-parse --abbrev-ref HEAD)
  git reset --hard origin/HEAD
'
git checkout HEAD
git add .
git commit -m "Update all submodules to the latest HEAD"
