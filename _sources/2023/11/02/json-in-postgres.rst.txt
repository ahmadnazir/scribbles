Json in Postgres
================

.. post:: Nov 02, 2023
   :tags: json,postgres,sql

Let's say you have a json object stored in a table called `process`:

::

  {
    "f33d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b": {
      "candidates": 1,
      "affected": 1,
      "skipped": 0,
      "failed": 0
    },
    "f22d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b": {
      "candidates": 22,
      "affected": 22,
      "skipped": 0,
      "failed": 0
    }
  }


Get each object as follows:

::

   SELECT jsonb_each(stats) as entry from process;

returns a single column for the `entry` containing the key and value as a pair:

::


                                                      entry
   ----------------------------------------------------------------------------------------------------------------
    (f22d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b,"{""failed"": 0, ""skipped"": 0, ""affected"": 12, ""candidates"": 12}")
    (f33d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b,"{""failed"": 1, ""skipped"": 0, ""affected"": 10, ""candidates"": 11}")
   (2 rows)


Or:

::

   SELECT entry.* from process, jsonb_each(stats) as entry ;

returns separate columns for the `key` and the `value`:
::


                    key                  |                             value
   --------------------------------------+---------------------------------------------------------------
    f22d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b | {"failed": 0, "skipped": 0, "affected": 12, "candidates": 12}
    f33d3b3e-0b0b-4b0b-8b0b-0b0b0b0b0b0b | {"failed": 1, "skipped": 0, "affected": 10, "candidates": 11}
   (2 rows)

Let's say we want to sum thet `candidates` in the `value` of the entry


::

   SELECT sum((value->>'candidates')::int) from process, jsonb_each(stats) as x;


Reference
---------

What operators to use e.g. `->` vs `->>`, see: https://www.postgresql.org/docs/9.5/functions-json.html
