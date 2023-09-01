HUGO
====

.. post:: Dec 30, 2020
   :tags: misc

Static site generator.


.. code::

   hugo new site my-project
   cd my-project
   git init .
   git submodule add https://github.com/mitrichius/hugo-theme-anubis.git themes/anubis
   echo 'theme = "anubis"' >> config.toml
   hugo new section/topic.md
   hugo server -w -D
