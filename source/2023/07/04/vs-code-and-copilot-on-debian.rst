VS Code and Copilot on Debian
=============================

.. post:: 04/07/2023
   :tags: linux,debian,copilot,vscode

Run the daemons and export the env variables for `dbus` and the keyring:

::

   export $(dbus-launch)
   export $(gnome-keyring-daemon)

Tell vscode that gnome is being used for managing passwords:

::

   code --password="gnome" # OR
   code-insiders --password="gnome"

I had to signout of github the first time (bottom left of vscode)
