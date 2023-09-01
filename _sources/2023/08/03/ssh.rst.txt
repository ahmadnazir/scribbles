ssh
===

.. post:: Aug 03, 2023
   :tags: linux,ssh


Generate an ssh key:

.. code::

   ssh-keygen -t rsa -C "my_email@domain.com"

Calculate the fingerprint:

::

   ssh-keygen -l
   # or for a specific file
   ssh-keygen -lf ~/.ssh/id_rsa.pub

Remembering the password for the session:

::

   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa

List the keys added to the agent:

::

   ssh-add -l

Do it for all the shells: https://unix.stackexchange.com/a/132117/98943
