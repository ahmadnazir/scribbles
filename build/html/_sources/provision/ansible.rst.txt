Ansible
=======

.. post:: 09/08/2019
   :tags: provision


Create a play book
-------------------

If we want that `jq` is installed on a Debian machine, the following playbook can be used:

.. code::

   ---
   - name: Provision my machine with goodies
     hosts: localhost
   
     tasks:
     - name: Install jq
       apt:
         name: jq

Run it:

.. code::

   sudo ansible-playbook my-playbook.yml -vvvv

Removing packages
-----------------

Ansible is stateless so it doesn't know when a package is removed. If you want to remove a package, it needs to be explicitly stated in **task** the playbook:

.. code::

     tasks:
     - name: Remove jq
       apt:
         name: jq
         state: absent         # Make sure that the package isn't available


References
----------

- `Yaml Syntax for the Playbook`_

.. _Yaml Syntax for the Playbook: https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html
