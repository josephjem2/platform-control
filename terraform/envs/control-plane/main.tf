terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "nonprod" {
  name     = "rg-platform-nonprod"
  location = "eastus"
}

resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}

module "storage" {
  source              = "../../modules/storage"
  resource_group_name = azurerm_resource_group.nonprod.name
  location            = azurerm_resource_group.nonprod.location
  owner               = "bootcamp"
  environment         = "nonprod"
}