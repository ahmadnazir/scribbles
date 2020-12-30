Maven
=====


Create new project

.. code::

   mvn archetype:generate -DgroupId=com.acme.soup \
      -DartifactId=soup \
      -DinteractiveMode=false

Only resolve dependencies:

.. code::

   mvn dependency:resolve
