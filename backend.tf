terraform {
  backend "azurerm" {
    resource_group_name  = "rg-swc-tfstate-nonprod"
    storage_account_name = "stswcqetfstatenonprod"
    container_name       = "tfstate"
    key                  = "zamba/qa/terraform.tfstate"
  }
}

