## Build

### Compile

```
docker run -it --rm \
  -v /etc/passwd:/etc/passwd \
  -v /etc/group:/etc/group \
  -v $HOME:$HOME \
  -w `pwd` -v `pwd`:`pwd` \
  -u $UID:$GID \
  suttang/sphinx-rtd-theme make html man
```

### Cleanup

```
cd build
mv html html_
mkdir html
touch html/.nojekyll
rm html_ -r
scribbles-compile
cd -
```

where `scribbles-compile` is the bash function for the compile step.

## Sync

```
git push origin `git subtree split --prefix build/html source`:master --force
```
