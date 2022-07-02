Keybindings
===========

.. post:: 12/30/2020
   :tags: emacs

:Sudo edit: SPC f E

.. code::

   (spacemacs/declare-prefix "o" "custom")
   (spacemacs/declare-prefix "op" "pumlator")
   (spacemacs/set-leader-keys "opr" 'anr-pumlator--render)

https://develop.spacemacs.org/doc/DOCUMENTATION.html#binding-keys
