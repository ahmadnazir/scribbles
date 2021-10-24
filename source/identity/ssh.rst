SSH Key
=======

Generate an ssh key:

.. code::

   ssh-keygen -t rsa -C "ahmadnazir@gmail.com"


Remembering the password for the session:

.. code::

   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa


Do it for all the shells: https://unix.stackexchange.com/a/132117/98943
