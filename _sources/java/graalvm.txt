GraalVM
=======

Install native-image
--------------------

From https://github.com/taylorwood/clj.native-image

.. code::

   tar zxvf graalvm-ce-java8-linux-amd64-19.3.1.tar.gz
   cd graalvm-ce-java8-linux-amd64-19.3.1
   ./bin/gu install native-image
   ln -s /PATH_TO/graalvm-ce-java8-19.3.1/bin/native-image native-image
   which native-image
   native-image --version


Compile a clojure deps.edn project configured for native image:

.. code::

   clj -A:native-image
