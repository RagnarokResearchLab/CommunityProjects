mkdir snapshots

git submodule foreach '
  zip -r $name.zip $path
  mv $name.zip ../snapshots/
'

cd snapshots
zip -r meta-repo-snapshot.zip *.zip
