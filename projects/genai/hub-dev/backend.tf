terraform {
  backend "azurerm" {
    resource_group_name  = "rg-swc-tfstate-nonprod"
    storage_account_name = "stswcqetfstatenonprod01"
    container_name       = "tfstate"
    key                  = "genai/hub-dev/terraform.tfstate"
  }
}
