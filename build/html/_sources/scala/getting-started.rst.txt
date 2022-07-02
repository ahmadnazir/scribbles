Getting started / Emacs setup
=============================

.. post:: 12/30/2020
   :tags: scala

This is for Spacemacs.

Metals
------

Binary is needed:

.. code::

   cd /tmp
   curl -L -o coursier https://git.io/coursier-cli
   chmod +x coursier
   ./coursier bootstrap \
     --java-opt -Xss4m \
     --java-opt -Xms100m \
     --java-opt -Dmetals.client=emacs \
     org.scalameta:metals_2.12:0.9.6 \
     -r bintray:scalacenter/releases \
     -r sonatype:snapshots \
     -o ~/bin/metals-emacs -f
   cd -

Once this is done and spacemacs layer is installed (see next step), then opening a scala file should use the metals backend.

https://scalameta.org/metals

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


Start shell for sbt:

.. code::

   sbt

Now watch and run:

.. code::

   sbt:hello-world> ~run

Or Watch and run without having to create a sbt shell:

.. code::

   sbt '~run'

Giter8 tempates
---------------

https://www.scala-sbt.org/1.x/docs/sbt-new-and-Templates.html#Giter8+support

Examples:

.. code::

   scala/scala-seed.g8 (Seed template for Scala)
   scala/hello-world.g8 (A template to demonstrate a minimal Scala application)
