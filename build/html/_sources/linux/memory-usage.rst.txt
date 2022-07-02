Track Memory Usage of a Process
===============================

.. post:: 12/30/2020
   :tags: linux

Image that you want to track the memory usage of `dotnet`, use the `watch` command with `ps` to get an overview of the memory usage:

.. code::

   watch -n 0.5 'ps aux | grep -E \(^USER\|dotnet\) | grep -v grep'

Let's show `RSS` in `MB`s. Create a script and invoke it as `watch -n 0.4 'bash script.sh'` (so that don't have to handle escaping of the quotes when working with awk).

.. code::

   ps -ao %mem,rss,command | grep $1 | grep -v grep | awk '{$2=int($2/(1024))"MB";}{ print; }'


