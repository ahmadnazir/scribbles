SSH Key
=======

.. post:: 05/31/2022
   :tags: identity

Generate an ssh key:

.. code::

   ssh-keygen -t rsa -C "ahmadnazir@gmail.com"


Remembering the password for the session:

.. code::

   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa

List the keys addd to the agent:

::

   ssh-add -l

Do it for all the shells: https://unix.stackexchange.com/a/132117/98943
