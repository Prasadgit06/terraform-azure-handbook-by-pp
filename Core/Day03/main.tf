terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.73.0"
    }
  }
  required_version = ">=1.15.2"
}
#configuring the required provider

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "hmhsrg" {
  name     = "rg-hmhs"
  location = "eastus"
}

resource "azurerm_storage_account" "hmhssa" {
  name                     = "sahmhsqa"
  resource_group_name      = azurerm_resource_group.hmhsrg.name
  location                 = azurerm_resource_group.hmhsrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    enviroment = "staging"
  }
}
