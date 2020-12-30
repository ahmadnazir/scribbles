Terraform
=========

terraform init
  Initialize the state.

terraform plan
  Dry run the plan

terraform apply
  Perform the provisions by creating a plan using the terraform state.


The State!
----------

Terraform keeps the view of the world (whatever has been provisioned) in the
form of local state. It is kept offline and is not synced automatically. If the
resources are already provisioned, then the state must be imported

.. code::

   terraform import module.resource_group.azurerm_resource_group.resource_group /subscriptions/59d6db65-221b-45ce-8f2b-5689b25c4f28/resourceGroups/rg-dev1-westus2-universe


Removing resources
------------------

You can only do this from the command line:

.. code::

   terraform destroy -target=azurerm_storage_table.table
   terraform destroy -target=module.storage_account.azurerm_storage_account.storage_account
