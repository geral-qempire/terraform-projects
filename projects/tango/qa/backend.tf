terraform {
  backend "azurerm" {
    resource_group_name  = "rg-swc-tfstate-nonprod" # TODO: Resource group name containing the storage account
    storage_account_name = "stswcqetfstatenonprod" # TODO: Storage account name
    container_name       = "tfstate" # TODO: Container name (e.g., "tfstate")
    key                  = "tango/qa/terraform.tfstate"
  }
}

