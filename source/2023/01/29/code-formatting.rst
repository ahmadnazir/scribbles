Code formatting
===============

.. post:: 29/01/2023
   :tags: code,lint

There are a number of tools to format code with potentially overlapping features:

Editor Config
-------------

Ensures that code rules are followed as code is being written e.g. spaces vs tabs, indentation, etc

Rules are stored in `.editorconfig`

Prettier
--------

Fixes code after it has been written by transforming code accoring to the rules.

e.g. rules are stored in `.prettierrc`

Eslint
------

Ensures code quality according to the configured rules by statically analyzing the code.

e.g. rules are store in `.eslintrc`


Reference: https://stackoverflow.com/q/48363647
