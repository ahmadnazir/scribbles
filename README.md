## Build

```
docker run -it --rm \
  -v /etc/passwd:/etc/passwd \
  -v /etc/group:/etc/group \
  -v $HOME:$HOME \
  -w `pwd` -v `pwd`:`pwd` \
  -u $UID:$GID \
  ahmadnazir/sphinx make html

```

Clean up!

```
cd build
mv html html_
mkdir html
touch html/.nojekyll
rm html_ -r
scribbles-compile
cd -
```

## Sync

```
git push origin `git subtree split --prefix build/html source`:master --force
```
