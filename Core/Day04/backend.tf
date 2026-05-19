terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "saterraformbackend001"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
