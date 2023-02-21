NPM Dependencies
================

.. post:: 21/01/2023
   :tags: npm

dependencies
------------


Installed transitively e.g. two packages `A` and `B` have to be installed and each depend on a different version of `C`, then the following graph is installed:


::

   |_ A
   |  |_ C @ 1.0
   |
   |_ B
      |_ C @ 2.0

Two different versions of `C` are installed and everything works.

devDependencies
---------------

Not installed transitively

peerDependencies
----------------

However, this handles the *plugin* scenario i.e. when installing a dependencies that implements some interface determined by the host library, then we have to make sure that the dependency works correctly. Having multiple versions of the host might create problems.

Consider the case as before but this time we also want to install `C*` which can only work with a specific version of `C*`, then we need to make sure to specify which version D is compatible with

::

   dependencies
    |_ A
    |  |_ C @ 1.0
    |
    |_ B
    |  |_ C @ 2.0
    |
    |_ C*          <-- Plugin of C
        |_ C @ 2.0

   peerDependencies
    |_ C @ 2.0

Now, `npm install` will throw a conflict error because `A` depends on an incompatible version of `C`.


optionalDependencies
--------------------

As the name suggests, they are optional, which means that when running `npm install`, no error is thrown if the dependency can't be resolved for some reason.


Questions
---------

What is transitivity?
^^^^^^^^^^^^^^^^^^^^^

If `A` depends on `B`, `B` depends on `C`, then `C` also gets installed

Are peer dependencies installed on `npm install`?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Not sure, I have to try it out. The documentation is a bit confusing. It mentions that they are installed by default but then you can also say that they are optional using `peerDependenciesMeta` - so I am not sure.
