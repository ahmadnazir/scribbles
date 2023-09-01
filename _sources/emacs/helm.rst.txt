Helm
====

.. post:: Dec 30, 2020
   :tags: emacs

Selection narrowing framework for emacs.

Write an extension: http://wikemacs.org/wiki/How_to_write_helm_extensions

Simple usage:

.. code::

   (helm :sources '((name . "Action:")
                    (candidates . ( "a" "b" "c"))
                    (action . (lambda (candidate)
                                (message candidate)))))
