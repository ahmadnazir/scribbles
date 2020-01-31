Terminology
-----------

**Buffer** When you open a file in emacs, it creates a *buffer* to *visit* that file.
**Frame** This is what I call a floating window. Emacs had a different meaning for window.
**Window** It is that space on the screen or view that shows you the buffer. It might be that multiple buffers are open but only a few windows are showing those buffers.

Buffer
------


**Open a file in the current buffer**

.. code::

   ;; fn -> f -> b!
   (find-file "/tmp/..")

**Open a file in another buffer**

.. code::

   (switch-to-buffer-other-window b)                             ;; same buffer in another window
   (switch-to-buffer-other-window (current-buffer))              ;; same buffer in another window
   (switch-to-buffer-other-window (find-file-noselect filename)) ;; a file in another windoe


**Is buffer visible?**

.. code::

   ;; fn -> b -> w
   (get-buffer-window b)


**Get the buffer that is visiting a file**
**Is there any buffer visiting a file?**

.. code::

   ;; fn -> f -> b
   (get-file-buffer filename) ;; returns nil if none exists

You can create a buffer for a file if it doesn't exist (and then `get-file-buffer` will return the buffer):

.. code::

   ;; fn -> f -> b
   (find-file-noselect filename)

**Show the file in another window**

If any buffer is visiting a file, show that buffer in another window,
otherwise, create a buffer and show it in another window.

.. code::

   (let ((b (get-file-buffer filename)))
     (if b (switch-to-buffer-other-window b)
       (switch-to-buffer-other-window (find-file-noselect filename))))
