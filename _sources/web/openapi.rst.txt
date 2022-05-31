Generate client from OpenApi specification
==========================================

Generate typescript client:

.. code::

   docker run \
     -w /local \
     --rm \
     -u $UID:$GID \
     -v "${PWD}:/local" \
     openapitools/openapi-generator-cli generate \
     --skip-validate-spec \
     -i http://localhost:3000/docs/api/internal-json \
     -g typescript-node \
     -o src/lib
