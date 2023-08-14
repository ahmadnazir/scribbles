Paste images from clipboard in org
==================================

.. post:: 14/08/2023
   :tags: org


Add images:

::

   org-download-clipboard

This will add a block as follows:

::

   #+DOWNLOADED: screenshot @ 2023-08-14 10:43:42
   [[file:Monday,_08/14/23/2023-08-14_10-43-42_screenshot.png]]

Toggle inline images from emacs (spacemacs shortcut `, T i`)

::

   M-x org-toggle-inline-images
