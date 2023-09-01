.. _watch-file:

Watch file
==========

.. post:: Jul 02, 2022
   :tags: linux,shell

.. code::

   while inotifywait -e close_write $file; do

     # Run your command here!

   done

Here is a helper function `watch-file` which takes the arguments:

- file name
- command to run

::


   # Usage: watch-file run.sh ./run.sh

   function watch-file () {
       local file=$1
       shift
       local command=$@
       while inotifywait -e close_write $file; do
           echo $command
           eval $command
       done
   }
