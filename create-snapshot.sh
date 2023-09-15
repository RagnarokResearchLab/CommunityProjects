set -e

mkdir -p snapshots

git submodule foreach '
  echo "Creating zip for $name at $path..."
  zipname=$(basename $path)
  zip -r $zipname.zip . -x "*.git*"
  mv $zipname.zip $toplevel/snapshots/
'

cd snapshots
zip -r snapshot.zip *.zip
