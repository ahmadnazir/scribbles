Getting started / Emacs setup
=============================

This is for Spacemacs.

Metals
------

Binary is needed:

.. code::

   # Make sure to use coursier v1.1.0-M9 or newer.
   curl -L -o coursier https://git.io/coursier-cli
   chmod +x coursier
   ./coursier bootstrap \
     --java-opt -Xss4m \
     --java-opt -Xms100m \
     --java-opt -Dmetals.client=emacs \
     org.scalameta:metals_2.12:0.9.0 \
     -r bintray:scalacenter/releases \
     -r sonatype:snapshots \
     -o metals-emacs


Spacemacs layer
---------------

Clone https://github.com/zheli/scala-lsp into `~/.emacs.d/private` 

Add `scala-lsp` layer to `.spacemacs`

Scala build tool
----------------

.. code::

   docker run -it \
          --rm \
          -v $HOME:$HOME \
          -v $HOME:$HOME \
          -w `pwd` \
          -v `pwd`:`pwd` \
          -u $UID:$GID \
          mozilla/sbt sbt "$@"


Getting started with sbt:

https://docs.scala-lang.org/getting-started/sbt-track/getting-started-with-scala-and-sbt-on-the-command-line.html

Once in the container:

.. code::

   sbt new scala/hello-world.g8
