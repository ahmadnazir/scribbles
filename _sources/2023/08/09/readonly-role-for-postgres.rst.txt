Readonly role for Postgres
==========================

.. post:: Aug 09, 2023
   :tags: postgres

Let's create a readonly role for a database called `postgres` and schema `public`.

::

   CREATE ROLE readonly WITH PASSWORD 'xxxxxxxxxx';
   ALTER ROLE readonly WITH LOGIN;
   GRANT CONNECT ON DATABASE postgres TO readonly;
   GRANT USAGE ON SCHEMA public       TO readonly;
   GRANT SELECT ON ALL TABLES IN SCHEMA public       TO readonly;
