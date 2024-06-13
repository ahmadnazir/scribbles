Using regexp in emacs
=====================

.. post:: Jun 14, 2024
   :tags: emacs

Sometimes it is easier to use a regular expression to convert lines.
But using regexps in emacs is complicated - it requires a lot of escaping for special chars.

e.g. convert the following:

::

   1
   2
   3

to:


::

   '1',
   '2',
   '3',

Use the regexp to capture:

::

   \(.*\)

and the following to use the value captured and replace it:

::

   '\1',
