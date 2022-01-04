Textern
=======

**NOTE**: I've been using surfkeys which seems to work.

Edit any text area (firefox) with the editor of your choice.

Here is my setup with emacs. It is a work in progress.

Reference: https://emacsnotes.wordpress.com/2018/05/14/editing-html-textareas-with-emacs-bye-bye-its-all-text-hello-textern/

Install firefox extension
-------------------------

https://addons.mozilla.org/en-US/firefox/addon/textern/

Install the backend
-------------------

.. code::

   git clone --recurse-submodules https://github.com/jlebon/textern
   cd textern
   make native-install USER=1\n


Emacs client
------------

.. code::

   #!/bin/sh
   emacsclient -c -a "" -- "$@"

Textern browser extension preferences
-------------------------------------

.. code::

   ["emacsclient.sh", "%s", "--eval", "(progn (goto-line %l) (move-to-column (1- %c)))"]


TODO
----

Need to create a dedicated emacs daemon for this otherwise it affects the other frames.
