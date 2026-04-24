resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "this" {
  name                            = "plat${random_string.suffix.result}"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"

  # Required for azurerm v4+
  allow_nested_items_to_be_public = false

  tags = {
    owner       = var.owner
    environment = var.environment
  }
}